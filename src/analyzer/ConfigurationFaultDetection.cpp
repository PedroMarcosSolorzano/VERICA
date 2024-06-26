/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 *           Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: --
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Pascal Sasdrich and Jan Richter-Brockmann
 *
 * All rights reserved.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTERS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Please see license.rtf and README for license and further instructions.
 */

#include "analyzer/ConfigurationFaultDetection.hpp"
#include "util.hpp"

void
ConfigurationFaultDetection::initialize(const Settings *settings, State *state){
    // resize vector to collect effective fault injections
    m_effective_faults_fia.resize(settings->getCores());
    m_effective_faults_fni.resize(settings->getCores());
    m_effective_faults_fsni.resize(settings->getCores());
    m_effective_faults_fini.resize(settings->getCores());
    m_effective_faults_cni.resize(settings->getCores());
    m_effective_faults_csni.resize(settings->getCores());
    m_effective_faults_icsni.resize(settings->getCores());
    m_effective_faults_cini.resize(settings->getCores());
    m_effective_faults_icini.resize(settings->getCores());
}  

void
ConfigurationFaultDetection::execute(const Settings *settings, State *state) {
    int core = omp_get_thread_num();
    int max_k = state->m_current_number_of_injected_faults;
    bool secure = true;

    // Add error flags of the faulty model
    BDD comp = (settings->getFaultLogicLevelErrorFlag()) ? state->m_managers[core].bddZero() : state->m_managers[core].bddOne();
    for(auto w : state->m_error_flags){
        if(settings->getFaultLogicLevelErrorFlag()){
            comp |= w->faulty_functions(core);
        } else {
            comp &= w->faulty_functions(core);
        }
    }

    // Check if random inputs are faulted
    std::map<const verica::Wire*, verica::fault::Fault> faulted_rand_inputs;
    for(unsigned int i=0; i<state->m_current_fault_injections[core].first.size(); ++i){
        if(state->m_current_fault_injections[core].first[i]->source_pin()->port_type() == verica::Refresh) 
            faulted_rand_inputs[state->m_current_fault_injections[core].first[i]] = state->m_current_fault_injections[core].second[i];
    }

    // Compare (adapted) golden and faulty model
    const verica::Module* mut = state->m_netlist_model->module_under_test();
    BDD compprime = state->m_managers[core].bddZero();
    uint64_t cnt_faults = 0;
    std::vector<const verica::Pin*> output_fault_domain;

    if(faulted_rand_inputs.empty()){
        // no random input is faulted
        for(auto w : state->m_data_output_wires){
            BDD diff = w->golden_functions(core) ^ w->faulty_functions(core);
            compprime |= diff;
            BDD check = (settings->getFaultLogicLevelErrorFlag()) ? (diff ^ comp) : !(diff ^ comp);
            if(!check.IsZero()) {
                // collect the fault domains of the errors
                for(auto p : w->target_pins()){
                    if(std::find(mut->output_pins().begin(), mut->output_pins().end(), p) != mut->output_pins().end())
                        output_fault_domain.push_back(p);
                }
                // count the errors
                cnt_faults++;
            }
        }
    } else{
        // random inputs are faulted
        for(auto w : state->m_data_output_wires){
            // Fix corresponding BDD variable to the value that represents the fault in the faulty model
            BDD temp = w->golden_functions(core);
            for(auto fault_pair : faulted_rand_inputs){
                int idx = fault_pair.first->golden_functions(core).NodeReadIndex();
                BDD new_node;
                switch (fault_pair.second) {
                    case verica::fault::Fault::SET:
                        new_node = state->m_managers[core].bddOne();
                        break;
                    case verica::fault::Fault::RESET:
                        new_node = state->m_managers[core].bddZero();
                        break;                    
                    case verica::fault::Fault::NOTA:
                        new_node = !fault_pair.first->golden_functions(core);
                        break;
                    default:
                        throw std::logic_error("[DETECTION-ANALYZER] Invalid fault for random inputs!");
                        break;
                }
                temp = temp.Compose(new_node, idx);
            }
            BDD diff = temp ^ w->faulty_functions(core);
            compprime |= diff;
            BDD check = (settings->getFaultLogicLevelErrorFlag()) ? (diff ^ comp) : !(diff ^ comp);
            if(!check.IsZero()) {
                // collect the fault domains of the errors
                for(auto p : w->target_pins()){
                    if(std::find(mut->output_pins().begin(), mut->output_pins().end(), p) != mut->output_pins().end())
                        output_fault_domain.push_back(p);
                }
                // count the errors
                cnt_faults++;
            }
        }
    }
    
    // Evaluate
    comp = (settings->getFaultLogicLevelErrorFlag()) ? comp : !comp;

    // We consider the following cases:
    // comp. output | flag | case
    //      0       |  0   | ineffective fault
    //      0       |  1   | ---
    //      1       |  0   | effective fault
    //      1       |  1   | detected fault

    // There exists an input assignment for the current fault scenario that leads to an effective fault.
    if (((compprime & (!comp))).CountMinterm(state->m_mut_input_size) == 0){
        state->m_effective[core] += 0; 
    } else {
        state->m_effective[core] += 1;
        m_effective_faults_fia[core].push_back(state->m_current_fault_injections[core].first);
    }

    state->m_scenarios[core] += 1;

    // Check FNI and FSNI security
    int input_faults = 0;
    std::vector<const verica::Pin*> input_fault_domain;
    for(auto f : state->m_current_fault_injections[core].first){
        if(f->primary_input_identifier() != -1){
            // collect the fault domains of the input faults
            if(f->source_pin()->port_type() != verica::Refresh) input_fault_domain.push_back(f->source_pin());
            // count the input faults
            input_faults++;
        }
    }

    if(settings->getFaultFNI() || settings->getCombinedCNI()){
        if(cnt_faults > (unsigned int)max_k) {
            state->m_na_security[core] += 1;

            // store effective faults for reporting and visualization
            if(settings->getFaultFNI()) m_effective_faults_fni[core].push_back(state->m_current_fault_injections[core].first);
            if(settings->getCombinedCNI()) m_effective_faults_cni[core].push_back(state->m_current_fault_injections[core].first);
        }
    }

    if(settings->getFaultFSNI() || settings->getCombinedCSNI() || settings->getCombinedICSNI()){
        if(cnt_faults > (unsigned int)(max_k-input_faults)) {
            state->m_sna_security[core] += 1;

            // store effective faults for reporting and visualization
            if(settings->getFaultFSNI()) m_effective_faults_fsni[core].push_back(state->m_current_fault_injections[core].first);
            if(settings->getCombinedCSNI()) m_effective_faults_csni[core].push_back(state->m_current_fault_injections[core].first);
            if(settings->getCombinedICSNI()) m_effective_faults_icsni[core].push_back(state->m_current_fault_injections[core].first);
        }
    }

    // Checking FINI
    if(settings->getFaultFINI()){
        // determine number of internal faults (number of injected faults - number of input faults)
        int k2 = max_k - input_faults;

        // remove fault domains of the input from output fault domains
        std::set<int> set_of_output_fault_domains; 
        std::set<int> set_of_input_fault_domains; 
        for(auto p : output_fault_domain) set_of_output_fault_domains.insert(p->fault_domain());
        for(auto p : input_fault_domain) set_of_input_fault_domains.insert(p->fault_domain());
        for(auto i : set_of_input_fault_domains)
            set_of_output_fault_domains.erase(i);        

        // if the cardinality of the remaining set is larger than the number of internal faults -> MUT is not FINI
        if(set_of_output_fault_domains.size() > k2) {
            state->m_fini_security[core] += 1;

            // store effective faults for reporting and visualization
            m_effective_faults_fini[core].push_back(state->m_current_fault_injections[core].first);
        }
    }

    // Checking CINI
    if(settings->getCombinedCINI() || settings->getCombinedICINI()){
        // determine number of internal faults (number of injected faults - number of input faults)
        int k2 = max_k - input_faults;  

        // determine shared fault domains for the outputs (num_of_share*share_domain + fault_domain)
        std::set<std::pair<int, int>> set_of_output_shared_fault_domain;
        for(auto p : output_fault_domain) {
            set_of_output_shared_fault_domain.insert(std::make_pair(p->share_domain(), p->fault_domain()));
        }

        // determine shared fault domains for the inputs (num_of_share*share_domain + fault_domain)
        std::set<std::pair<int, int>> set_of_input_shared_fault_domain;
        for(auto p : input_fault_domain){
            set_of_input_shared_fault_domain.insert(std::make_pair(p->share_domain(), p->fault_domain()));
        }

        // remove fault domains of the input from output fault domains
        for(auto i : set_of_input_shared_fault_domain)
            set_of_output_shared_fault_domain.erase(i);   

        // if the cardinality of the remaining set is larger than the number of internal faults -> MUT is not FINI
        if(set_of_output_shared_fault_domain.size() > k2) {
            state->m_cini_security[core] += 1; 

            // store effective faults for reporting and visualization
            if(settings->getCombinedCINI()) m_effective_faults_cini[core].push_back(state->m_current_fault_injections[core].first);
            if(settings->getCombinedICINI()) m_effective_faults_icini[core].push_back(state->m_current_fault_injections[core].first);
        }
    }
}

void
ConfigurationFaultDetection::finalize(const Settings *settings, State *state) {
    // collect all effective faults of the different strategies and store them in the state 
    for(auto f : m_effective_faults_fia) state->m_effective_faults_fia.insert(state->m_effective_faults_fia.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_fni) state->m_effective_faults_fni.insert(state->m_effective_faults_fni.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_fsni) state->m_effective_faults_fsni.insert(state->m_effective_faults_fsni.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_fini) state->m_effective_faults_fini.insert(state->m_effective_faults_fini.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_cni) state->m_effective_faults_cni.insert(state->m_effective_faults_cni.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_csni) state->m_effective_faults_csni.insert(state->m_effective_faults_csni.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_icsni) state->m_effective_faults_icsni.insert(state->m_effective_faults_icsni.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_cini) state->m_effective_faults_cini.insert(state->m_effective_faults_cini.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_icini) state->m_effective_faults_icini.insert(state->m_effective_faults_icini.end(), f.begin(), f.end());
}

void
ConfigurationFaultDetection::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {
    /* Print header */
    logger->header("ANALYSIS REPORT");

    // Fault Injection
    double effective = 0, ineffective = 0, detected = 0, scenarios = 0;
    for(auto v : state->m_effective) effective += v;
    for(auto v : state->m_scenarios) scenarios += v; 

    if(settings->getVerbose() > 0) {
        logger->log(service, this->m_name, "Effective faults:   " + std::to_string((u_int64_t)effective));
        logger->log(service, this->m_name, "Fault scenarios:    " + std::to_string((u_int64_t)scenarios));
    } 

    /* Print footer */
    if (!effective)
        logger->footer(service, this->m_name, SUCCESS);
    else
        logger->footer(service, this->m_name, FAILURE);

    
    /* ReportFNI */
    if(settings->getFaultFNI()){
        /* Print header */
        logger->header("ANALYSIS REPORT FNI");

        // Fault Injection
        double secure = 0;
        for(auto v : state->m_na_security) secure += v;


        if(settings->getVerbose() > 0){
            logger->log(service, this->m_name, "Evaluation results for FNI verification.");
            logger->log(service, this->m_name, std::to_string(secure) + " fault injections violate theFNI properties.");
        }    

        /* Print footer */
        if (secure == 0)
            logger->footer(service, this->m_name, SUCCESS);
        else
            logger->footer(service, this->m_name, FAILURE);
    }

    /* Report FSNI */
    if(settings->getFaultFSNI()){
        /* Print header */
        logger->header("ANALYSIS REPORT FSNI");

        // Fault Injection
        double secure = 0;
        for(auto v : state->m_sna_security) secure += v;


        if(settings->getVerbose() > 0){
            logger->log(service, this->m_name, "Evaluation results for FSNI verification.");
            logger->log(service, this->m_name, std::to_string(secure) + "  fault injections violate the FSNI properties.");
        }    

        /* Print footer */
        if (secure == 0)
            logger->footer(service, this->m_name, SUCCESS);
        else
            logger->footer(service, this->m_name, FAILURE);
    }

    /* Report FINI */
    if(settings->getFaultFINI()){
        /* Print header */
        logger->header("ANALYSIS REPORT FINI");

        // Fault Injection
        double secure = 0;
        for(auto v : state->m_fini_security) secure += v;


        if(settings->getVerbose() > 0){
            logger->log(service, this->m_name, "Evaluation results for FINI verification.");
            logger->log(service, this->m_name, std::to_string(secure) + "  fault injections violate the FINI properties.");
        }    

        /* Print footer */
        if (secure == 0)
            logger->footer(service, this->m_name, SUCCESS);
        else
            logger->footer(service, this->m_name, FAILURE);
    }
}


