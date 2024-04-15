module Voter ( port_voter_in_0, port_voter_in_1, port_voter_in_2, port_voter_out );
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

module LTMR_AND ( port_in, port_out, clk );
  input [1:0] port_in;
  output [0:0] port_out;
  input clk;

  wire [0:0] wire_reg;
  wire [0:0] wire_voter_0;
  wire [0:0] wire_voter_1;
  wire [0:0] wire_voter_2;

  AND2_X1 U0 ( .A1(port_in[0]), .A2(port_in[1]), .ZN(wire_reg) );

  DFF_X1 reg0 ( .D(wire_reg), .CK(clk), .Q(wire_voter_0), .QN() );
  DFF_X1 reg1 ( .D(wire_reg), .CK(clk), .Q(wire_voter_1), .QN() );
  DFF_X1 reg0 ( .D(wire_reg), .CK(clk), .Q(wire_voter_2), .QN() );

  Voter vot0 ( .port_voter_in_0(wire_voter_0), .port_voter_in_1(wire_voter_1), .port_voter_in_2(wire_voter_2), .port_voter_out(port_out) );
endmodule
