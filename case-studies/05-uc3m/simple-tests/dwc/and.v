module Detection ( port_dwc_0, port_dwc_1, port_dwc_error );
  input [0:0] port_dwc_0;
  input [0:0] port_dwc_1;
  output [0:0] port_dwc_error;

  XNOR2_X1 U0 ( .A(port_dwc_0), .B(port_dwc_1), .ZN(port_dwc_error) );
endmodule

module DwC_AND ( port_in, port_out, port_error, clk );
  input [1:0] port_in;
  output [0:0] port_out;
  output [0:0] port_error;
  input clk;

  wire [0:0] wire_and_0;
  wire [0:0] wire_and_1;
  wire [0:0] wire_dwc;

  AND2_X1 U0 ( .A1(port_in[0]), .A2(port_in[1]), .ZN(wire_and_0) );
  AND2_X1 U1 ( .A1(port_in[0]), .A2(port_in[1]), .ZN(wire_and_1) );

  DFF_X1 reg0 ( .D(wire_and_0), .CK(clk), .Q(port_out), .QN() );
  DFF_X1 reg1 ( .D(wire_and_1), .CK(clk), .Q(wire_dwc), .QN() );

  Detection det0 ( .port_dwc_0(port_out), .port_dwc_1(wire_dwc), .port_dwc_error(port_error) );
endmodule
