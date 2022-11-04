/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: 
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Pascal Sasdrich
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
 * Please see LICENSE and README for license and further instructions.
 */

#ifndef __VERICA_PIN_HPP__
#define __VERICA_PIN_HPP__

#include "netlist/CellTemplate.hpp"

#include <string>
#include <vector>

namespace verica
{

    /* Forward declaration */
    class Wire;
    class Module; 

    /** Pin type enumeration (annotations) */
    enum Flag { None, Clock, Control, Refresh, ErrorFlag };

    /**
     * Pin class, modeling an input or output pin of a module inside a gate-level netlist.
     */
    class Pin
    {
        public:

            /*
             * ###########################################################################
             * # ACCESSOR FUNCTIONS                                                      #
             * ###########################################################################
             */

            /** 
             * Each pin is associated with a (unique) identifier, generated by the corresponding netlist object.
             *
             * @brief Accessor function for pin UID.
             *
             * @returns The UID of the pin.
             */
            const int& uid() const { return m_uid; }

            /** 
             * Each pin is associated with a (non-unique) name, provided during construction.
             *
             * @brief Accessor function for pin name.
             *
             * @returns The name of the pin.
             */
            const std::string name() const { return this->m_name; }

            /** 
             * Each pin is associate with a single module object of the gate-level netlist.
             * 
             * @brief Accessor function for the parent module.
             *
             * @returns Pointer to the parent module.
             */
            const Module* parent_module() const { return m_parent_module; }

            /** 
             * Each input and output pin can be associated with a share index and share domain.
             * Pins with the same share index belong to the same unshared input, while the i-th
             * share domain indicates the i-th share of the unshared input.
             * 
             * @brief Accessor function for pin share index.
             *
             * @returns The share index of the pin.
             */
            const int& share_index() const { return m_share_index; }

            /** 
             * Each input and output pin can be associated with a share index and share domain.
             * Pins with the same share index belong to the same unshared input, while the i-th
             * share domain indicates the i-th share of the unshared input.
             *
             * @brief Accessor function for pin share domain.
             *
             * @returns The share domain of the pin.
             */
            const int& share_domain() const { return m_share_domain; }

            /** 
             * Each input and output pin can be associated with a fault domain (for duplication based countermeasures).
             * The i-th fault domain indicates the i-th duplication of the original input.
             *
             * @brief Accessor function for pin fault domain.
             *
             * @returns The fault domain of the pin.
             */
            const int& fault_domain() const { return m_fault_domain; }

            /** 
             * Each pin is either an input or an output pin of the parent module.
             *
             * @brief Accessor function for the pin direction.
             *
             * @returns True if input bin, false otherwise.
             */
            const bool& is_input() const { return m_is_input; }

            /**
             * Some pins have a constant input.  
             * 
             * @return True, if the pin has a constant input. False, otherwise. 
            */
            const bool& is_const() const { return m_const_input; };

            /**
             * Some pins have a constant input.  
             * 
             * @return The constant input of this pin, or -1 if it doesn't have one. 
            */
            const int& const_input() const { return m_const_value; };

            /** 
             * Each input pin has a unique fan in wire.
             *
             * @brief Accessor function for pin fan in wire.
             *
             * @returns Pointer to the fan in wire of the pin (nullptr if output pin).
             */
            const Wire* fan_in() const { return m_fan_in; }

            /** 
             * Each output pin has a unique fan out wire.
             *
             * @brief Accessor function for pin fan out wire.
             *
             * @returns Pointer to the fan out wire of the pin (nullptr if input pin).
             */
            const Wire* fan_out() const { return m_fan_out; }

            /**
             * Certain input pins require special treatment during preprocessing and analysis.
             * For this, pins can have an associated port type from the list of enumerates:
             *   none, clock, control, refresh 
             *
             * @brief Accessor function for the pin's port type.
             *
             * @returns Port type enumerate value of the pin (none, clock, control, refresh).
             */
            const Flag& port_type() const { return m_port_type; }
            
            /**
             *
             *
             * @brief Accessor function for the gate identifier of the pin.
             *
             * @returns Gate identifier of the pin (integer).
             */
            const int& gate_identifier() const { return m_gate_identifier; } 

            /**
             * Each output pin of a gate is associated with a Boolean output expression.
             *
             * @brief Accessor function for the Boolean expression of an output pin.
             *
             * @returns Boolean expression of the output pin (string representation).
             */
            const std::string& out_expression() const { return m_out_expression; }

            /*
             * ###########################################################################
             * # HELPER FUNCTIONS                                                        #
             * ###########################################################################
             */

            /**
             * Each gate (module) is constructed from a cell template. This helper function
             * provides a short cut to access the cell template of a gate from its pins.
             *
             * @brief Helper function, accessing cell template of parent module.
             *
             * @returns Cell template of parent module.
             */
            const CellTemplate& cell_template() const;

        private:

            /* Friend classes */
            friend class Netlist;

            /* Constructor(s) */
            Pin(std::string name);          /**< Private constructor, only accessible from netlist object */

            /* Disable copy-constructor / copy-assignment */
            Pin(const Pin&) = delete;
            Pin& operator=(const Pin&) = delete;

            /** Properties */
            int m_uid;                      /**< Unique pin identifier (Properties) */
            std::string m_name = "";             /**< Non-unique pin name (Properties) */

            /* Hierarchy */
            Module* m_parent_module;        /**< Pointer to the parent module of the pin (Hierarchy) */
            
            /* Connectivity */
            Wire* m_fan_in = nullptr;       /**< Pointer to the fan in wire of the pin (Connectivity) */
            Wire* m_fan_out = nullptr;      /**< Pointer to the fan out wire of the pin (Connectivity) */

            /* Masking */
            int m_share_index = -1;         /**< Share index of the pin (Masking) */
            int m_share_domain = -1;        /**< Share domain of the pin (Masking) */

            /* Duplication */
            int m_fault_domain = -1;        /**< Fault domain of the pin (Duplication) */

            /* Direction */
            bool m_is_input;                /**< Input/output pin (Direction) */

            /* Annotations */
            Flag m_port_type = None;        /**< Type of the pin (Annotations) */
            int m_gate_identifier = -1;     /**< Identifies the Boolean function */

            /* Constant input */
            bool m_const_input = false;
            int m_const_value = -1;

            /* Expression */
            std::string m_out_expression;   /**< Boolean expression of an output pin (Expression) */    
    };
}

#endif // __VERICA_PIN_HPP__
