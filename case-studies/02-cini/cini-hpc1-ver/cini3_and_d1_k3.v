
module CINI3 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1, 
        port_rand_ref, port_rand_mul, clk, reset );
  input [6:0] port_a_0;
  input [6:0] port_a_1;
  input [6:0] port_b_0;
  input [6:0] port_b_1;
  output [6:0] port_c_0;
  output [6:0] port_c_1;
  input [0:0] port_rand_ref;
  input [0:0] port_rand_mul;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, ref_1_n16,
         ref_1_n15, ref_1_n14, ref_1_n13, ref_1_n12, ref_1_n11, ref_1_n10,
         ref_1_n9, ref_1_n8, ref_1_n7, ref_1_n6, ref_1_n5, ref_1_n4, ref_1_n3,
         ref_1_n2, ref_1_n1, ref_1_maj_55_port_o, ref_1_maj_54_port_o,
         ref_1_maj_53_port_o, ref_1_maj_52_port_o, ref_1_maj_51_port_o,
         ref_1_maj_50_port_o, ref_1_maj_49_port_o, ref_1_maj_48_port_o,
         ref_1_maj_47_port_o, ref_1_maj_46_port_o, ref_1_maj_45_port_o,
         ref_1_maj_44_port_o, ref_1_maj_43_port_o, ref_1_maj_42_port_o,
         ref_1_maj_41_port_o, ref_1_maj_40_port_o, ref_1_maj_39_port_o,
         ref_1_maj_38_port_o, ref_1_maj_37_port_o, ref_1_maj_36_port_o,
         ref_1_maj_35_port_o, ref_1_maj_34_port_o, ref_1_maj_33_port_o,
         ref_1_maj_32_port_o, ref_1_maj_31_port_o, ref_1_maj_30_port_o,
         ref_1_refreshed_1_0_, ref_1_refreshed_1_1_, ref_1_refreshed_1_2_,
         ref_1_refreshed_1_3_, ref_1_refreshed_1_4_, ref_1_refreshed_1_5_,
         ref_1_refreshed_1_6_, ref_1_maj_29_port_o, ref_1_maj_28_port_o,
         ref_1_refreshed_0_0_, ref_1_refreshed_0_1_, ref_1_refreshed_0_2_,
         ref_1_refreshed_0_3_, ref_1_refreshed_0_4_, ref_1_refreshed_0_5_,
         ref_1_refreshed_0_6_, ref_1_maj_28_n17, ref_1_maj_28_n16,
         ref_1_maj_28_n15, ref_1_maj_28_n14, ref_1_maj_28_n13,
         ref_1_maj_28_n12, ref_1_maj_28_n11, ref_1_maj_28_n10, ref_1_maj_28_n9,
         ref_1_maj_28_n8, ref_1_maj_28_n7, ref_1_maj_28_n6, ref_1_maj_28_n5,
         ref_1_maj_28_n4, ref_1_maj_28_n3, ref_1_maj_28_n2, ref_1_maj_28_n1,
         ref_1_maj_29_n34, ref_1_maj_29_n33, ref_1_maj_29_n32,
         ref_1_maj_29_n31, ref_1_maj_29_n30, ref_1_maj_29_n29,
         ref_1_maj_29_n28, ref_1_maj_29_n27, ref_1_maj_29_n26,
         ref_1_maj_29_n25, ref_1_maj_29_n24, ref_1_maj_29_n23,
         ref_1_maj_29_n22, ref_1_maj_29_n21, ref_1_maj_29_n20,
         ref_1_maj_29_n19, ref_1_maj_29_n18, ref_1_maj_30_n34,
         ref_1_maj_30_n33, ref_1_maj_30_n32, ref_1_maj_30_n31,
         ref_1_maj_30_n30, ref_1_maj_30_n29, ref_1_maj_30_n28,
         ref_1_maj_30_n27, ref_1_maj_30_n26, ref_1_maj_30_n25,
         ref_1_maj_30_n24, ref_1_maj_30_n23, ref_1_maj_30_n22,
         ref_1_maj_30_n21, ref_1_maj_30_n20, ref_1_maj_30_n19,
         ref_1_maj_30_n18, ref_1_maj_31_n34, ref_1_maj_31_n33,
         ref_1_maj_31_n32, ref_1_maj_31_n31, ref_1_maj_31_n30,
         ref_1_maj_31_n29, ref_1_maj_31_n28, ref_1_maj_31_n27,
         ref_1_maj_31_n26, ref_1_maj_31_n25, ref_1_maj_31_n24,
         ref_1_maj_31_n23, ref_1_maj_31_n22, ref_1_maj_31_n21,
         ref_1_maj_31_n20, ref_1_maj_31_n19, ref_1_maj_31_n18,
         ref_1_maj_32_n34, ref_1_maj_32_n33, ref_1_maj_32_n32,
         ref_1_maj_32_n31, ref_1_maj_32_n30, ref_1_maj_32_n29,
         ref_1_maj_32_n28, ref_1_maj_32_n27, ref_1_maj_32_n26,
         ref_1_maj_32_n25, ref_1_maj_32_n24, ref_1_maj_32_n23,
         ref_1_maj_32_n22, ref_1_maj_32_n21, ref_1_maj_32_n20,
         ref_1_maj_32_n19, ref_1_maj_32_n18, ref_1_maj_33_n34,
         ref_1_maj_33_n33, ref_1_maj_33_n32, ref_1_maj_33_n31,
         ref_1_maj_33_n30, ref_1_maj_33_n29, ref_1_maj_33_n28,
         ref_1_maj_33_n27, ref_1_maj_33_n26, ref_1_maj_33_n25,
         ref_1_maj_33_n24, ref_1_maj_33_n23, ref_1_maj_33_n22,
         ref_1_maj_33_n21, ref_1_maj_33_n20, ref_1_maj_33_n19,
         ref_1_maj_33_n18, ref_1_maj_34_n34, ref_1_maj_34_n33,
         ref_1_maj_34_n32, ref_1_maj_34_n31, ref_1_maj_34_n30,
         ref_1_maj_34_n29, ref_1_maj_34_n28, ref_1_maj_34_n27,
         ref_1_maj_34_n26, ref_1_maj_34_n25, ref_1_maj_34_n24,
         ref_1_maj_34_n23, ref_1_maj_34_n22, ref_1_maj_34_n21,
         ref_1_maj_34_n20, ref_1_maj_34_n19, ref_1_maj_34_n18,
         ref_1_maj_35_n34, ref_1_maj_35_n33, ref_1_maj_35_n32,
         ref_1_maj_35_n31, ref_1_maj_35_n30, ref_1_maj_35_n29,
         ref_1_maj_35_n28, ref_1_maj_35_n27, ref_1_maj_35_n26,
         ref_1_maj_35_n25, ref_1_maj_35_n24, ref_1_maj_35_n23,
         ref_1_maj_35_n22, ref_1_maj_35_n21, ref_1_maj_35_n20,
         ref_1_maj_35_n19, ref_1_maj_35_n18, ref_1_maj_36_n34,
         ref_1_maj_36_n33, ref_1_maj_36_n32, ref_1_maj_36_n31,
         ref_1_maj_36_n30, ref_1_maj_36_n29, ref_1_maj_36_n28,
         ref_1_maj_36_n27, ref_1_maj_36_n26, ref_1_maj_36_n25,
         ref_1_maj_36_n24, ref_1_maj_36_n23, ref_1_maj_36_n22,
         ref_1_maj_36_n21, ref_1_maj_36_n20, ref_1_maj_36_n19,
         ref_1_maj_36_n18, ref_1_maj_37_n34, ref_1_maj_37_n33,
         ref_1_maj_37_n32, ref_1_maj_37_n31, ref_1_maj_37_n30,
         ref_1_maj_37_n29, ref_1_maj_37_n28, ref_1_maj_37_n27,
         ref_1_maj_37_n26, ref_1_maj_37_n25, ref_1_maj_37_n24,
         ref_1_maj_37_n23, ref_1_maj_37_n22, ref_1_maj_37_n21,
         ref_1_maj_37_n20, ref_1_maj_37_n19, ref_1_maj_37_n18,
         ref_1_maj_38_n34, ref_1_maj_38_n33, ref_1_maj_38_n32,
         ref_1_maj_38_n31, ref_1_maj_38_n30, ref_1_maj_38_n29,
         ref_1_maj_38_n28, ref_1_maj_38_n27, ref_1_maj_38_n26,
         ref_1_maj_38_n25, ref_1_maj_38_n24, ref_1_maj_38_n23,
         ref_1_maj_38_n22, ref_1_maj_38_n21, ref_1_maj_38_n20,
         ref_1_maj_38_n19, ref_1_maj_38_n18, ref_1_maj_39_n34,
         ref_1_maj_39_n33, ref_1_maj_39_n32, ref_1_maj_39_n31,
         ref_1_maj_39_n30, ref_1_maj_39_n29, ref_1_maj_39_n28,
         ref_1_maj_39_n27, ref_1_maj_39_n26, ref_1_maj_39_n25,
         ref_1_maj_39_n24, ref_1_maj_39_n23, ref_1_maj_39_n22,
         ref_1_maj_39_n21, ref_1_maj_39_n20, ref_1_maj_39_n19,
         ref_1_maj_39_n18, ref_1_maj_40_n34, ref_1_maj_40_n33,
         ref_1_maj_40_n32, ref_1_maj_40_n31, ref_1_maj_40_n30,
         ref_1_maj_40_n29, ref_1_maj_40_n28, ref_1_maj_40_n27,
         ref_1_maj_40_n26, ref_1_maj_40_n25, ref_1_maj_40_n24,
         ref_1_maj_40_n23, ref_1_maj_40_n22, ref_1_maj_40_n21,
         ref_1_maj_40_n20, ref_1_maj_40_n19, ref_1_maj_40_n18,
         ref_1_maj_41_n34, ref_1_maj_41_n33, ref_1_maj_41_n32,
         ref_1_maj_41_n31, ref_1_maj_41_n30, ref_1_maj_41_n29,
         ref_1_maj_41_n28, ref_1_maj_41_n27, ref_1_maj_41_n26,
         ref_1_maj_41_n25, ref_1_maj_41_n24, ref_1_maj_41_n23,
         ref_1_maj_41_n22, ref_1_maj_41_n21, ref_1_maj_41_n20,
         ref_1_maj_41_n19, ref_1_maj_41_n18, ref_1_maj_42_n34,
         ref_1_maj_42_n33, ref_1_maj_42_n32, ref_1_maj_42_n31,
         ref_1_maj_42_n30, ref_1_maj_42_n29, ref_1_maj_42_n28,
         ref_1_maj_42_n27, ref_1_maj_42_n26, ref_1_maj_42_n25,
         ref_1_maj_42_n24, ref_1_maj_42_n23, ref_1_maj_42_n22,
         ref_1_maj_42_n21, ref_1_maj_42_n20, ref_1_maj_42_n19,
         ref_1_maj_42_n18, ref_1_maj_43_n34, ref_1_maj_43_n33,
         ref_1_maj_43_n32, ref_1_maj_43_n31, ref_1_maj_43_n30,
         ref_1_maj_43_n29, ref_1_maj_43_n28, ref_1_maj_43_n27,
         ref_1_maj_43_n26, ref_1_maj_43_n25, ref_1_maj_43_n24,
         ref_1_maj_43_n23, ref_1_maj_43_n22, ref_1_maj_43_n21,
         ref_1_maj_43_n20, ref_1_maj_43_n19, ref_1_maj_43_n18,
         ref_1_maj_44_n34, ref_1_maj_44_n33, ref_1_maj_44_n32,
         ref_1_maj_44_n31, ref_1_maj_44_n30, ref_1_maj_44_n29,
         ref_1_maj_44_n28, ref_1_maj_44_n27, ref_1_maj_44_n26,
         ref_1_maj_44_n25, ref_1_maj_44_n24, ref_1_maj_44_n23,
         ref_1_maj_44_n22, ref_1_maj_44_n21, ref_1_maj_44_n20,
         ref_1_maj_44_n19, ref_1_maj_44_n18, ref_1_maj_45_n34,
         ref_1_maj_45_n33, ref_1_maj_45_n32, ref_1_maj_45_n31,
         ref_1_maj_45_n30, ref_1_maj_45_n29, ref_1_maj_45_n28,
         ref_1_maj_45_n27, ref_1_maj_45_n26, ref_1_maj_45_n25,
         ref_1_maj_45_n24, ref_1_maj_45_n23, ref_1_maj_45_n22,
         ref_1_maj_45_n21, ref_1_maj_45_n20, ref_1_maj_45_n19,
         ref_1_maj_45_n18, ref_1_maj_46_n34, ref_1_maj_46_n33,
         ref_1_maj_46_n32, ref_1_maj_46_n31, ref_1_maj_46_n30,
         ref_1_maj_46_n29, ref_1_maj_46_n28, ref_1_maj_46_n27,
         ref_1_maj_46_n26, ref_1_maj_46_n25, ref_1_maj_46_n24,
         ref_1_maj_46_n23, ref_1_maj_46_n22, ref_1_maj_46_n21,
         ref_1_maj_46_n20, ref_1_maj_46_n19, ref_1_maj_46_n18,
         ref_1_maj_47_n34, ref_1_maj_47_n33, ref_1_maj_47_n32,
         ref_1_maj_47_n31, ref_1_maj_47_n30, ref_1_maj_47_n29,
         ref_1_maj_47_n28, ref_1_maj_47_n27, ref_1_maj_47_n26,
         ref_1_maj_47_n25, ref_1_maj_47_n24, ref_1_maj_47_n23,
         ref_1_maj_47_n22, ref_1_maj_47_n21, ref_1_maj_47_n20,
         ref_1_maj_47_n19, ref_1_maj_47_n18, ref_1_maj_48_n34,
         ref_1_maj_48_n33, ref_1_maj_48_n32, ref_1_maj_48_n31,
         ref_1_maj_48_n30, ref_1_maj_48_n29, ref_1_maj_48_n28,
         ref_1_maj_48_n27, ref_1_maj_48_n26, ref_1_maj_48_n25,
         ref_1_maj_48_n24, ref_1_maj_48_n23, ref_1_maj_48_n22,
         ref_1_maj_48_n21, ref_1_maj_48_n20, ref_1_maj_48_n19,
         ref_1_maj_48_n18, ref_1_maj_49_n34, ref_1_maj_49_n33,
         ref_1_maj_49_n32, ref_1_maj_49_n31, ref_1_maj_49_n30,
         ref_1_maj_49_n29, ref_1_maj_49_n28, ref_1_maj_49_n27,
         ref_1_maj_49_n26, ref_1_maj_49_n25, ref_1_maj_49_n24,
         ref_1_maj_49_n23, ref_1_maj_49_n22, ref_1_maj_49_n21,
         ref_1_maj_49_n20, ref_1_maj_49_n19, ref_1_maj_49_n18,
         ref_1_maj_50_n34, ref_1_maj_50_n33, ref_1_maj_50_n32,
         ref_1_maj_50_n31, ref_1_maj_50_n30, ref_1_maj_50_n29,
         ref_1_maj_50_n28, ref_1_maj_50_n27, ref_1_maj_50_n26,
         ref_1_maj_50_n25, ref_1_maj_50_n24, ref_1_maj_50_n23,
         ref_1_maj_50_n22, ref_1_maj_50_n21, ref_1_maj_50_n20,
         ref_1_maj_50_n19, ref_1_maj_50_n18, ref_1_maj_51_n34,
         ref_1_maj_51_n33, ref_1_maj_51_n32, ref_1_maj_51_n31,
         ref_1_maj_51_n30, ref_1_maj_51_n29, ref_1_maj_51_n28,
         ref_1_maj_51_n27, ref_1_maj_51_n26, ref_1_maj_51_n25,
         ref_1_maj_51_n24, ref_1_maj_51_n23, ref_1_maj_51_n22,
         ref_1_maj_51_n21, ref_1_maj_51_n20, ref_1_maj_51_n19,
         ref_1_maj_51_n18, ref_1_maj_52_n34, ref_1_maj_52_n33,
         ref_1_maj_52_n32, ref_1_maj_52_n31, ref_1_maj_52_n30,
         ref_1_maj_52_n29, ref_1_maj_52_n28, ref_1_maj_52_n27,
         ref_1_maj_52_n26, ref_1_maj_52_n25, ref_1_maj_52_n24,
         ref_1_maj_52_n23, ref_1_maj_52_n22, ref_1_maj_52_n21,
         ref_1_maj_52_n20, ref_1_maj_52_n19, ref_1_maj_52_n18,
         ref_1_maj_53_n34, ref_1_maj_53_n33, ref_1_maj_53_n32,
         ref_1_maj_53_n31, ref_1_maj_53_n30, ref_1_maj_53_n29,
         ref_1_maj_53_n28, ref_1_maj_53_n27, ref_1_maj_53_n26,
         ref_1_maj_53_n25, ref_1_maj_53_n24, ref_1_maj_53_n23,
         ref_1_maj_53_n22, ref_1_maj_53_n21, ref_1_maj_53_n20,
         ref_1_maj_53_n19, ref_1_maj_53_n18, ref_1_maj_54_n34,
         ref_1_maj_54_n33, ref_1_maj_54_n32, ref_1_maj_54_n31,
         ref_1_maj_54_n30, ref_1_maj_54_n29, ref_1_maj_54_n28,
         ref_1_maj_54_n27, ref_1_maj_54_n26, ref_1_maj_54_n25,
         ref_1_maj_54_n24, ref_1_maj_54_n23, ref_1_maj_54_n22,
         ref_1_maj_54_n21, ref_1_maj_54_n20, ref_1_maj_54_n19,
         ref_1_maj_54_n18, ref_1_maj_55_n34, ref_1_maj_55_n33,
         ref_1_maj_55_n32, ref_1_maj_55_n31, ref_1_maj_55_n30,
         ref_1_maj_55_n29, ref_1_maj_55_n28, ref_1_maj_55_n27,
         ref_1_maj_55_n26, ref_1_maj_55_n25, ref_1_maj_55_n24,
         ref_1_maj_55_n23, ref_1_maj_55_n22, ref_1_maj_55_n21,
         ref_1_maj_55_n20, ref_1_maj_55_n19, ref_1_maj_55_n18;
  wire   [6:0] ref_1_port_o_0_0;
  wire   [6:0] ref_1_port_o_0_1;
  wire   [6:0] ref_1_port_o_1_0;
  wire   [6:0] ref_1_port_o_1_1;
  wire   [6:0] temp_0_0;
  wire   [6:0] mult_ab_0_1;
  wire   [6:0] temp_0_1;
  wire   [6:0] mult_ab_1_0;

  DFF_X1 mult_ab_0_1_reg_6_ ( .D(N25), .CK(clk), .Q(mult_ab_0_1[6]), .QN() );
  DFF_X1 mult_ab_0_1_reg_5_ ( .D(N21), .CK(clk), .Q(mult_ab_0_1[5]), .QN() );
  DFF_X1 mult_ab_0_1_reg_4_ ( .D(N17), .CK(clk), .Q(mult_ab_0_1[4]), .QN() );
  DFF_X1 mult_ab_0_1_reg_3_ ( .D(N13), .CK(clk), .Q(mult_ab_0_1[3]), .QN() );
  DFF_X1 mult_ab_0_1_reg_2_ ( .D(N9), .CK(clk), .Q(mult_ab_0_1[2]), .QN() );
  DFF_X1 mult_ab_0_1_reg_1_ ( .D(N5), .CK(clk), .Q(mult_ab_0_1[1]), .QN() );
  DFF_X1 mult_ab_0_1_reg_0_ ( .D(N1), .CK(clk), .Q(mult_ab_0_1[0]), .QN() );
  DFF_X1 mult_ab_1_1_reg_6_ ( .D(N27), .CK(clk), .Q(temp_0_1[6]), .QN() );
  DFF_X1 mult_ab_1_1_reg_5_ ( .D(N23), .CK(clk), .Q(temp_0_1[5]), .QN() );
  DFF_X1 mult_ab_1_1_reg_4_ ( .D(N19), .CK(clk), .Q(temp_0_1[4]), .QN() );
  DFF_X1 mult_ab_1_1_reg_3_ ( .D(N15), .CK(clk), .Q(temp_0_1[3]), .QN() );
  DFF_X1 mult_ab_1_1_reg_2_ ( .D(N11), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 mult_ab_1_1_reg_1_ ( .D(N7), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 mult_ab_1_1_reg_0_ ( .D(N3), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 mult_ab_0_0_reg_6_ ( .D(N24), .CK(clk), .Q(temp_0_0[6]), .QN() );
  DFF_X1 mult_ab_0_0_reg_5_ ( .D(N20), .CK(clk), .Q(temp_0_0[5]), .QN() );
  DFF_X1 mult_ab_0_0_reg_4_ ( .D(N16), .CK(clk), .Q(temp_0_0[4]), .QN() );
  DFF_X1 mult_ab_0_0_reg_3_ ( .D(N12), .CK(clk), .Q(temp_0_0[3]), .QN() );
  DFF_X1 mult_ab_0_0_reg_2_ ( .D(N8), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 mult_ab_0_0_reg_1_ ( .D(N4), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 mult_ab_0_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 mult_ab_1_0_reg_6_ ( .D(N26), .CK(clk), .Q(mult_ab_1_0[6]), .QN() );
  DFF_X1 mult_ab_1_0_reg_5_ ( .D(N22), .CK(clk), .Q(mult_ab_1_0[5]), .QN() );
  DFF_X1 mult_ab_1_0_reg_4_ ( .D(N18), .CK(clk), .Q(mult_ab_1_0[4]), .QN() );
  DFF_X1 mult_ab_1_0_reg_3_ ( .D(N14), .CK(clk), .Q(mult_ab_1_0[3]), .QN() );
  DFF_X1 mult_ab_1_0_reg_2_ ( .D(N10), .CK(clk), .Q(mult_ab_1_0[2]), .QN() );
  DFF_X1 mult_ab_1_0_reg_1_ ( .D(N6), .CK(clk), .Q(mult_ab_1_0[1]), .QN() );
  DFF_X1 mult_ab_1_0_reg_0_ ( .D(N2), .CK(clk), .Q(mult_ab_1_0[0]), .QN() );
  XNOR2_X1 U59 ( .A(port_rand_mul[0]), .B(n8), .ZN(N2) );
  NAND2_X1 U60 ( .A1(ref_1_port_o_1_0[0]), .A2(port_a_1[0]), .ZN(n8) );
  XNOR2_X1 U61 ( .A(port_rand_mul[0]), .B(n2), .ZN(N6) );
  NAND2_X1 U62 ( .A1(ref_1_port_o_1_0[1]), .A2(port_a_1[1]), .ZN(n2) );
  XNOR2_X1 U63 ( .A(port_rand_mul[0]), .B(n13), .ZN(N10) );
  NAND2_X1 U64 ( .A1(ref_1_port_o_1_0[2]), .A2(port_a_1[2]), .ZN(n13) );
  XNOR2_X1 U65 ( .A(port_rand_mul[0]), .B(n11), .ZN(N14) );
  NAND2_X1 U66 ( .A1(ref_1_port_o_1_0[3]), .A2(port_a_1[3]), .ZN(n11) );
  XNOR2_X1 U67 ( .A(port_rand_mul[0]), .B(n9), .ZN(N18) );
  NAND2_X1 U68 ( .A1(ref_1_port_o_1_0[4]), .A2(port_a_1[4]), .ZN(n9) );
  XNOR2_X1 U69 ( .A(port_rand_mul[0]), .B(n6), .ZN(N22) );
  NAND2_X1 U70 ( .A1(ref_1_port_o_1_0[5]), .A2(port_a_1[5]), .ZN(n6) );
  XNOR2_X1 U71 ( .A(port_rand_mul[0]), .B(n4), .ZN(N26) );
  NAND2_X1 U72 ( .A1(ref_1_port_o_1_0[6]), .A2(port_a_1[6]), .ZN(n4) );
  XNOR2_X1 U73 ( .A(port_rand_mul[0]), .B(n14), .ZN(N1) );
  NAND2_X1 U74 ( .A1(ref_1_port_o_0_1[0]), .A2(port_a_0[0]), .ZN(n14) );
  XNOR2_X1 U75 ( .A(port_rand_mul[0]), .B(n3), .ZN(N5) );
  NAND2_X1 U76 ( .A1(ref_1_port_o_0_1[1]), .A2(port_a_0[1]), .ZN(n3) );
  XNOR2_X1 U77 ( .A(port_rand_mul[0]), .B(n1), .ZN(N9) );
  NAND2_X1 U78 ( .A1(ref_1_port_o_0_1[2]), .A2(port_a_0[2]), .ZN(n1) );
  XNOR2_X1 U79 ( .A(port_rand_mul[0]), .B(n12), .ZN(N13) );
  NAND2_X1 U80 ( .A1(ref_1_port_o_0_1[3]), .A2(port_a_0[3]), .ZN(n12) );
  XNOR2_X1 U81 ( .A(port_rand_mul[0]), .B(n10), .ZN(N17) );
  NAND2_X1 U82 ( .A1(ref_1_port_o_0_1[4]), .A2(port_a_0[4]), .ZN(n10) );
  XNOR2_X1 U83 ( .A(port_rand_mul[0]), .B(n7), .ZN(N21) );
  NAND2_X1 U84 ( .A1(ref_1_port_o_0_1[5]), .A2(port_a_0[5]), .ZN(n7) );
  XNOR2_X1 U85 ( .A(port_rand_mul[0]), .B(n5), .ZN(N25) );
  NAND2_X1 U86 ( .A1(ref_1_port_o_0_1[6]), .A2(port_a_0[6]), .ZN(n5) );
  AND2_X1 U87 ( .A1(ref_1_port_o_0_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U88 ( .A1(ref_1_port_o_0_0[1]), .A2(port_a_0[1]), .ZN(N4) );
  AND2_X1 U89 ( .A1(ref_1_port_o_0_0[2]), .A2(port_a_0[2]), .ZN(N8) );
  AND2_X1 U90 ( .A1(ref_1_port_o_0_0[3]), .A2(port_a_0[3]), .ZN(N12) );
  AND2_X1 U91 ( .A1(ref_1_port_o_0_0[4]), .A2(port_a_0[4]), .ZN(N16) );
  AND2_X1 U92 ( .A1(ref_1_port_o_0_0[5]), .A2(port_a_0[5]), .ZN(N20) );
  AND2_X1 U93 ( .A1(ref_1_port_o_0_0[6]), .A2(port_a_0[6]), .ZN(N24) );
  AND2_X1 U94 ( .A1(ref_1_port_o_1_1[0]), .A2(port_a_1[0]), .ZN(N3) );
  AND2_X1 U95 ( .A1(ref_1_port_o_1_1[1]), .A2(port_a_1[1]), .ZN(N7) );
  AND2_X1 U96 ( .A1(ref_1_port_o_1_1[2]), .A2(port_a_1[2]), .ZN(N11) );
  AND2_X1 U97 ( .A1(ref_1_port_o_1_1[3]), .A2(port_a_1[3]), .ZN(N15) );
  AND2_X1 U98 ( .A1(ref_1_port_o_1_1[4]), .A2(port_a_1[4]), .ZN(N19) );
  AND2_X1 U99 ( .A1(ref_1_port_o_1_1[5]), .A2(port_a_1[5]), .ZN(N23) );
  AND2_X1 U100 ( .A1(ref_1_port_o_1_1[6]), .A2(port_a_1[6]), .ZN(N27) );
  XOR2_X1 U101 ( .A(temp_0_1[0]), .B(mult_ab_1_0[0]), .Z(port_c_1[0]) );
  XOR2_X1 U102 ( .A(temp_0_1[1]), .B(mult_ab_1_0[1]), .Z(port_c_1[1]) );
  XOR2_X1 U103 ( .A(temp_0_1[2]), .B(mult_ab_1_0[2]), .Z(port_c_1[2]) );
  XOR2_X1 U104 ( .A(temp_0_1[3]), .B(mult_ab_1_0[3]), .Z(port_c_1[3]) );
  XOR2_X1 U105 ( .A(temp_0_1[4]), .B(mult_ab_1_0[4]), .Z(port_c_1[4]) );
  XOR2_X1 U106 ( .A(temp_0_1[5]), .B(mult_ab_1_0[5]), .Z(port_c_1[5]) );
  XOR2_X1 U107 ( .A(temp_0_1[6]), .B(mult_ab_1_0[6]), .Z(port_c_1[6]) );
  XOR2_X1 U108 ( .A(temp_0_0[0]), .B(mult_ab_0_1[0]), .Z(port_c_0[0]) );
  XOR2_X1 U109 ( .A(temp_0_0[1]), .B(mult_ab_0_1[1]), .Z(port_c_0[1]) );
  XOR2_X1 U110 ( .A(temp_0_0[2]), .B(mult_ab_0_1[2]), .Z(port_c_0[2]) );
  XOR2_X1 U111 ( .A(temp_0_0[3]), .B(mult_ab_0_1[3]), .Z(port_c_0[3]) );
  XOR2_X1 U112 ( .A(temp_0_0[4]), .B(mult_ab_0_1[4]), .Z(port_c_0[4]) );
  XOR2_X1 U113 ( .A(temp_0_0[5]), .B(mult_ab_0_1[5]), .Z(port_c_0[5]) );
  XOR2_X1 U114 ( .A(temp_0_0[6]), .B(mult_ab_0_1[6]), .Z(port_c_0[6]) );
  BUF_X1 ref_1_U18 ( .A(ref_1_refreshed_0_1_), .Z(ref_1_n11) );
  BUF_X1 ref_1_U17 ( .A(ref_1_refreshed_0_4_), .Z(ref_1_n15) );
  BUF_X1 ref_1_U16 ( .A(ref_1_refreshed_0_2_), .Z(ref_1_n12) );
  BUF_X1 ref_1_U15 ( .A(ref_1_refreshed_0_0_), .Z(ref_1_n9) );
  BUF_X1 ref_1_U14 ( .A(ref_1_refreshed_0_1_), .Z(ref_1_n10) );
  BUF_X1 ref_1_U13 ( .A(ref_1_refreshed_0_5_), .Z(ref_1_n16) );
  BUF_X1 ref_1_U12 ( .A(ref_1_refreshed_0_3_), .Z(ref_1_n13) );
  BUF_X1 ref_1_U11 ( .A(ref_1_refreshed_0_4_), .Z(ref_1_n14) );
  BUF_X1 ref_1_U10 ( .A(ref_1_refreshed_1_1_), .Z(ref_1_n3) );
  BUF_X1 ref_1_U9 ( .A(ref_1_refreshed_1_4_), .Z(ref_1_n7) );
  BUF_X1 ref_1_U8 ( .A(ref_1_refreshed_1_2_), .Z(ref_1_n4) );
  BUF_X1 ref_1_U7 ( .A(ref_1_refreshed_1_0_), .Z(ref_1_n1) );
  BUF_X1 ref_1_U6 ( .A(ref_1_refreshed_1_1_), .Z(ref_1_n2) );
  BUF_X1 ref_1_U5 ( .A(ref_1_refreshed_1_5_), .Z(ref_1_n8) );
  BUF_X1 ref_1_U4 ( .A(ref_1_refreshed_1_3_), .Z(ref_1_n5) );
  BUF_X1 ref_1_U3 ( .A(ref_1_refreshed_1_4_), .Z(ref_1_n6) );
  DFF_X1 ref_1_reg_out_1_1_reg_0_ ( .D(ref_1_maj_31_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_1_ ( .D(ref_1_maj_35_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_2_ ( .D(ref_1_maj_39_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_3_ ( .D(ref_1_maj_43_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[3]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_4_ ( .D(ref_1_maj_47_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[4]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_5_ ( .D(ref_1_maj_51_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[5]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_6_ ( .D(ref_1_maj_55_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[6]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_0_ ( .D(ref_1_maj_30_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_1_ ( .D(ref_1_maj_34_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_2_ ( .D(ref_1_maj_38_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_3_ ( .D(ref_1_maj_42_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[3]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_4_ ( .D(ref_1_maj_46_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[4]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_5_ ( .D(ref_1_maj_50_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[5]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_6_ ( .D(ref_1_maj_54_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[6]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_0_ ( .D(ref_1_maj_29_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_1_ ( .D(ref_1_maj_33_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_2_ ( .D(ref_1_maj_37_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_3_ ( .D(ref_1_maj_41_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[3]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_4_ ( .D(ref_1_maj_45_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[4]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_5_ ( .D(ref_1_maj_49_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[5]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_6_ ( .D(ref_1_maj_53_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[6]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_0_ ( .D(ref_1_maj_28_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_1_ ( .D(ref_1_maj_32_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_2_ ( .D(ref_1_maj_36_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_3_ ( .D(ref_1_maj_40_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[3]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_4_ ( .D(ref_1_maj_44_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[4]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_5_ ( .D(ref_1_maj_48_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[5]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_6_ ( .D(ref_1_maj_52_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[6]), .QN() );
  XOR2_X1 ref_1_simpleXor_14_U1 ( .A(port_rand_ref[0]), .B(port_b_0[0]), .Z(
        ref_1_refreshed_0_0_) );
  XOR2_X1 ref_1_simpleXor_15_U1 ( .A(port_rand_ref[0]), .B(port_b_1[0]), .Z(
        ref_1_refreshed_1_0_) );
  XOR2_X1 ref_1_simpleXor_16_U1 ( .A(port_rand_ref[0]), .B(port_b_0[1]), .Z(
        ref_1_refreshed_0_1_) );
  XOR2_X1 ref_1_simpleXor_17_U1 ( .A(port_rand_ref[0]), .B(port_b_1[1]), .Z(
        ref_1_refreshed_1_1_) );
  XOR2_X1 ref_1_simpleXor_18_U1 ( .A(port_rand_ref[0]), .B(port_b_0[2]), .Z(
        ref_1_refreshed_0_2_) );
  XOR2_X1 ref_1_simpleXor_19_U1 ( .A(port_rand_ref[0]), .B(port_b_1[2]), .Z(
        ref_1_refreshed_1_2_) );
  XOR2_X1 ref_1_simpleXor_20_U1 ( .A(port_rand_ref[0]), .B(port_b_0[3]), .Z(
        ref_1_refreshed_0_3_) );
  XOR2_X1 ref_1_simpleXor_21_U1 ( .A(port_rand_ref[0]), .B(port_b_1[3]), .Z(
        ref_1_refreshed_1_3_) );
  XOR2_X1 ref_1_simpleXor_22_U1 ( .A(port_rand_ref[0]), .B(port_b_0[4]), .Z(
        ref_1_refreshed_0_4_) );
  XOR2_X1 ref_1_simpleXor_23_U1 ( .A(port_rand_ref[0]), .B(port_b_1[4]), .Z(
        ref_1_refreshed_1_4_) );
  XOR2_X1 ref_1_simpleXor_24_U1 ( .A(port_rand_ref[0]), .B(port_b_0[5]), .Z(
        ref_1_refreshed_0_5_) );
  XOR2_X1 ref_1_simpleXor_25_U1 ( .A(port_rand_ref[0]), .B(port_b_1[5]), .Z(
        ref_1_refreshed_1_5_) );
  XOR2_X2 ref_1_simpleXor_26_U1 ( .A(port_rand_ref[0]), .B(port_b_0[6]), .Z(
        ref_1_refreshed_0_6_) );
  XOR2_X2 ref_1_simpleXor_27_U1 ( .A(port_rand_ref[0]), .B(port_b_1[6]), .Z(
        ref_1_refreshed_1_6_) );
  OR2_X1 ref_1_maj_28_U19 ( .A1(ref_1_maj_28_n8), .A2(ref_1_maj_28_n9), .ZN(
        ref_1_maj_28_n7) );
  NAND2_X1 ref_1_maj_28_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_28_n7), 
        .ZN(ref_1_maj_28_n6) );
  NAND2_X1 ref_1_maj_28_U17 ( .A1(ref_1_maj_28_n9), .A2(ref_1_maj_28_n8), .ZN(
        ref_1_maj_28_n5) );
  NAND2_X1 ref_1_maj_28_U16 ( .A1(ref_1_maj_28_n5), .A2(ref_1_maj_28_n6), .ZN(
        ref_1_maj_28_n4) );
  OR2_X1 ref_1_maj_28_U15 ( .A1(ref_1_maj_28_n12), .A2(ref_1_maj_28_n13), .ZN(
        ref_1_maj_28_n3) );
  NAND2_X1 ref_1_maj_28_U14 ( .A1(ref_1_maj_28_n13), .A2(ref_1_maj_28_n12), 
        .ZN(ref_1_maj_28_n1) );
  NAND2_X1 ref_1_maj_28_U13 ( .A1(ref_1_maj_28_n3), .A2(ref_1_maj_28_n4), .ZN(
        ref_1_maj_28_n2) );
  NAND2_X1 ref_1_maj_28_U12 ( .A1(ref_1_maj_28_n1), .A2(ref_1_maj_28_n2), .ZN(
        ref_1_maj_28_port_o) );
  NAND2_X1 ref_1_maj_28_U11 ( .A1(ref_1_refreshed_0_5_), .A2(ref_1_maj_28_n10), 
        .ZN(ref_1_maj_28_n17) );
  NAND2_X1 ref_1_maj_28_U10 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n15), .ZN(
        ref_1_maj_28_n16) );
  NAND2_X1 ref_1_maj_28_U9 ( .A1(ref_1_maj_28_n16), .A2(ref_1_maj_28_n17), 
        .ZN(ref_1_maj_28_n13) );
  NAND2_X1 ref_1_maj_28_U8 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_28_n11), 
        .ZN(ref_1_maj_28_n15) );
  NAND2_X1 ref_1_maj_28_U7 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n11), .ZN(
        ref_1_maj_28_n14) );
  NAND2_X1 ref_1_maj_28_U6 ( .A1(ref_1_maj_28_n14), .A2(ref_1_maj_28_n15), 
        .ZN(ref_1_maj_28_n12) );
  XOR2_X1 ref_1_maj_28_U5 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_28_n11), 
        .Z(ref_1_maj_28_n9) );
  XOR2_X1 ref_1_maj_28_U4 ( .A(ref_1_refreshed_0_5_), .B(ref_1_maj_28_n10), 
        .Z(ref_1_maj_28_n8) );
  XOR2_X1 ref_1_maj_28_U3 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n11), .Z(
        ref_1_maj_28_n11) );
  XOR2_X1 ref_1_maj_28_U2 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n15), .Z(
        ref_1_maj_28_n10) );
  OR2_X1 ref_1_maj_29_U19 ( .A1(ref_1_maj_29_n27), .A2(ref_1_maj_29_n26), .ZN(
        ref_1_maj_29_n28) );
  NAND2_X1 ref_1_maj_29_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_29_n28), 
        .ZN(ref_1_maj_29_n29) );
  NAND2_X1 ref_1_maj_29_U17 ( .A1(ref_1_maj_29_n26), .A2(ref_1_maj_29_n27), 
        .ZN(ref_1_maj_29_n30) );
  NAND2_X1 ref_1_maj_29_U16 ( .A1(ref_1_maj_29_n30), .A2(ref_1_maj_29_n29), 
        .ZN(ref_1_maj_29_n31) );
  OR2_X1 ref_1_maj_29_U15 ( .A1(ref_1_maj_29_n23), .A2(ref_1_maj_29_n22), .ZN(
        ref_1_maj_29_n32) );
  NAND2_X1 ref_1_maj_29_U14 ( .A1(ref_1_maj_29_n22), .A2(ref_1_maj_29_n23), 
        .ZN(ref_1_maj_29_n34) );
  NAND2_X1 ref_1_maj_29_U13 ( .A1(ref_1_maj_29_n32), .A2(ref_1_maj_29_n31), 
        .ZN(ref_1_maj_29_n33) );
  NAND2_X1 ref_1_maj_29_U12 ( .A1(ref_1_maj_29_n34), .A2(ref_1_maj_29_n33), 
        .ZN(ref_1_maj_29_port_o) );
  NAND2_X1 ref_1_maj_29_U11 ( .A1(ref_1_n16), .A2(ref_1_maj_29_n25), .ZN(
        ref_1_maj_29_n18) );
  NAND2_X1 ref_1_maj_29_U10 ( .A1(ref_1_n13), .A2(ref_1_n14), .ZN(
        ref_1_maj_29_n19) );
  NAND2_X1 ref_1_maj_29_U9 ( .A1(ref_1_maj_29_n19), .A2(ref_1_maj_29_n18), 
        .ZN(ref_1_maj_29_n22) );
  NAND2_X1 ref_1_maj_29_U8 ( .A1(ref_1_n12), .A2(ref_1_maj_29_n24), .ZN(
        ref_1_maj_29_n20) );
  NAND2_X1 ref_1_maj_29_U7 ( .A1(ref_1_n9), .A2(ref_1_n10), .ZN(
        ref_1_maj_29_n21) );
  NAND2_X1 ref_1_maj_29_U6 ( .A1(ref_1_maj_29_n21), .A2(ref_1_maj_29_n20), 
        .ZN(ref_1_maj_29_n23) );
  XOR2_X1 ref_1_maj_29_U5 ( .A(ref_1_n12), .B(ref_1_maj_29_n24), .Z(
        ref_1_maj_29_n26) );
  XOR2_X1 ref_1_maj_29_U4 ( .A(ref_1_n16), .B(ref_1_maj_29_n25), .Z(
        ref_1_maj_29_n27) );
  XOR2_X1 ref_1_maj_29_U3 ( .A(ref_1_n9), .B(ref_1_n10), .Z(ref_1_maj_29_n24)
         );
  XOR2_X1 ref_1_maj_29_U2 ( .A(ref_1_n13), .B(ref_1_n14), .Z(ref_1_maj_29_n25)
         );
  OR2_X1 ref_1_maj_30_U19 ( .A1(ref_1_maj_30_n27), .A2(ref_1_maj_30_n26), .ZN(
        ref_1_maj_30_n28) );
  NAND2_X1 ref_1_maj_30_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_30_n28), 
        .ZN(ref_1_maj_30_n29) );
  NAND2_X1 ref_1_maj_30_U17 ( .A1(ref_1_maj_30_n26), .A2(ref_1_maj_30_n27), 
        .ZN(ref_1_maj_30_n30) );
  NAND2_X1 ref_1_maj_30_U16 ( .A1(ref_1_maj_30_n30), .A2(ref_1_maj_30_n29), 
        .ZN(ref_1_maj_30_n31) );
  OR2_X1 ref_1_maj_30_U15 ( .A1(ref_1_maj_30_n23), .A2(ref_1_maj_30_n22), .ZN(
        ref_1_maj_30_n32) );
  NAND2_X1 ref_1_maj_30_U14 ( .A1(ref_1_maj_30_n22), .A2(ref_1_maj_30_n23), 
        .ZN(ref_1_maj_30_n34) );
  NAND2_X1 ref_1_maj_30_U13 ( .A1(ref_1_maj_30_n32), .A2(ref_1_maj_30_n31), 
        .ZN(ref_1_maj_30_n33) );
  NAND2_X1 ref_1_maj_30_U12 ( .A1(ref_1_maj_30_n34), .A2(ref_1_maj_30_n33), 
        .ZN(ref_1_maj_30_port_o) );
  NAND2_X1 ref_1_maj_30_U11 ( .A1(ref_1_n8), .A2(ref_1_maj_30_n25), .ZN(
        ref_1_maj_30_n18) );
  NAND2_X1 ref_1_maj_30_U10 ( .A1(ref_1_n5), .A2(ref_1_n6), .ZN(
        ref_1_maj_30_n19) );
  NAND2_X1 ref_1_maj_30_U9 ( .A1(ref_1_maj_30_n19), .A2(ref_1_maj_30_n18), 
        .ZN(ref_1_maj_30_n22) );
  NAND2_X1 ref_1_maj_30_U8 ( .A1(ref_1_n4), .A2(ref_1_maj_30_n24), .ZN(
        ref_1_maj_30_n20) );
  NAND2_X1 ref_1_maj_30_U7 ( .A1(ref_1_n1), .A2(ref_1_n2), .ZN(
        ref_1_maj_30_n21) );
  NAND2_X1 ref_1_maj_30_U6 ( .A1(ref_1_maj_30_n21), .A2(ref_1_maj_30_n20), 
        .ZN(ref_1_maj_30_n23) );
  XOR2_X1 ref_1_maj_30_U5 ( .A(ref_1_n4), .B(ref_1_maj_30_n24), .Z(
        ref_1_maj_30_n26) );
  XOR2_X1 ref_1_maj_30_U4 ( .A(ref_1_n8), .B(ref_1_maj_30_n25), .Z(
        ref_1_maj_30_n27) );
  XOR2_X1 ref_1_maj_30_U3 ( .A(ref_1_n1), .B(ref_1_n2), .Z(ref_1_maj_30_n24)
         );
  XOR2_X1 ref_1_maj_30_U2 ( .A(ref_1_n5), .B(ref_1_n6), .Z(ref_1_maj_30_n25)
         );
  OR2_X1 ref_1_maj_31_U19 ( .A1(ref_1_maj_31_n27), .A2(ref_1_maj_31_n26), .ZN(
        ref_1_maj_31_n28) );
  NAND2_X1 ref_1_maj_31_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_31_n28), 
        .ZN(ref_1_maj_31_n29) );
  NAND2_X1 ref_1_maj_31_U17 ( .A1(ref_1_maj_31_n26), .A2(ref_1_maj_31_n27), 
        .ZN(ref_1_maj_31_n30) );
  NAND2_X1 ref_1_maj_31_U16 ( .A1(ref_1_maj_31_n30), .A2(ref_1_maj_31_n29), 
        .ZN(ref_1_maj_31_n31) );
  OR2_X1 ref_1_maj_31_U15 ( .A1(ref_1_maj_31_n23), .A2(ref_1_maj_31_n22), .ZN(
        ref_1_maj_31_n32) );
  NAND2_X1 ref_1_maj_31_U14 ( .A1(ref_1_maj_31_n22), .A2(ref_1_maj_31_n23), 
        .ZN(ref_1_maj_31_n34) );
  NAND2_X1 ref_1_maj_31_U13 ( .A1(ref_1_maj_31_n32), .A2(ref_1_maj_31_n31), 
        .ZN(ref_1_maj_31_n33) );
  NAND2_X1 ref_1_maj_31_U12 ( .A1(ref_1_maj_31_n34), .A2(ref_1_maj_31_n33), 
        .ZN(ref_1_maj_31_port_o) );
  NAND2_X1 ref_1_maj_31_U11 ( .A1(ref_1_n8), .A2(ref_1_maj_31_n25), .ZN(
        ref_1_maj_31_n18) );
  NAND2_X1 ref_1_maj_31_U10 ( .A1(ref_1_n5), .A2(ref_1_n6), .ZN(
        ref_1_maj_31_n19) );
  NAND2_X1 ref_1_maj_31_U9 ( .A1(ref_1_maj_31_n19), .A2(ref_1_maj_31_n18), 
        .ZN(ref_1_maj_31_n22) );
  NAND2_X1 ref_1_maj_31_U8 ( .A1(ref_1_n4), .A2(ref_1_maj_31_n24), .ZN(
        ref_1_maj_31_n20) );
  NAND2_X1 ref_1_maj_31_U7 ( .A1(ref_1_n1), .A2(ref_1_n2), .ZN(
        ref_1_maj_31_n21) );
  NAND2_X1 ref_1_maj_31_U6 ( .A1(ref_1_maj_31_n21), .A2(ref_1_maj_31_n20), 
        .ZN(ref_1_maj_31_n23) );
  XOR2_X1 ref_1_maj_31_U5 ( .A(ref_1_n4), .B(ref_1_maj_31_n24), .Z(
        ref_1_maj_31_n26) );
  XOR2_X1 ref_1_maj_31_U4 ( .A(ref_1_n8), .B(ref_1_maj_31_n25), .Z(
        ref_1_maj_31_n27) );
  XOR2_X1 ref_1_maj_31_U3 ( .A(ref_1_n1), .B(ref_1_n2), .Z(ref_1_maj_31_n24)
         );
  XOR2_X1 ref_1_maj_31_U2 ( .A(ref_1_n5), .B(ref_1_n6), .Z(ref_1_maj_31_n25)
         );
  OR2_X1 ref_1_maj_32_U19 ( .A1(ref_1_maj_32_n27), .A2(ref_1_maj_32_n26), .ZN(
        ref_1_maj_32_n28) );
  NAND2_X1 ref_1_maj_32_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_32_n28), 
        .ZN(ref_1_maj_32_n29) );
  NAND2_X1 ref_1_maj_32_U17 ( .A1(ref_1_maj_32_n26), .A2(ref_1_maj_32_n27), 
        .ZN(ref_1_maj_32_n30) );
  NAND2_X1 ref_1_maj_32_U16 ( .A1(ref_1_maj_32_n30), .A2(ref_1_maj_32_n29), 
        .ZN(ref_1_maj_32_n31) );
  OR2_X1 ref_1_maj_32_U15 ( .A1(ref_1_maj_32_n23), .A2(ref_1_maj_32_n22), .ZN(
        ref_1_maj_32_n32) );
  NAND2_X1 ref_1_maj_32_U14 ( .A1(ref_1_maj_32_n22), .A2(ref_1_maj_32_n23), 
        .ZN(ref_1_maj_32_n34) );
  NAND2_X1 ref_1_maj_32_U13 ( .A1(ref_1_maj_32_n32), .A2(ref_1_maj_32_n31), 
        .ZN(ref_1_maj_32_n33) );
  NAND2_X1 ref_1_maj_32_U12 ( .A1(ref_1_maj_32_n34), .A2(ref_1_maj_32_n33), 
        .ZN(ref_1_maj_32_port_o) );
  NAND2_X1 ref_1_maj_32_U11 ( .A1(ref_1_n16), .A2(ref_1_maj_32_n25), .ZN(
        ref_1_maj_32_n18) );
  NAND2_X1 ref_1_maj_32_U10 ( .A1(ref_1_n13), .A2(ref_1_n14), .ZN(
        ref_1_maj_32_n19) );
  NAND2_X1 ref_1_maj_32_U9 ( .A1(ref_1_maj_32_n19), .A2(ref_1_maj_32_n18), 
        .ZN(ref_1_maj_32_n22) );
  NAND2_X1 ref_1_maj_32_U8 ( .A1(ref_1_n12), .A2(ref_1_maj_32_n24), .ZN(
        ref_1_maj_32_n20) );
  NAND2_X1 ref_1_maj_32_U7 ( .A1(ref_1_n9), .A2(ref_1_n10), .ZN(
        ref_1_maj_32_n21) );
  NAND2_X1 ref_1_maj_32_U6 ( .A1(ref_1_maj_32_n21), .A2(ref_1_maj_32_n20), 
        .ZN(ref_1_maj_32_n23) );
  XOR2_X1 ref_1_maj_32_U5 ( .A(ref_1_n12), .B(ref_1_maj_32_n24), .Z(
        ref_1_maj_32_n26) );
  XOR2_X1 ref_1_maj_32_U4 ( .A(ref_1_n16), .B(ref_1_maj_32_n25), .Z(
        ref_1_maj_32_n27) );
  XOR2_X1 ref_1_maj_32_U3 ( .A(ref_1_n9), .B(ref_1_n10), .Z(ref_1_maj_32_n24)
         );
  XOR2_X1 ref_1_maj_32_U2 ( .A(ref_1_n13), .B(ref_1_n14), .Z(ref_1_maj_32_n25)
         );
  OR2_X1 ref_1_maj_33_U19 ( .A1(ref_1_maj_33_n27), .A2(ref_1_maj_33_n26), .ZN(
        ref_1_maj_33_n28) );
  NAND2_X1 ref_1_maj_33_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_33_n28), 
        .ZN(ref_1_maj_33_n29) );
  NAND2_X1 ref_1_maj_33_U17 ( .A1(ref_1_maj_33_n26), .A2(ref_1_maj_33_n27), 
        .ZN(ref_1_maj_33_n30) );
  NAND2_X1 ref_1_maj_33_U16 ( .A1(ref_1_maj_33_n30), .A2(ref_1_maj_33_n29), 
        .ZN(ref_1_maj_33_n31) );
  OR2_X1 ref_1_maj_33_U15 ( .A1(ref_1_maj_33_n23), .A2(ref_1_maj_33_n22), .ZN(
        ref_1_maj_33_n32) );
  NAND2_X1 ref_1_maj_33_U14 ( .A1(ref_1_maj_33_n22), .A2(ref_1_maj_33_n23), 
        .ZN(ref_1_maj_33_n34) );
  NAND2_X1 ref_1_maj_33_U13 ( .A1(ref_1_maj_33_n32), .A2(ref_1_maj_33_n31), 
        .ZN(ref_1_maj_33_n33) );
  NAND2_X1 ref_1_maj_33_U12 ( .A1(ref_1_maj_33_n34), .A2(ref_1_maj_33_n33), 
        .ZN(ref_1_maj_33_port_o) );
  NAND2_X1 ref_1_maj_33_U11 ( .A1(ref_1_n16), .A2(ref_1_maj_33_n25), .ZN(
        ref_1_maj_33_n18) );
  NAND2_X1 ref_1_maj_33_U10 ( .A1(ref_1_n13), .A2(ref_1_n14), .ZN(
        ref_1_maj_33_n19) );
  NAND2_X1 ref_1_maj_33_U9 ( .A1(ref_1_maj_33_n19), .A2(ref_1_maj_33_n18), 
        .ZN(ref_1_maj_33_n22) );
  NAND2_X1 ref_1_maj_33_U8 ( .A1(ref_1_n12), .A2(ref_1_maj_33_n24), .ZN(
        ref_1_maj_33_n20) );
  NAND2_X1 ref_1_maj_33_U7 ( .A1(ref_1_n9), .A2(ref_1_n10), .ZN(
        ref_1_maj_33_n21) );
  NAND2_X1 ref_1_maj_33_U6 ( .A1(ref_1_maj_33_n21), .A2(ref_1_maj_33_n20), 
        .ZN(ref_1_maj_33_n23) );
  XOR2_X1 ref_1_maj_33_U5 ( .A(ref_1_n12), .B(ref_1_maj_33_n24), .Z(
        ref_1_maj_33_n26) );
  XOR2_X1 ref_1_maj_33_U4 ( .A(ref_1_n16), .B(ref_1_maj_33_n25), .Z(
        ref_1_maj_33_n27) );
  XOR2_X1 ref_1_maj_33_U3 ( .A(ref_1_n9), .B(ref_1_n10), .Z(ref_1_maj_33_n24)
         );
  XOR2_X1 ref_1_maj_33_U2 ( .A(ref_1_n13), .B(ref_1_n14), .Z(ref_1_maj_33_n25)
         );
  OR2_X1 ref_1_maj_34_U19 ( .A1(ref_1_maj_34_n27), .A2(ref_1_maj_34_n26), .ZN(
        ref_1_maj_34_n28) );
  NAND2_X1 ref_1_maj_34_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_34_n28), 
        .ZN(ref_1_maj_34_n29) );
  NAND2_X1 ref_1_maj_34_U17 ( .A1(ref_1_maj_34_n26), .A2(ref_1_maj_34_n27), 
        .ZN(ref_1_maj_34_n30) );
  NAND2_X1 ref_1_maj_34_U16 ( .A1(ref_1_maj_34_n30), .A2(ref_1_maj_34_n29), 
        .ZN(ref_1_maj_34_n31) );
  OR2_X1 ref_1_maj_34_U15 ( .A1(ref_1_maj_34_n23), .A2(ref_1_maj_34_n22), .ZN(
        ref_1_maj_34_n32) );
  NAND2_X1 ref_1_maj_34_U14 ( .A1(ref_1_maj_34_n22), .A2(ref_1_maj_34_n23), 
        .ZN(ref_1_maj_34_n34) );
  NAND2_X1 ref_1_maj_34_U13 ( .A1(ref_1_maj_34_n32), .A2(ref_1_maj_34_n31), 
        .ZN(ref_1_maj_34_n33) );
  NAND2_X1 ref_1_maj_34_U12 ( .A1(ref_1_maj_34_n34), .A2(ref_1_maj_34_n33), 
        .ZN(ref_1_maj_34_port_o) );
  NAND2_X1 ref_1_maj_34_U11 ( .A1(ref_1_n8), .A2(ref_1_maj_34_n25), .ZN(
        ref_1_maj_34_n18) );
  NAND2_X1 ref_1_maj_34_U10 ( .A1(ref_1_n5), .A2(ref_1_n6), .ZN(
        ref_1_maj_34_n19) );
  NAND2_X1 ref_1_maj_34_U9 ( .A1(ref_1_maj_34_n19), .A2(ref_1_maj_34_n18), 
        .ZN(ref_1_maj_34_n22) );
  NAND2_X1 ref_1_maj_34_U8 ( .A1(ref_1_n4), .A2(ref_1_maj_34_n24), .ZN(
        ref_1_maj_34_n20) );
  NAND2_X1 ref_1_maj_34_U7 ( .A1(ref_1_n1), .A2(ref_1_n2), .ZN(
        ref_1_maj_34_n21) );
  NAND2_X1 ref_1_maj_34_U6 ( .A1(ref_1_maj_34_n21), .A2(ref_1_maj_34_n20), 
        .ZN(ref_1_maj_34_n23) );
  XOR2_X1 ref_1_maj_34_U5 ( .A(ref_1_n4), .B(ref_1_maj_34_n24), .Z(
        ref_1_maj_34_n26) );
  XOR2_X1 ref_1_maj_34_U4 ( .A(ref_1_n8), .B(ref_1_maj_34_n25), .Z(
        ref_1_maj_34_n27) );
  XOR2_X1 ref_1_maj_34_U3 ( .A(ref_1_n1), .B(ref_1_n2), .Z(ref_1_maj_34_n24)
         );
  XOR2_X1 ref_1_maj_34_U2 ( .A(ref_1_n5), .B(ref_1_n6), .Z(ref_1_maj_34_n25)
         );
  OR2_X1 ref_1_maj_35_U19 ( .A1(ref_1_maj_35_n27), .A2(ref_1_maj_35_n26), .ZN(
        ref_1_maj_35_n28) );
  NAND2_X1 ref_1_maj_35_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_35_n28), 
        .ZN(ref_1_maj_35_n29) );
  NAND2_X1 ref_1_maj_35_U17 ( .A1(ref_1_maj_35_n26), .A2(ref_1_maj_35_n27), 
        .ZN(ref_1_maj_35_n30) );
  NAND2_X1 ref_1_maj_35_U16 ( .A1(ref_1_maj_35_n30), .A2(ref_1_maj_35_n29), 
        .ZN(ref_1_maj_35_n31) );
  OR2_X1 ref_1_maj_35_U15 ( .A1(ref_1_maj_35_n23), .A2(ref_1_maj_35_n22), .ZN(
        ref_1_maj_35_n32) );
  NAND2_X1 ref_1_maj_35_U14 ( .A1(ref_1_maj_35_n22), .A2(ref_1_maj_35_n23), 
        .ZN(ref_1_maj_35_n34) );
  NAND2_X1 ref_1_maj_35_U13 ( .A1(ref_1_maj_35_n32), .A2(ref_1_maj_35_n31), 
        .ZN(ref_1_maj_35_n33) );
  NAND2_X1 ref_1_maj_35_U12 ( .A1(ref_1_maj_35_n34), .A2(ref_1_maj_35_n33), 
        .ZN(ref_1_maj_35_port_o) );
  NAND2_X1 ref_1_maj_35_U11 ( .A1(ref_1_n8), .A2(ref_1_maj_35_n25), .ZN(
        ref_1_maj_35_n18) );
  NAND2_X1 ref_1_maj_35_U10 ( .A1(ref_1_n5), .A2(ref_1_n6), .ZN(
        ref_1_maj_35_n19) );
  NAND2_X1 ref_1_maj_35_U9 ( .A1(ref_1_maj_35_n19), .A2(ref_1_maj_35_n18), 
        .ZN(ref_1_maj_35_n22) );
  NAND2_X1 ref_1_maj_35_U8 ( .A1(ref_1_n4), .A2(ref_1_maj_35_n24), .ZN(
        ref_1_maj_35_n20) );
  NAND2_X1 ref_1_maj_35_U7 ( .A1(ref_1_n1), .A2(ref_1_n2), .ZN(
        ref_1_maj_35_n21) );
  NAND2_X1 ref_1_maj_35_U6 ( .A1(ref_1_maj_35_n21), .A2(ref_1_maj_35_n20), 
        .ZN(ref_1_maj_35_n23) );
  XOR2_X1 ref_1_maj_35_U5 ( .A(ref_1_n4), .B(ref_1_maj_35_n24), .Z(
        ref_1_maj_35_n26) );
  XOR2_X1 ref_1_maj_35_U4 ( .A(ref_1_n8), .B(ref_1_maj_35_n25), .Z(
        ref_1_maj_35_n27) );
  XOR2_X1 ref_1_maj_35_U3 ( .A(ref_1_n1), .B(ref_1_n2), .Z(ref_1_maj_35_n24)
         );
  XOR2_X1 ref_1_maj_35_U2 ( .A(ref_1_n5), .B(ref_1_n6), .Z(ref_1_maj_35_n25)
         );
  OR2_X1 ref_1_maj_36_U19 ( .A1(ref_1_maj_36_n27), .A2(ref_1_maj_36_n26), .ZN(
        ref_1_maj_36_n28) );
  NAND2_X1 ref_1_maj_36_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_36_n28), 
        .ZN(ref_1_maj_36_n29) );
  NAND2_X1 ref_1_maj_36_U17 ( .A1(ref_1_maj_36_n26), .A2(ref_1_maj_36_n27), 
        .ZN(ref_1_maj_36_n30) );
  NAND2_X1 ref_1_maj_36_U16 ( .A1(ref_1_maj_36_n30), .A2(ref_1_maj_36_n29), 
        .ZN(ref_1_maj_36_n31) );
  OR2_X1 ref_1_maj_36_U15 ( .A1(ref_1_maj_36_n23), .A2(ref_1_maj_36_n22), .ZN(
        ref_1_maj_36_n32) );
  NAND2_X1 ref_1_maj_36_U14 ( .A1(ref_1_maj_36_n22), .A2(ref_1_maj_36_n23), 
        .ZN(ref_1_maj_36_n34) );
  NAND2_X1 ref_1_maj_36_U13 ( .A1(ref_1_maj_36_n32), .A2(ref_1_maj_36_n31), 
        .ZN(ref_1_maj_36_n33) );
  NAND2_X1 ref_1_maj_36_U12 ( .A1(ref_1_maj_36_n34), .A2(ref_1_maj_36_n33), 
        .ZN(ref_1_maj_36_port_o) );
  NAND2_X1 ref_1_maj_36_U11 ( .A1(ref_1_n16), .A2(ref_1_maj_36_n25), .ZN(
        ref_1_maj_36_n18) );
  NAND2_X1 ref_1_maj_36_U10 ( .A1(ref_1_n13), .A2(ref_1_n14), .ZN(
        ref_1_maj_36_n19) );
  NAND2_X1 ref_1_maj_36_U9 ( .A1(ref_1_maj_36_n19), .A2(ref_1_maj_36_n18), 
        .ZN(ref_1_maj_36_n22) );
  NAND2_X1 ref_1_maj_36_U8 ( .A1(ref_1_n12), .A2(ref_1_maj_36_n24), .ZN(
        ref_1_maj_36_n20) );
  NAND2_X1 ref_1_maj_36_U7 ( .A1(ref_1_n9), .A2(ref_1_n10), .ZN(
        ref_1_maj_36_n21) );
  NAND2_X1 ref_1_maj_36_U6 ( .A1(ref_1_maj_36_n21), .A2(ref_1_maj_36_n20), 
        .ZN(ref_1_maj_36_n23) );
  XOR2_X1 ref_1_maj_36_U5 ( .A(ref_1_n12), .B(ref_1_maj_36_n24), .Z(
        ref_1_maj_36_n26) );
  XOR2_X1 ref_1_maj_36_U4 ( .A(ref_1_n16), .B(ref_1_maj_36_n25), .Z(
        ref_1_maj_36_n27) );
  XOR2_X1 ref_1_maj_36_U3 ( .A(ref_1_n9), .B(ref_1_n10), .Z(ref_1_maj_36_n24)
         );
  XOR2_X1 ref_1_maj_36_U2 ( .A(ref_1_n13), .B(ref_1_n14), .Z(ref_1_maj_36_n25)
         );
  OR2_X1 ref_1_maj_37_U19 ( .A1(ref_1_maj_37_n27), .A2(ref_1_maj_37_n26), .ZN(
        ref_1_maj_37_n28) );
  NAND2_X1 ref_1_maj_37_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_37_n28), 
        .ZN(ref_1_maj_37_n29) );
  NAND2_X1 ref_1_maj_37_U17 ( .A1(ref_1_maj_37_n26), .A2(ref_1_maj_37_n27), 
        .ZN(ref_1_maj_37_n30) );
  NAND2_X1 ref_1_maj_37_U16 ( .A1(ref_1_maj_37_n30), .A2(ref_1_maj_37_n29), 
        .ZN(ref_1_maj_37_n31) );
  OR2_X1 ref_1_maj_37_U15 ( .A1(ref_1_maj_37_n23), .A2(ref_1_maj_37_n22), .ZN(
        ref_1_maj_37_n32) );
  NAND2_X1 ref_1_maj_37_U14 ( .A1(ref_1_maj_37_n22), .A2(ref_1_maj_37_n23), 
        .ZN(ref_1_maj_37_n34) );
  NAND2_X1 ref_1_maj_37_U13 ( .A1(ref_1_maj_37_n32), .A2(ref_1_maj_37_n31), 
        .ZN(ref_1_maj_37_n33) );
  NAND2_X1 ref_1_maj_37_U12 ( .A1(ref_1_maj_37_n34), .A2(ref_1_maj_37_n33), 
        .ZN(ref_1_maj_37_port_o) );
  NAND2_X1 ref_1_maj_37_U11 ( .A1(ref_1_n16), .A2(ref_1_maj_37_n25), .ZN(
        ref_1_maj_37_n18) );
  NAND2_X1 ref_1_maj_37_U10 ( .A1(ref_1_n13), .A2(ref_1_n14), .ZN(
        ref_1_maj_37_n19) );
  NAND2_X1 ref_1_maj_37_U9 ( .A1(ref_1_maj_37_n19), .A2(ref_1_maj_37_n18), 
        .ZN(ref_1_maj_37_n22) );
  NAND2_X1 ref_1_maj_37_U8 ( .A1(ref_1_n12), .A2(ref_1_maj_37_n24), .ZN(
        ref_1_maj_37_n20) );
  NAND2_X1 ref_1_maj_37_U7 ( .A1(ref_1_n9), .A2(ref_1_n10), .ZN(
        ref_1_maj_37_n21) );
  NAND2_X1 ref_1_maj_37_U6 ( .A1(ref_1_maj_37_n21), .A2(ref_1_maj_37_n20), 
        .ZN(ref_1_maj_37_n23) );
  XOR2_X1 ref_1_maj_37_U5 ( .A(ref_1_n12), .B(ref_1_maj_37_n24), .Z(
        ref_1_maj_37_n26) );
  XOR2_X1 ref_1_maj_37_U4 ( .A(ref_1_n16), .B(ref_1_maj_37_n25), .Z(
        ref_1_maj_37_n27) );
  XOR2_X1 ref_1_maj_37_U3 ( .A(ref_1_n9), .B(ref_1_n10), .Z(ref_1_maj_37_n24)
         );
  XOR2_X1 ref_1_maj_37_U2 ( .A(ref_1_n13), .B(ref_1_n14), .Z(ref_1_maj_37_n25)
         );
  OR2_X1 ref_1_maj_38_U19 ( .A1(ref_1_maj_38_n27), .A2(ref_1_maj_38_n26), .ZN(
        ref_1_maj_38_n28) );
  NAND2_X1 ref_1_maj_38_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_38_n28), 
        .ZN(ref_1_maj_38_n29) );
  NAND2_X1 ref_1_maj_38_U17 ( .A1(ref_1_maj_38_n26), .A2(ref_1_maj_38_n27), 
        .ZN(ref_1_maj_38_n30) );
  NAND2_X1 ref_1_maj_38_U16 ( .A1(ref_1_maj_38_n30), .A2(ref_1_maj_38_n29), 
        .ZN(ref_1_maj_38_n31) );
  OR2_X1 ref_1_maj_38_U15 ( .A1(ref_1_maj_38_n23), .A2(ref_1_maj_38_n22), .ZN(
        ref_1_maj_38_n32) );
  NAND2_X1 ref_1_maj_38_U14 ( .A1(ref_1_maj_38_n22), .A2(ref_1_maj_38_n23), 
        .ZN(ref_1_maj_38_n34) );
  NAND2_X1 ref_1_maj_38_U13 ( .A1(ref_1_maj_38_n32), .A2(ref_1_maj_38_n31), 
        .ZN(ref_1_maj_38_n33) );
  NAND2_X1 ref_1_maj_38_U12 ( .A1(ref_1_maj_38_n34), .A2(ref_1_maj_38_n33), 
        .ZN(ref_1_maj_38_port_o) );
  NAND2_X1 ref_1_maj_38_U11 ( .A1(ref_1_n8), .A2(ref_1_maj_38_n25), .ZN(
        ref_1_maj_38_n18) );
  NAND2_X1 ref_1_maj_38_U10 ( .A1(ref_1_n5), .A2(ref_1_n6), .ZN(
        ref_1_maj_38_n19) );
  NAND2_X1 ref_1_maj_38_U9 ( .A1(ref_1_maj_38_n19), .A2(ref_1_maj_38_n18), 
        .ZN(ref_1_maj_38_n22) );
  NAND2_X1 ref_1_maj_38_U8 ( .A1(ref_1_n4), .A2(ref_1_maj_38_n24), .ZN(
        ref_1_maj_38_n20) );
  NAND2_X1 ref_1_maj_38_U7 ( .A1(ref_1_n1), .A2(ref_1_n2), .ZN(
        ref_1_maj_38_n21) );
  NAND2_X1 ref_1_maj_38_U6 ( .A1(ref_1_maj_38_n21), .A2(ref_1_maj_38_n20), 
        .ZN(ref_1_maj_38_n23) );
  XOR2_X1 ref_1_maj_38_U5 ( .A(ref_1_n4), .B(ref_1_maj_38_n24), .Z(
        ref_1_maj_38_n26) );
  XOR2_X1 ref_1_maj_38_U4 ( .A(ref_1_n8), .B(ref_1_maj_38_n25), .Z(
        ref_1_maj_38_n27) );
  XOR2_X1 ref_1_maj_38_U3 ( .A(ref_1_n1), .B(ref_1_n2), .Z(ref_1_maj_38_n24)
         );
  XOR2_X1 ref_1_maj_38_U2 ( .A(ref_1_n5), .B(ref_1_n6), .Z(ref_1_maj_38_n25)
         );
  OR2_X1 ref_1_maj_39_U19 ( .A1(ref_1_maj_39_n27), .A2(ref_1_maj_39_n26), .ZN(
        ref_1_maj_39_n28) );
  NAND2_X1 ref_1_maj_39_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_39_n28), 
        .ZN(ref_1_maj_39_n29) );
  NAND2_X1 ref_1_maj_39_U17 ( .A1(ref_1_maj_39_n26), .A2(ref_1_maj_39_n27), 
        .ZN(ref_1_maj_39_n30) );
  NAND2_X1 ref_1_maj_39_U16 ( .A1(ref_1_maj_39_n30), .A2(ref_1_maj_39_n29), 
        .ZN(ref_1_maj_39_n31) );
  OR2_X1 ref_1_maj_39_U15 ( .A1(ref_1_maj_39_n23), .A2(ref_1_maj_39_n22), .ZN(
        ref_1_maj_39_n32) );
  NAND2_X1 ref_1_maj_39_U14 ( .A1(ref_1_maj_39_n22), .A2(ref_1_maj_39_n23), 
        .ZN(ref_1_maj_39_n34) );
  NAND2_X1 ref_1_maj_39_U13 ( .A1(ref_1_maj_39_n32), .A2(ref_1_maj_39_n31), 
        .ZN(ref_1_maj_39_n33) );
  NAND2_X1 ref_1_maj_39_U12 ( .A1(ref_1_maj_39_n34), .A2(ref_1_maj_39_n33), 
        .ZN(ref_1_maj_39_port_o) );
  NAND2_X1 ref_1_maj_39_U11 ( .A1(ref_1_n8), .A2(ref_1_maj_39_n25), .ZN(
        ref_1_maj_39_n18) );
  NAND2_X1 ref_1_maj_39_U10 ( .A1(ref_1_n5), .A2(ref_1_n6), .ZN(
        ref_1_maj_39_n19) );
  NAND2_X1 ref_1_maj_39_U9 ( .A1(ref_1_maj_39_n19), .A2(ref_1_maj_39_n18), 
        .ZN(ref_1_maj_39_n22) );
  NAND2_X1 ref_1_maj_39_U8 ( .A1(ref_1_n4), .A2(ref_1_maj_39_n24), .ZN(
        ref_1_maj_39_n20) );
  NAND2_X1 ref_1_maj_39_U7 ( .A1(ref_1_n1), .A2(ref_1_n2), .ZN(
        ref_1_maj_39_n21) );
  NAND2_X1 ref_1_maj_39_U6 ( .A1(ref_1_maj_39_n21), .A2(ref_1_maj_39_n20), 
        .ZN(ref_1_maj_39_n23) );
  XOR2_X1 ref_1_maj_39_U5 ( .A(ref_1_n4), .B(ref_1_maj_39_n24), .Z(
        ref_1_maj_39_n26) );
  XOR2_X1 ref_1_maj_39_U4 ( .A(ref_1_n8), .B(ref_1_maj_39_n25), .Z(
        ref_1_maj_39_n27) );
  XOR2_X1 ref_1_maj_39_U3 ( .A(ref_1_n1), .B(ref_1_n2), .Z(ref_1_maj_39_n24)
         );
  XOR2_X1 ref_1_maj_39_U2 ( .A(ref_1_n5), .B(ref_1_n6), .Z(ref_1_maj_39_n25)
         );
  OR2_X1 ref_1_maj_40_U19 ( .A1(ref_1_maj_40_n27), .A2(ref_1_maj_40_n26), .ZN(
        ref_1_maj_40_n28) );
  NAND2_X1 ref_1_maj_40_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_40_n28), 
        .ZN(ref_1_maj_40_n29) );
  NAND2_X1 ref_1_maj_40_U17 ( .A1(ref_1_maj_40_n26), .A2(ref_1_maj_40_n27), 
        .ZN(ref_1_maj_40_n30) );
  NAND2_X1 ref_1_maj_40_U16 ( .A1(ref_1_maj_40_n30), .A2(ref_1_maj_40_n29), 
        .ZN(ref_1_maj_40_n31) );
  OR2_X1 ref_1_maj_40_U15 ( .A1(ref_1_maj_40_n23), .A2(ref_1_maj_40_n22), .ZN(
        ref_1_maj_40_n32) );
  NAND2_X1 ref_1_maj_40_U14 ( .A1(ref_1_maj_40_n22), .A2(ref_1_maj_40_n23), 
        .ZN(ref_1_maj_40_n34) );
  NAND2_X1 ref_1_maj_40_U13 ( .A1(ref_1_maj_40_n32), .A2(ref_1_maj_40_n31), 
        .ZN(ref_1_maj_40_n33) );
  NAND2_X1 ref_1_maj_40_U12 ( .A1(ref_1_maj_40_n34), .A2(ref_1_maj_40_n33), 
        .ZN(ref_1_maj_40_port_o) );
  NAND2_X1 ref_1_maj_40_U11 ( .A1(ref_1_n16), .A2(ref_1_maj_40_n25), .ZN(
        ref_1_maj_40_n18) );
  NAND2_X1 ref_1_maj_40_U10 ( .A1(ref_1_n13), .A2(ref_1_n14), .ZN(
        ref_1_maj_40_n19) );
  NAND2_X1 ref_1_maj_40_U9 ( .A1(ref_1_maj_40_n19), .A2(ref_1_maj_40_n18), 
        .ZN(ref_1_maj_40_n22) );
  NAND2_X1 ref_1_maj_40_U8 ( .A1(ref_1_n12), .A2(ref_1_maj_40_n24), .ZN(
        ref_1_maj_40_n20) );
  NAND2_X1 ref_1_maj_40_U7 ( .A1(ref_1_n9), .A2(ref_1_n10), .ZN(
        ref_1_maj_40_n21) );
  NAND2_X1 ref_1_maj_40_U6 ( .A1(ref_1_maj_40_n21), .A2(ref_1_maj_40_n20), 
        .ZN(ref_1_maj_40_n23) );
  XOR2_X1 ref_1_maj_40_U5 ( .A(ref_1_n12), .B(ref_1_maj_40_n24), .Z(
        ref_1_maj_40_n26) );
  XOR2_X1 ref_1_maj_40_U4 ( .A(ref_1_n16), .B(ref_1_maj_40_n25), .Z(
        ref_1_maj_40_n27) );
  XOR2_X1 ref_1_maj_40_U3 ( .A(ref_1_n9), .B(ref_1_n10), .Z(ref_1_maj_40_n24)
         );
  XOR2_X1 ref_1_maj_40_U2 ( .A(ref_1_n13), .B(ref_1_n14), .Z(ref_1_maj_40_n25)
         );
  OR2_X1 ref_1_maj_41_U19 ( .A1(ref_1_maj_41_n27), .A2(ref_1_maj_41_n26), .ZN(
        ref_1_maj_41_n28) );
  NAND2_X1 ref_1_maj_41_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_41_n28), 
        .ZN(ref_1_maj_41_n29) );
  NAND2_X1 ref_1_maj_41_U17 ( .A1(ref_1_maj_41_n26), .A2(ref_1_maj_41_n27), 
        .ZN(ref_1_maj_41_n30) );
  NAND2_X1 ref_1_maj_41_U16 ( .A1(ref_1_maj_41_n30), .A2(ref_1_maj_41_n29), 
        .ZN(ref_1_maj_41_n31) );
  OR2_X1 ref_1_maj_41_U15 ( .A1(ref_1_maj_41_n23), .A2(ref_1_maj_41_n22), .ZN(
        ref_1_maj_41_n32) );
  NAND2_X1 ref_1_maj_41_U14 ( .A1(ref_1_maj_41_n22), .A2(ref_1_maj_41_n23), 
        .ZN(ref_1_maj_41_n34) );
  NAND2_X1 ref_1_maj_41_U13 ( .A1(ref_1_maj_41_n32), .A2(ref_1_maj_41_n31), 
        .ZN(ref_1_maj_41_n33) );
  NAND2_X1 ref_1_maj_41_U12 ( .A1(ref_1_maj_41_n34), .A2(ref_1_maj_41_n33), 
        .ZN(ref_1_maj_41_port_o) );
  NAND2_X1 ref_1_maj_41_U11 ( .A1(ref_1_n16), .A2(ref_1_maj_41_n25), .ZN(
        ref_1_maj_41_n18) );
  NAND2_X1 ref_1_maj_41_U10 ( .A1(ref_1_n13), .A2(ref_1_n14), .ZN(
        ref_1_maj_41_n19) );
  NAND2_X1 ref_1_maj_41_U9 ( .A1(ref_1_maj_41_n19), .A2(ref_1_maj_41_n18), 
        .ZN(ref_1_maj_41_n22) );
  NAND2_X1 ref_1_maj_41_U8 ( .A1(ref_1_n12), .A2(ref_1_maj_41_n24), .ZN(
        ref_1_maj_41_n20) );
  NAND2_X1 ref_1_maj_41_U7 ( .A1(ref_1_n9), .A2(ref_1_n10), .ZN(
        ref_1_maj_41_n21) );
  NAND2_X1 ref_1_maj_41_U6 ( .A1(ref_1_maj_41_n21), .A2(ref_1_maj_41_n20), 
        .ZN(ref_1_maj_41_n23) );
  XOR2_X1 ref_1_maj_41_U5 ( .A(ref_1_n12), .B(ref_1_maj_41_n24), .Z(
        ref_1_maj_41_n26) );
  XOR2_X1 ref_1_maj_41_U4 ( .A(ref_1_n16), .B(ref_1_maj_41_n25), .Z(
        ref_1_maj_41_n27) );
  XOR2_X1 ref_1_maj_41_U3 ( .A(ref_1_n9), .B(ref_1_n10), .Z(ref_1_maj_41_n24)
         );
  XOR2_X1 ref_1_maj_41_U2 ( .A(ref_1_n13), .B(ref_1_n14), .Z(ref_1_maj_41_n25)
         );
  OR2_X1 ref_1_maj_42_U19 ( .A1(ref_1_maj_42_n27), .A2(ref_1_maj_42_n26), .ZN(
        ref_1_maj_42_n28) );
  NAND2_X1 ref_1_maj_42_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_42_n28), 
        .ZN(ref_1_maj_42_n29) );
  NAND2_X1 ref_1_maj_42_U17 ( .A1(ref_1_maj_42_n26), .A2(ref_1_maj_42_n27), 
        .ZN(ref_1_maj_42_n30) );
  NAND2_X1 ref_1_maj_42_U16 ( .A1(ref_1_maj_42_n30), .A2(ref_1_maj_42_n29), 
        .ZN(ref_1_maj_42_n31) );
  OR2_X1 ref_1_maj_42_U15 ( .A1(ref_1_maj_42_n23), .A2(ref_1_maj_42_n22), .ZN(
        ref_1_maj_42_n32) );
  NAND2_X1 ref_1_maj_42_U14 ( .A1(ref_1_maj_42_n22), .A2(ref_1_maj_42_n23), 
        .ZN(ref_1_maj_42_n34) );
  NAND2_X1 ref_1_maj_42_U13 ( .A1(ref_1_maj_42_n32), .A2(ref_1_maj_42_n31), 
        .ZN(ref_1_maj_42_n33) );
  NAND2_X1 ref_1_maj_42_U12 ( .A1(ref_1_maj_42_n34), .A2(ref_1_maj_42_n33), 
        .ZN(ref_1_maj_42_port_o) );
  NAND2_X1 ref_1_maj_42_U11 ( .A1(ref_1_n8), .A2(ref_1_maj_42_n25), .ZN(
        ref_1_maj_42_n18) );
  NAND2_X1 ref_1_maj_42_U10 ( .A1(ref_1_n5), .A2(ref_1_n6), .ZN(
        ref_1_maj_42_n19) );
  NAND2_X1 ref_1_maj_42_U9 ( .A1(ref_1_maj_42_n19), .A2(ref_1_maj_42_n18), 
        .ZN(ref_1_maj_42_n22) );
  NAND2_X1 ref_1_maj_42_U8 ( .A1(ref_1_n4), .A2(ref_1_maj_42_n24), .ZN(
        ref_1_maj_42_n20) );
  NAND2_X1 ref_1_maj_42_U7 ( .A1(ref_1_n1), .A2(ref_1_n2), .ZN(
        ref_1_maj_42_n21) );
  NAND2_X1 ref_1_maj_42_U6 ( .A1(ref_1_maj_42_n21), .A2(ref_1_maj_42_n20), 
        .ZN(ref_1_maj_42_n23) );
  XOR2_X1 ref_1_maj_42_U5 ( .A(ref_1_n4), .B(ref_1_maj_42_n24), .Z(
        ref_1_maj_42_n26) );
  XOR2_X1 ref_1_maj_42_U4 ( .A(ref_1_n8), .B(ref_1_maj_42_n25), .Z(
        ref_1_maj_42_n27) );
  XOR2_X1 ref_1_maj_42_U3 ( .A(ref_1_n1), .B(ref_1_n2), .Z(ref_1_maj_42_n24)
         );
  XOR2_X1 ref_1_maj_42_U2 ( .A(ref_1_n5), .B(ref_1_n6), .Z(ref_1_maj_42_n25)
         );
  OR2_X1 ref_1_maj_43_U19 ( .A1(ref_1_maj_43_n27), .A2(ref_1_maj_43_n26), .ZN(
        ref_1_maj_43_n28) );
  NAND2_X1 ref_1_maj_43_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_43_n28), 
        .ZN(ref_1_maj_43_n29) );
  NAND2_X1 ref_1_maj_43_U17 ( .A1(ref_1_maj_43_n26), .A2(ref_1_maj_43_n27), 
        .ZN(ref_1_maj_43_n30) );
  NAND2_X1 ref_1_maj_43_U16 ( .A1(ref_1_maj_43_n30), .A2(ref_1_maj_43_n29), 
        .ZN(ref_1_maj_43_n31) );
  OR2_X1 ref_1_maj_43_U15 ( .A1(ref_1_maj_43_n23), .A2(ref_1_maj_43_n22), .ZN(
        ref_1_maj_43_n32) );
  NAND2_X1 ref_1_maj_43_U14 ( .A1(ref_1_maj_43_n22), .A2(ref_1_maj_43_n23), 
        .ZN(ref_1_maj_43_n34) );
  NAND2_X1 ref_1_maj_43_U13 ( .A1(ref_1_maj_43_n32), .A2(ref_1_maj_43_n31), 
        .ZN(ref_1_maj_43_n33) );
  NAND2_X1 ref_1_maj_43_U12 ( .A1(ref_1_maj_43_n34), .A2(ref_1_maj_43_n33), 
        .ZN(ref_1_maj_43_port_o) );
  NAND2_X1 ref_1_maj_43_U11 ( .A1(ref_1_n8), .A2(ref_1_maj_43_n25), .ZN(
        ref_1_maj_43_n18) );
  NAND2_X1 ref_1_maj_43_U10 ( .A1(ref_1_n5), .A2(ref_1_n7), .ZN(
        ref_1_maj_43_n19) );
  NAND2_X1 ref_1_maj_43_U9 ( .A1(ref_1_maj_43_n19), .A2(ref_1_maj_43_n18), 
        .ZN(ref_1_maj_43_n22) );
  NAND2_X1 ref_1_maj_43_U8 ( .A1(ref_1_n4), .A2(ref_1_maj_43_n24), .ZN(
        ref_1_maj_43_n20) );
  NAND2_X1 ref_1_maj_43_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_43_n21) );
  NAND2_X1 ref_1_maj_43_U6 ( .A1(ref_1_maj_43_n21), .A2(ref_1_maj_43_n20), 
        .ZN(ref_1_maj_43_n23) );
  XOR2_X1 ref_1_maj_43_U5 ( .A(ref_1_n4), .B(ref_1_maj_43_n24), .Z(
        ref_1_maj_43_n26) );
  XOR2_X1 ref_1_maj_43_U4 ( .A(ref_1_n8), .B(ref_1_maj_43_n25), .Z(
        ref_1_maj_43_n27) );
  XOR2_X1 ref_1_maj_43_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_43_n24)
         );
  XOR2_X1 ref_1_maj_43_U2 ( .A(ref_1_n5), .B(ref_1_n7), .Z(ref_1_maj_43_n25)
         );
  OR2_X1 ref_1_maj_44_U19 ( .A1(ref_1_maj_44_n27), .A2(ref_1_maj_44_n26), .ZN(
        ref_1_maj_44_n28) );
  NAND2_X1 ref_1_maj_44_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_44_n28), 
        .ZN(ref_1_maj_44_n29) );
  NAND2_X1 ref_1_maj_44_U17 ( .A1(ref_1_maj_44_n26), .A2(ref_1_maj_44_n27), 
        .ZN(ref_1_maj_44_n30) );
  NAND2_X1 ref_1_maj_44_U16 ( .A1(ref_1_maj_44_n30), .A2(ref_1_maj_44_n29), 
        .ZN(ref_1_maj_44_n31) );
  OR2_X1 ref_1_maj_44_U15 ( .A1(ref_1_maj_44_n23), .A2(ref_1_maj_44_n22), .ZN(
        ref_1_maj_44_n32) );
  NAND2_X1 ref_1_maj_44_U14 ( .A1(ref_1_maj_44_n22), .A2(ref_1_maj_44_n23), 
        .ZN(ref_1_maj_44_n34) );
  NAND2_X1 ref_1_maj_44_U13 ( .A1(ref_1_maj_44_n32), .A2(ref_1_maj_44_n31), 
        .ZN(ref_1_maj_44_n33) );
  NAND2_X1 ref_1_maj_44_U12 ( .A1(ref_1_maj_44_n34), .A2(ref_1_maj_44_n33), 
        .ZN(ref_1_maj_44_port_o) );
  NAND2_X1 ref_1_maj_44_U11 ( .A1(ref_1_n16), .A2(ref_1_maj_44_n25), .ZN(
        ref_1_maj_44_n18) );
  NAND2_X1 ref_1_maj_44_U10 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_44_n19) );
  NAND2_X1 ref_1_maj_44_U9 ( .A1(ref_1_maj_44_n19), .A2(ref_1_maj_44_n18), 
        .ZN(ref_1_maj_44_n22) );
  NAND2_X1 ref_1_maj_44_U8 ( .A1(ref_1_n12), .A2(ref_1_maj_44_n24), .ZN(
        ref_1_maj_44_n20) );
  NAND2_X1 ref_1_maj_44_U7 ( .A1(ref_1_n9), .A2(ref_1_n11), .ZN(
        ref_1_maj_44_n21) );
  NAND2_X1 ref_1_maj_44_U6 ( .A1(ref_1_maj_44_n21), .A2(ref_1_maj_44_n20), 
        .ZN(ref_1_maj_44_n23) );
  XOR2_X1 ref_1_maj_44_U5 ( .A(ref_1_n12), .B(ref_1_maj_44_n24), .Z(
        ref_1_maj_44_n26) );
  XOR2_X1 ref_1_maj_44_U4 ( .A(ref_1_n16), .B(ref_1_maj_44_n25), .Z(
        ref_1_maj_44_n27) );
  XOR2_X1 ref_1_maj_44_U3 ( .A(ref_1_n9), .B(ref_1_n11), .Z(ref_1_maj_44_n24)
         );
  XOR2_X1 ref_1_maj_44_U2 ( .A(ref_1_n13), .B(ref_1_n15), .Z(ref_1_maj_44_n25)
         );
  OR2_X1 ref_1_maj_45_U19 ( .A1(ref_1_maj_45_n27), .A2(ref_1_maj_45_n26), .ZN(
        ref_1_maj_45_n28) );
  NAND2_X1 ref_1_maj_45_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_45_n28), 
        .ZN(ref_1_maj_45_n29) );
  NAND2_X1 ref_1_maj_45_U17 ( .A1(ref_1_maj_45_n26), .A2(ref_1_maj_45_n27), 
        .ZN(ref_1_maj_45_n30) );
  NAND2_X1 ref_1_maj_45_U16 ( .A1(ref_1_maj_45_n30), .A2(ref_1_maj_45_n29), 
        .ZN(ref_1_maj_45_n31) );
  OR2_X1 ref_1_maj_45_U15 ( .A1(ref_1_maj_45_n23), .A2(ref_1_maj_45_n22), .ZN(
        ref_1_maj_45_n32) );
  NAND2_X1 ref_1_maj_45_U14 ( .A1(ref_1_maj_45_n22), .A2(ref_1_maj_45_n23), 
        .ZN(ref_1_maj_45_n34) );
  NAND2_X1 ref_1_maj_45_U13 ( .A1(ref_1_maj_45_n32), .A2(ref_1_maj_45_n31), 
        .ZN(ref_1_maj_45_n33) );
  NAND2_X1 ref_1_maj_45_U12 ( .A1(ref_1_maj_45_n34), .A2(ref_1_maj_45_n33), 
        .ZN(ref_1_maj_45_port_o) );
  NAND2_X1 ref_1_maj_45_U11 ( .A1(ref_1_n16), .A2(ref_1_maj_45_n25), .ZN(
        ref_1_maj_45_n18) );
  NAND2_X1 ref_1_maj_45_U10 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_45_n19) );
  NAND2_X1 ref_1_maj_45_U9 ( .A1(ref_1_maj_45_n19), .A2(ref_1_maj_45_n18), 
        .ZN(ref_1_maj_45_n22) );
  NAND2_X1 ref_1_maj_45_U8 ( .A1(ref_1_n12), .A2(ref_1_maj_45_n24), .ZN(
        ref_1_maj_45_n20) );
  NAND2_X1 ref_1_maj_45_U7 ( .A1(ref_1_n9), .A2(ref_1_n11), .ZN(
        ref_1_maj_45_n21) );
  NAND2_X1 ref_1_maj_45_U6 ( .A1(ref_1_maj_45_n21), .A2(ref_1_maj_45_n20), 
        .ZN(ref_1_maj_45_n23) );
  XOR2_X1 ref_1_maj_45_U5 ( .A(ref_1_n12), .B(ref_1_maj_45_n24), .Z(
        ref_1_maj_45_n26) );
  XOR2_X1 ref_1_maj_45_U4 ( .A(ref_1_n16), .B(ref_1_maj_45_n25), .Z(
        ref_1_maj_45_n27) );
  XOR2_X1 ref_1_maj_45_U3 ( .A(ref_1_n9), .B(ref_1_n11), .Z(ref_1_maj_45_n24)
         );
  XOR2_X1 ref_1_maj_45_U2 ( .A(ref_1_n13), .B(ref_1_n15), .Z(ref_1_maj_45_n25)
         );
  OR2_X1 ref_1_maj_46_U19 ( .A1(ref_1_maj_46_n27), .A2(ref_1_maj_46_n26), .ZN(
        ref_1_maj_46_n28) );
  NAND2_X1 ref_1_maj_46_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_46_n28), 
        .ZN(ref_1_maj_46_n29) );
  NAND2_X1 ref_1_maj_46_U17 ( .A1(ref_1_maj_46_n26), .A2(ref_1_maj_46_n27), 
        .ZN(ref_1_maj_46_n30) );
  NAND2_X1 ref_1_maj_46_U16 ( .A1(ref_1_maj_46_n30), .A2(ref_1_maj_46_n29), 
        .ZN(ref_1_maj_46_n31) );
  OR2_X1 ref_1_maj_46_U15 ( .A1(ref_1_maj_46_n23), .A2(ref_1_maj_46_n22), .ZN(
        ref_1_maj_46_n32) );
  NAND2_X1 ref_1_maj_46_U14 ( .A1(ref_1_maj_46_n22), .A2(ref_1_maj_46_n23), 
        .ZN(ref_1_maj_46_n34) );
  NAND2_X1 ref_1_maj_46_U13 ( .A1(ref_1_maj_46_n32), .A2(ref_1_maj_46_n31), 
        .ZN(ref_1_maj_46_n33) );
  NAND2_X1 ref_1_maj_46_U12 ( .A1(ref_1_maj_46_n34), .A2(ref_1_maj_46_n33), 
        .ZN(ref_1_maj_46_port_o) );
  NAND2_X1 ref_1_maj_46_U11 ( .A1(ref_1_n8), .A2(ref_1_maj_46_n25), .ZN(
        ref_1_maj_46_n18) );
  NAND2_X1 ref_1_maj_46_U10 ( .A1(ref_1_n5), .A2(ref_1_n7), .ZN(
        ref_1_maj_46_n19) );
  NAND2_X1 ref_1_maj_46_U9 ( .A1(ref_1_maj_46_n19), .A2(ref_1_maj_46_n18), 
        .ZN(ref_1_maj_46_n22) );
  NAND2_X1 ref_1_maj_46_U8 ( .A1(ref_1_n4), .A2(ref_1_maj_46_n24), .ZN(
        ref_1_maj_46_n20) );
  NAND2_X1 ref_1_maj_46_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_46_n21) );
  NAND2_X1 ref_1_maj_46_U6 ( .A1(ref_1_maj_46_n21), .A2(ref_1_maj_46_n20), 
        .ZN(ref_1_maj_46_n23) );
  XOR2_X1 ref_1_maj_46_U5 ( .A(ref_1_n4), .B(ref_1_maj_46_n24), .Z(
        ref_1_maj_46_n26) );
  XOR2_X1 ref_1_maj_46_U4 ( .A(ref_1_n8), .B(ref_1_maj_46_n25), .Z(
        ref_1_maj_46_n27) );
  XOR2_X1 ref_1_maj_46_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_46_n24)
         );
  XOR2_X1 ref_1_maj_46_U2 ( .A(ref_1_n5), .B(ref_1_n7), .Z(ref_1_maj_46_n25)
         );
  OR2_X1 ref_1_maj_47_U19 ( .A1(ref_1_maj_47_n27), .A2(ref_1_maj_47_n26), .ZN(
        ref_1_maj_47_n28) );
  NAND2_X1 ref_1_maj_47_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_47_n28), 
        .ZN(ref_1_maj_47_n29) );
  NAND2_X1 ref_1_maj_47_U17 ( .A1(ref_1_maj_47_n26), .A2(ref_1_maj_47_n27), 
        .ZN(ref_1_maj_47_n30) );
  NAND2_X1 ref_1_maj_47_U16 ( .A1(ref_1_maj_47_n30), .A2(ref_1_maj_47_n29), 
        .ZN(ref_1_maj_47_n31) );
  OR2_X1 ref_1_maj_47_U15 ( .A1(ref_1_maj_47_n23), .A2(ref_1_maj_47_n22), .ZN(
        ref_1_maj_47_n32) );
  NAND2_X1 ref_1_maj_47_U14 ( .A1(ref_1_maj_47_n22), .A2(ref_1_maj_47_n23), 
        .ZN(ref_1_maj_47_n34) );
  NAND2_X1 ref_1_maj_47_U13 ( .A1(ref_1_maj_47_n32), .A2(ref_1_maj_47_n31), 
        .ZN(ref_1_maj_47_n33) );
  NAND2_X1 ref_1_maj_47_U12 ( .A1(ref_1_maj_47_n34), .A2(ref_1_maj_47_n33), 
        .ZN(ref_1_maj_47_port_o) );
  NAND2_X1 ref_1_maj_47_U11 ( .A1(ref_1_n8), .A2(ref_1_maj_47_n25), .ZN(
        ref_1_maj_47_n18) );
  NAND2_X1 ref_1_maj_47_U10 ( .A1(ref_1_n5), .A2(ref_1_n7), .ZN(
        ref_1_maj_47_n19) );
  NAND2_X1 ref_1_maj_47_U9 ( .A1(ref_1_maj_47_n19), .A2(ref_1_maj_47_n18), 
        .ZN(ref_1_maj_47_n22) );
  NAND2_X1 ref_1_maj_47_U8 ( .A1(ref_1_n4), .A2(ref_1_maj_47_n24), .ZN(
        ref_1_maj_47_n20) );
  NAND2_X1 ref_1_maj_47_U7 ( .A1(ref_1_n1), .A2(ref_1_n3), .ZN(
        ref_1_maj_47_n21) );
  NAND2_X1 ref_1_maj_47_U6 ( .A1(ref_1_maj_47_n21), .A2(ref_1_maj_47_n20), 
        .ZN(ref_1_maj_47_n23) );
  XOR2_X1 ref_1_maj_47_U5 ( .A(ref_1_n4), .B(ref_1_maj_47_n24), .Z(
        ref_1_maj_47_n26) );
  XOR2_X1 ref_1_maj_47_U4 ( .A(ref_1_n8), .B(ref_1_maj_47_n25), .Z(
        ref_1_maj_47_n27) );
  XOR2_X1 ref_1_maj_47_U3 ( .A(ref_1_n1), .B(ref_1_n3), .Z(ref_1_maj_47_n24)
         );
  XOR2_X1 ref_1_maj_47_U2 ( .A(ref_1_n5), .B(ref_1_n7), .Z(ref_1_maj_47_n25)
         );
  OR2_X1 ref_1_maj_48_U19 ( .A1(ref_1_maj_48_n27), .A2(ref_1_maj_48_n26), .ZN(
        ref_1_maj_48_n28) );
  NAND2_X1 ref_1_maj_48_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_48_n28), 
        .ZN(ref_1_maj_48_n29) );
  NAND2_X1 ref_1_maj_48_U17 ( .A1(ref_1_maj_48_n26), .A2(ref_1_maj_48_n27), 
        .ZN(ref_1_maj_48_n30) );
  NAND2_X1 ref_1_maj_48_U16 ( .A1(ref_1_maj_48_n30), .A2(ref_1_maj_48_n29), 
        .ZN(ref_1_maj_48_n31) );
  OR2_X1 ref_1_maj_48_U15 ( .A1(ref_1_maj_48_n23), .A2(ref_1_maj_48_n22), .ZN(
        ref_1_maj_48_n32) );
  NAND2_X1 ref_1_maj_48_U14 ( .A1(ref_1_maj_48_n22), .A2(ref_1_maj_48_n23), 
        .ZN(ref_1_maj_48_n34) );
  NAND2_X1 ref_1_maj_48_U13 ( .A1(ref_1_maj_48_n32), .A2(ref_1_maj_48_n31), 
        .ZN(ref_1_maj_48_n33) );
  NAND2_X1 ref_1_maj_48_U12 ( .A1(ref_1_maj_48_n34), .A2(ref_1_maj_48_n33), 
        .ZN(ref_1_maj_48_port_o) );
  NAND2_X1 ref_1_maj_48_U11 ( .A1(ref_1_n16), .A2(ref_1_maj_48_n25), .ZN(
        ref_1_maj_48_n18) );
  NAND2_X1 ref_1_maj_48_U10 ( .A1(ref_1_n13), .A2(ref_1_n15), .ZN(
        ref_1_maj_48_n19) );
  NAND2_X1 ref_1_maj_48_U9 ( .A1(ref_1_maj_48_n19), .A2(ref_1_maj_48_n18), 
        .ZN(ref_1_maj_48_n22) );
  NAND2_X1 ref_1_maj_48_U8 ( .A1(ref_1_n12), .A2(ref_1_maj_48_n24), .ZN(
        ref_1_maj_48_n20) );
  NAND2_X1 ref_1_maj_48_U7 ( .A1(ref_1_n9), .A2(ref_1_n11), .ZN(
        ref_1_maj_48_n21) );
  NAND2_X1 ref_1_maj_48_U6 ( .A1(ref_1_maj_48_n21), .A2(ref_1_maj_48_n20), 
        .ZN(ref_1_maj_48_n23) );
  XOR2_X1 ref_1_maj_48_U5 ( .A(ref_1_n12), .B(ref_1_maj_48_n24), .Z(
        ref_1_maj_48_n26) );
  XOR2_X1 ref_1_maj_48_U4 ( .A(ref_1_n16), .B(ref_1_maj_48_n25), .Z(
        ref_1_maj_48_n27) );
  XOR2_X1 ref_1_maj_48_U3 ( .A(ref_1_n9), .B(ref_1_n11), .Z(ref_1_maj_48_n24)
         );
  XOR2_X1 ref_1_maj_48_U2 ( .A(ref_1_n13), .B(ref_1_n15), .Z(ref_1_maj_48_n25)
         );
  OR2_X1 ref_1_maj_49_U19 ( .A1(ref_1_maj_49_n27), .A2(ref_1_maj_49_n26), .ZN(
        ref_1_maj_49_n28) );
  NAND2_X1 ref_1_maj_49_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_49_n28), 
        .ZN(ref_1_maj_49_n29) );
  NAND2_X1 ref_1_maj_49_U17 ( .A1(ref_1_maj_49_n26), .A2(ref_1_maj_49_n27), 
        .ZN(ref_1_maj_49_n30) );
  NAND2_X1 ref_1_maj_49_U16 ( .A1(ref_1_maj_49_n30), .A2(ref_1_maj_49_n29), 
        .ZN(ref_1_maj_49_n31) );
  OR2_X1 ref_1_maj_49_U15 ( .A1(ref_1_maj_49_n23), .A2(ref_1_maj_49_n22), .ZN(
        ref_1_maj_49_n32) );
  NAND2_X1 ref_1_maj_49_U14 ( .A1(ref_1_maj_49_n22), .A2(ref_1_maj_49_n23), 
        .ZN(ref_1_maj_49_n34) );
  NAND2_X1 ref_1_maj_49_U13 ( .A1(ref_1_maj_49_n32), .A2(ref_1_maj_49_n31), 
        .ZN(ref_1_maj_49_n33) );
  NAND2_X1 ref_1_maj_49_U12 ( .A1(ref_1_maj_49_n34), .A2(ref_1_maj_49_n33), 
        .ZN(ref_1_maj_49_port_o) );
  NAND2_X1 ref_1_maj_49_U11 ( .A1(ref_1_refreshed_0_5_), .A2(ref_1_maj_49_n25), 
        .ZN(ref_1_maj_49_n18) );
  NAND2_X1 ref_1_maj_49_U10 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n15), .ZN(
        ref_1_maj_49_n19) );
  NAND2_X1 ref_1_maj_49_U9 ( .A1(ref_1_maj_49_n19), .A2(ref_1_maj_49_n18), 
        .ZN(ref_1_maj_49_n22) );
  NAND2_X1 ref_1_maj_49_U8 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_49_n24), 
        .ZN(ref_1_maj_49_n20) );
  NAND2_X1 ref_1_maj_49_U7 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n11), .ZN(
        ref_1_maj_49_n21) );
  NAND2_X1 ref_1_maj_49_U6 ( .A1(ref_1_maj_49_n21), .A2(ref_1_maj_49_n20), 
        .ZN(ref_1_maj_49_n23) );
  XOR2_X1 ref_1_maj_49_U5 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_49_n24), 
        .Z(ref_1_maj_49_n26) );
  XOR2_X1 ref_1_maj_49_U4 ( .A(ref_1_refreshed_0_5_), .B(ref_1_maj_49_n25), 
        .Z(ref_1_maj_49_n27) );
  XOR2_X1 ref_1_maj_49_U3 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n11), .Z(
        ref_1_maj_49_n24) );
  XOR2_X1 ref_1_maj_49_U2 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n15), .Z(
        ref_1_maj_49_n25) );
  OR2_X1 ref_1_maj_50_U19 ( .A1(ref_1_maj_50_n27), .A2(ref_1_maj_50_n26), .ZN(
        ref_1_maj_50_n28) );
  NAND2_X1 ref_1_maj_50_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_50_n28), 
        .ZN(ref_1_maj_50_n29) );
  NAND2_X1 ref_1_maj_50_U17 ( .A1(ref_1_maj_50_n26), .A2(ref_1_maj_50_n27), 
        .ZN(ref_1_maj_50_n30) );
  NAND2_X1 ref_1_maj_50_U16 ( .A1(ref_1_maj_50_n30), .A2(ref_1_maj_50_n29), 
        .ZN(ref_1_maj_50_n31) );
  OR2_X1 ref_1_maj_50_U15 ( .A1(ref_1_maj_50_n23), .A2(ref_1_maj_50_n22), .ZN(
        ref_1_maj_50_n32) );
  NAND2_X1 ref_1_maj_50_U14 ( .A1(ref_1_maj_50_n22), .A2(ref_1_maj_50_n23), 
        .ZN(ref_1_maj_50_n34) );
  NAND2_X1 ref_1_maj_50_U13 ( .A1(ref_1_maj_50_n32), .A2(ref_1_maj_50_n31), 
        .ZN(ref_1_maj_50_n33) );
  NAND2_X1 ref_1_maj_50_U12 ( .A1(ref_1_maj_50_n34), .A2(ref_1_maj_50_n33), 
        .ZN(ref_1_maj_50_port_o) );
  NAND2_X1 ref_1_maj_50_U11 ( .A1(ref_1_refreshed_1_5_), .A2(ref_1_maj_50_n25), 
        .ZN(ref_1_maj_50_n18) );
  NAND2_X1 ref_1_maj_50_U10 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n7), .ZN(
        ref_1_maj_50_n19) );
  NAND2_X1 ref_1_maj_50_U9 ( .A1(ref_1_maj_50_n19), .A2(ref_1_maj_50_n18), 
        .ZN(ref_1_maj_50_n22) );
  NAND2_X1 ref_1_maj_50_U8 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_50_n24), 
        .ZN(ref_1_maj_50_n20) );
  NAND2_X1 ref_1_maj_50_U7 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_50_n21) );
  NAND2_X1 ref_1_maj_50_U6 ( .A1(ref_1_maj_50_n21), .A2(ref_1_maj_50_n20), 
        .ZN(ref_1_maj_50_n23) );
  XOR2_X1 ref_1_maj_50_U5 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_50_n24), 
        .Z(ref_1_maj_50_n26) );
  XOR2_X1 ref_1_maj_50_U4 ( .A(ref_1_refreshed_1_5_), .B(ref_1_maj_50_n25), 
        .Z(ref_1_maj_50_n27) );
  XOR2_X1 ref_1_maj_50_U3 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_50_n24) );
  XOR2_X1 ref_1_maj_50_U2 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n7), .Z(
        ref_1_maj_50_n25) );
  OR2_X1 ref_1_maj_51_U19 ( .A1(ref_1_maj_51_n27), .A2(ref_1_maj_51_n26), .ZN(
        ref_1_maj_51_n28) );
  NAND2_X1 ref_1_maj_51_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_51_n28), 
        .ZN(ref_1_maj_51_n29) );
  NAND2_X1 ref_1_maj_51_U17 ( .A1(ref_1_maj_51_n26), .A2(ref_1_maj_51_n27), 
        .ZN(ref_1_maj_51_n30) );
  NAND2_X1 ref_1_maj_51_U16 ( .A1(ref_1_maj_51_n30), .A2(ref_1_maj_51_n29), 
        .ZN(ref_1_maj_51_n31) );
  OR2_X1 ref_1_maj_51_U15 ( .A1(ref_1_maj_51_n23), .A2(ref_1_maj_51_n22), .ZN(
        ref_1_maj_51_n32) );
  NAND2_X1 ref_1_maj_51_U14 ( .A1(ref_1_maj_51_n22), .A2(ref_1_maj_51_n23), 
        .ZN(ref_1_maj_51_n34) );
  NAND2_X1 ref_1_maj_51_U13 ( .A1(ref_1_maj_51_n32), .A2(ref_1_maj_51_n31), 
        .ZN(ref_1_maj_51_n33) );
  NAND2_X1 ref_1_maj_51_U12 ( .A1(ref_1_maj_51_n34), .A2(ref_1_maj_51_n33), 
        .ZN(ref_1_maj_51_port_o) );
  NAND2_X1 ref_1_maj_51_U11 ( .A1(ref_1_refreshed_1_5_), .A2(ref_1_maj_51_n25), 
        .ZN(ref_1_maj_51_n18) );
  NAND2_X1 ref_1_maj_51_U10 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n7), .ZN(
        ref_1_maj_51_n19) );
  NAND2_X1 ref_1_maj_51_U9 ( .A1(ref_1_maj_51_n19), .A2(ref_1_maj_51_n18), 
        .ZN(ref_1_maj_51_n22) );
  NAND2_X1 ref_1_maj_51_U8 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_51_n24), 
        .ZN(ref_1_maj_51_n20) );
  NAND2_X1 ref_1_maj_51_U7 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_51_n21) );
  NAND2_X1 ref_1_maj_51_U6 ( .A1(ref_1_maj_51_n21), .A2(ref_1_maj_51_n20), 
        .ZN(ref_1_maj_51_n23) );
  XOR2_X1 ref_1_maj_51_U5 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_51_n24), 
        .Z(ref_1_maj_51_n26) );
  XOR2_X1 ref_1_maj_51_U4 ( .A(ref_1_refreshed_1_5_), .B(ref_1_maj_51_n25), 
        .Z(ref_1_maj_51_n27) );
  XOR2_X1 ref_1_maj_51_U3 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_51_n24) );
  XOR2_X1 ref_1_maj_51_U2 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n7), .Z(
        ref_1_maj_51_n25) );
  OR2_X1 ref_1_maj_52_U19 ( .A1(ref_1_maj_52_n27), .A2(ref_1_maj_52_n26), .ZN(
        ref_1_maj_52_n28) );
  NAND2_X1 ref_1_maj_52_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_52_n28), 
        .ZN(ref_1_maj_52_n29) );
  NAND2_X1 ref_1_maj_52_U17 ( .A1(ref_1_maj_52_n26), .A2(ref_1_maj_52_n27), 
        .ZN(ref_1_maj_52_n30) );
  NAND2_X1 ref_1_maj_52_U16 ( .A1(ref_1_maj_52_n30), .A2(ref_1_maj_52_n29), 
        .ZN(ref_1_maj_52_n31) );
  OR2_X1 ref_1_maj_52_U15 ( .A1(ref_1_maj_52_n23), .A2(ref_1_maj_52_n22), .ZN(
        ref_1_maj_52_n32) );
  NAND2_X1 ref_1_maj_52_U14 ( .A1(ref_1_maj_52_n22), .A2(ref_1_maj_52_n23), 
        .ZN(ref_1_maj_52_n34) );
  NAND2_X1 ref_1_maj_52_U13 ( .A1(ref_1_maj_52_n32), .A2(ref_1_maj_52_n31), 
        .ZN(ref_1_maj_52_n33) );
  NAND2_X1 ref_1_maj_52_U12 ( .A1(ref_1_maj_52_n34), .A2(ref_1_maj_52_n33), 
        .ZN(ref_1_maj_52_port_o) );
  NAND2_X1 ref_1_maj_52_U11 ( .A1(ref_1_refreshed_0_5_), .A2(ref_1_maj_52_n25), 
        .ZN(ref_1_maj_52_n18) );
  NAND2_X1 ref_1_maj_52_U10 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n15), .ZN(
        ref_1_maj_52_n19) );
  NAND2_X1 ref_1_maj_52_U9 ( .A1(ref_1_maj_52_n19), .A2(ref_1_maj_52_n18), 
        .ZN(ref_1_maj_52_n22) );
  NAND2_X1 ref_1_maj_52_U8 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_52_n24), 
        .ZN(ref_1_maj_52_n20) );
  NAND2_X1 ref_1_maj_52_U7 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n11), .ZN(
        ref_1_maj_52_n21) );
  NAND2_X1 ref_1_maj_52_U6 ( .A1(ref_1_maj_52_n21), .A2(ref_1_maj_52_n20), 
        .ZN(ref_1_maj_52_n23) );
  XOR2_X1 ref_1_maj_52_U5 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_52_n24), 
        .Z(ref_1_maj_52_n26) );
  XOR2_X1 ref_1_maj_52_U4 ( .A(ref_1_refreshed_0_5_), .B(ref_1_maj_52_n25), 
        .Z(ref_1_maj_52_n27) );
  XOR2_X1 ref_1_maj_52_U3 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n11), .Z(
        ref_1_maj_52_n24) );
  XOR2_X1 ref_1_maj_52_U2 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n15), .Z(
        ref_1_maj_52_n25) );
  OR2_X1 ref_1_maj_53_U19 ( .A1(ref_1_maj_53_n27), .A2(ref_1_maj_53_n26), .ZN(
        ref_1_maj_53_n28) );
  NAND2_X1 ref_1_maj_53_U18 ( .A1(ref_1_refreshed_0_6_), .A2(ref_1_maj_53_n28), 
        .ZN(ref_1_maj_53_n29) );
  NAND2_X1 ref_1_maj_53_U17 ( .A1(ref_1_maj_53_n26), .A2(ref_1_maj_53_n27), 
        .ZN(ref_1_maj_53_n30) );
  NAND2_X1 ref_1_maj_53_U16 ( .A1(ref_1_maj_53_n30), .A2(ref_1_maj_53_n29), 
        .ZN(ref_1_maj_53_n31) );
  OR2_X1 ref_1_maj_53_U15 ( .A1(ref_1_maj_53_n23), .A2(ref_1_maj_53_n22), .ZN(
        ref_1_maj_53_n32) );
  NAND2_X1 ref_1_maj_53_U14 ( .A1(ref_1_maj_53_n22), .A2(ref_1_maj_53_n23), 
        .ZN(ref_1_maj_53_n34) );
  NAND2_X1 ref_1_maj_53_U13 ( .A1(ref_1_maj_53_n32), .A2(ref_1_maj_53_n31), 
        .ZN(ref_1_maj_53_n33) );
  NAND2_X1 ref_1_maj_53_U12 ( .A1(ref_1_maj_53_n34), .A2(ref_1_maj_53_n33), 
        .ZN(ref_1_maj_53_port_o) );
  NAND2_X1 ref_1_maj_53_U11 ( .A1(ref_1_refreshed_0_5_), .A2(ref_1_maj_53_n25), 
        .ZN(ref_1_maj_53_n18) );
  NAND2_X1 ref_1_maj_53_U10 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n15), .ZN(
        ref_1_maj_53_n19) );
  NAND2_X1 ref_1_maj_53_U9 ( .A1(ref_1_maj_53_n19), .A2(ref_1_maj_53_n18), 
        .ZN(ref_1_maj_53_n22) );
  NAND2_X1 ref_1_maj_53_U8 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_53_n24), 
        .ZN(ref_1_maj_53_n20) );
  NAND2_X1 ref_1_maj_53_U7 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n11), .ZN(
        ref_1_maj_53_n21) );
  NAND2_X1 ref_1_maj_53_U6 ( .A1(ref_1_maj_53_n21), .A2(ref_1_maj_53_n20), 
        .ZN(ref_1_maj_53_n23) );
  XOR2_X1 ref_1_maj_53_U5 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_53_n24), 
        .Z(ref_1_maj_53_n26) );
  XOR2_X1 ref_1_maj_53_U4 ( .A(ref_1_refreshed_0_5_), .B(ref_1_maj_53_n25), 
        .Z(ref_1_maj_53_n27) );
  XOR2_X1 ref_1_maj_53_U3 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n11), .Z(
        ref_1_maj_53_n24) );
  XOR2_X1 ref_1_maj_53_U2 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n15), .Z(
        ref_1_maj_53_n25) );
  OR2_X1 ref_1_maj_54_U19 ( .A1(ref_1_maj_54_n27), .A2(ref_1_maj_54_n26), .ZN(
        ref_1_maj_54_n28) );
  NAND2_X1 ref_1_maj_54_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_54_n28), 
        .ZN(ref_1_maj_54_n29) );
  NAND2_X1 ref_1_maj_54_U17 ( .A1(ref_1_maj_54_n26), .A2(ref_1_maj_54_n27), 
        .ZN(ref_1_maj_54_n30) );
  NAND2_X1 ref_1_maj_54_U16 ( .A1(ref_1_maj_54_n30), .A2(ref_1_maj_54_n29), 
        .ZN(ref_1_maj_54_n31) );
  OR2_X1 ref_1_maj_54_U15 ( .A1(ref_1_maj_54_n23), .A2(ref_1_maj_54_n22), .ZN(
        ref_1_maj_54_n32) );
  NAND2_X1 ref_1_maj_54_U14 ( .A1(ref_1_maj_54_n22), .A2(ref_1_maj_54_n23), 
        .ZN(ref_1_maj_54_n34) );
  NAND2_X1 ref_1_maj_54_U13 ( .A1(ref_1_maj_54_n32), .A2(ref_1_maj_54_n31), 
        .ZN(ref_1_maj_54_n33) );
  NAND2_X1 ref_1_maj_54_U12 ( .A1(ref_1_maj_54_n34), .A2(ref_1_maj_54_n33), 
        .ZN(ref_1_maj_54_port_o) );
  NAND2_X1 ref_1_maj_54_U11 ( .A1(ref_1_refreshed_1_5_), .A2(ref_1_maj_54_n25), 
        .ZN(ref_1_maj_54_n18) );
  NAND2_X1 ref_1_maj_54_U10 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n7), .ZN(
        ref_1_maj_54_n19) );
  NAND2_X1 ref_1_maj_54_U9 ( .A1(ref_1_maj_54_n19), .A2(ref_1_maj_54_n18), 
        .ZN(ref_1_maj_54_n22) );
  NAND2_X1 ref_1_maj_54_U8 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_54_n24), 
        .ZN(ref_1_maj_54_n20) );
  NAND2_X1 ref_1_maj_54_U7 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_54_n21) );
  NAND2_X1 ref_1_maj_54_U6 ( .A1(ref_1_maj_54_n21), .A2(ref_1_maj_54_n20), 
        .ZN(ref_1_maj_54_n23) );
  XOR2_X1 ref_1_maj_54_U5 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_54_n24), 
        .Z(ref_1_maj_54_n26) );
  XOR2_X1 ref_1_maj_54_U4 ( .A(ref_1_refreshed_1_5_), .B(ref_1_maj_54_n25), 
        .Z(ref_1_maj_54_n27) );
  XOR2_X1 ref_1_maj_54_U3 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_54_n24) );
  XOR2_X1 ref_1_maj_54_U2 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n7), .Z(
        ref_1_maj_54_n25) );
  OR2_X1 ref_1_maj_55_U19 ( .A1(ref_1_maj_55_n27), .A2(ref_1_maj_55_n26), .ZN(
        ref_1_maj_55_n28) );
  NAND2_X1 ref_1_maj_55_U18 ( .A1(ref_1_refreshed_1_6_), .A2(ref_1_maj_55_n28), 
        .ZN(ref_1_maj_55_n29) );
  NAND2_X1 ref_1_maj_55_U17 ( .A1(ref_1_maj_55_n26), .A2(ref_1_maj_55_n27), 
        .ZN(ref_1_maj_55_n30) );
  NAND2_X1 ref_1_maj_55_U16 ( .A1(ref_1_maj_55_n30), .A2(ref_1_maj_55_n29), 
        .ZN(ref_1_maj_55_n31) );
  OR2_X1 ref_1_maj_55_U15 ( .A1(ref_1_maj_55_n23), .A2(ref_1_maj_55_n22), .ZN(
        ref_1_maj_55_n32) );
  NAND2_X1 ref_1_maj_55_U14 ( .A1(ref_1_maj_55_n22), .A2(ref_1_maj_55_n23), 
        .ZN(ref_1_maj_55_n34) );
  NAND2_X1 ref_1_maj_55_U13 ( .A1(ref_1_maj_55_n32), .A2(ref_1_maj_55_n31), 
        .ZN(ref_1_maj_55_n33) );
  NAND2_X1 ref_1_maj_55_U12 ( .A1(ref_1_maj_55_n34), .A2(ref_1_maj_55_n33), 
        .ZN(ref_1_maj_55_port_o) );
  NAND2_X1 ref_1_maj_55_U11 ( .A1(ref_1_refreshed_1_5_), .A2(ref_1_maj_55_n25), 
        .ZN(ref_1_maj_55_n18) );
  NAND2_X1 ref_1_maj_55_U10 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n7), .ZN(
        ref_1_maj_55_n19) );
  NAND2_X1 ref_1_maj_55_U9 ( .A1(ref_1_maj_55_n19), .A2(ref_1_maj_55_n18), 
        .ZN(ref_1_maj_55_n22) );
  NAND2_X1 ref_1_maj_55_U8 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_55_n24), 
        .ZN(ref_1_maj_55_n20) );
  NAND2_X1 ref_1_maj_55_U7 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_55_n21) );
  NAND2_X1 ref_1_maj_55_U6 ( .A1(ref_1_maj_55_n21), .A2(ref_1_maj_55_n20), 
        .ZN(ref_1_maj_55_n23) );
  XOR2_X1 ref_1_maj_55_U5 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_55_n24), 
        .Z(ref_1_maj_55_n26) );
  XOR2_X1 ref_1_maj_55_U4 ( .A(ref_1_refreshed_1_5_), .B(ref_1_maj_55_n25), 
        .Z(ref_1_maj_55_n27) );
  XOR2_X1 ref_1_maj_55_U3 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_55_n24) );
  XOR2_X1 ref_1_maj_55_U2 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n7), .Z(
        ref_1_maj_55_n25) );
endmodule

