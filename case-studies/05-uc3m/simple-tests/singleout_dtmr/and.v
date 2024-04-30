module Voter_0 ( port_voter_in_0, port_voter_in_1, port_voter_in_2, port_voter_out );
  input [0:0] port_voter_in_0;
  input [0:0] port_voter_in_1;
  input [0:0] port_voter_in_2;
  output [0:0] port_voter_out;

  wire wire_1;
  wire wire_2;
  wire wire_3;
  wire wire_4;

  NOR2_X1 U0 ( .A1(port_voter_in_0), .A2(port_voter_in_1), .ZN(wire_1) );
  NOR2_X1 U1 ( .A1(port_voter_in_1), .A2(port_voter_in_2), .ZN(wire_2) );
  NOR2_X1 U2 ( .A1(port_voter_in_2), .A2(port_voter_in_0), .ZN(wire_3) );

  OR2_X1 U3 ( .A1(wire_1), .A2(wire_2), .ZN(wire_4) );

  NOR2_X1 U4 ( .A1(wire_4), .A2(wire_3), .ZN(port_voter_out) );
endmodule

module Voter_1 ( port_voter_in_0, port_voter_in_1, port_voter_in_2, port_voter_out );
  input [0:0] port_voter_in_0;
  input [0:0] port_voter_in_1;
  input [0:0] port_voter_in_2;
  output [0:0] port_voter_out;

  wire wire_1;
  wire wire_2;
  wire wire_3;
  wire wire_4;

  NOR2_X1 U0 ( .A1(port_voter_in_0), .A2(port_voter_in_1), .ZN(wire_1) );
  NOR2_X1 U1 ( .A1(port_voter_in_1), .A2(port_voter_in_2), .ZN(wire_2) );
  NOR2_X1 U2 ( .A1(port_voter_in_2), .A2(port_voter_in_0), .ZN(wire_3) );

  OR2_X1 U3 ( .A1(wire_1), .A2(wire_2), .ZN(wire_4) );

  NOR2_X1 U4 ( .A1(wire_4), .A2(wire_3), .ZN(port_voter_out) );
endmodule

module Voter_2 ( port_voter_in_0, port_voter_in_1, port_voter_in_2, port_voter_out );
  input [0:0] port_voter_in_0;
  input [0:0] port_voter_in_1;
  input [0:0] port_voter_in_2;
  output [0:0] port_voter_out;

  wire wire_1;
  wire wire_2;
  wire wire_3;
  wire wire_4;

  NOR2_X1 U0 ( .A1(port_voter_in_0), .A2(port_voter_in_1), .ZN(wire_1) );
  NOR2_X1 U1 ( .A1(port_voter_in_1), .A2(port_voter_in_2), .ZN(wire_2) );
  NOR2_X1 U2 ( .A1(port_voter_in_2), .A2(port_voter_in_0), .ZN(wire_3) );

  OR2_X1 U3 ( .A1(wire_1), .A2(wire_2), .ZN(wire_4) );

  NOR2_X1 U4 ( .A1(wire_4), .A2(wire_3), .ZN(port_voter_out) );
endmodule

module Voter_3 ( port_voter_in_0, port_voter_in_1, port_voter_in_2, port_voter_out );
  input [0:0] port_voter_in_0;
  input [0:0] port_voter_in_1;
  input [0:0] port_voter_in_2;
  output [0:0] port_voter_out;

  wire wire_1;
  wire wire_2;
  wire wire_3;
  wire wire_4;

  NOR2_X1 U0 ( .A1(port_voter_in_0), .A2(port_voter_in_1), .ZN(wire_1) );
  NOR2_X1 U1 ( .A1(port_voter_in_1), .A2(port_voter_in_2), .ZN(wire_2) );
  NOR2_X1 U2 ( .A1(port_voter_in_2), .A2(port_voter_in_0), .ZN(wire_3) );

  OR2_X1 U3 ( .A1(wire_1), .A2(wire_2), .ZN(wire_4) );

  NOR2_X1 U4 ( .A1(wire_4), .A2(wire_3), .ZN(port_voter_out) );
endmodule

module SingleOut_DTMR_AND ( port_in_0, port_in_1, port_out, clk );
  input [0:0] port_in_0;
  input [0:0] port_in_1;
  output [0:0] port_out;
  input clk;

  wire [0:0] wire_reg_0;
  wire [0:0] wire_reg_1;
  wire [0:0] wire_reg_2;
  wire [0:0] wire_voter_0;
  wire [0:0] wire_voter_1;
  wire [0:0] wire_voter_2;
  wire [0:0] wire_out_0;
  wire [0:0] wire_out_1;
  wire [0:0] wire_out_2;

  AND2_X1 U0 ( .A1(port_in_0), .A2(port_in_1), .ZN(wire_reg_0) );
  AND2_X1 U1 ( .A1(port_in_0), .A2(port_in_1), .ZN(wire_reg_1) );
  AND2_X1 U2 ( .A1(port_in_0), .A2(port_in_1), .ZN(wire_reg_2) );

  DFF_X1 reg0 ( .D(wire_reg_0), .CK(clk), .Q(wire_voter_0), .QN() );
  DFF_X1 reg1 ( .D(wire_reg_1), .CK(clk), .Q(wire_voter_1), .QN() );
  DFF_X1 reg2 ( .D(wire_reg_2), .CK(clk), .Q(wire_voter_2), .QN() );

  Voter_0 vot0 ( .port_voter_in_0(wire_voter_0), .port_voter_in_1(wire_voter_1), .port_voter_in_2(wire_voter_2), .port_voter_out(wire_out_0) );
  Voter_1 vot1 ( .port_voter_in_0(wire_voter_0), .port_voter_in_1(wire_voter_1), .port_voter_in_2(wire_voter_2), .port_voter_out(wire_out_1) );
  Voter_2 vot2 ( .port_voter_in_0(wire_voter_0), .port_voter_in_1(wire_voter_1), .port_voter_in_2(wire_voter_2), .port_voter_out(wire_out_2) );

  Voter_3 vot3 ( .port_voter_in_0(wire_out_0), .port_voter_in_1(wire_out_1), .port_voter_in_2(wire_out_2), .port_voter_out(port_out) );
endmodule
