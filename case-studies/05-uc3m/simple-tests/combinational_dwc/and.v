module Detection ( port_dwc_0, port_dwc_1, port_dwc_error );
  input [0:0] port_dwc_0;
  input [0:0] port_dwc_1;
  output [0:0] port_dwc_error;

  XOR2_X1 U0 ( .A(port_dwc_0), .B(port_dwc_1), .Z(port_dwc_error) );
endmodule

module Combinational_DwC_AND ( port_in_0, port_in_1, port_out, port_error );
  input [0:0] port_in_0;
  input [0:0] port_in_1;

  output [0:0] port_out;
  output [0:0] port_error;

  wire [0:0] wire_dwc;

  AND2_X1 U0 ( .A1(port_in_0), .A2(port_in_1), .ZN(port_out) );
  AND2_X1 U1 ( .A1(port_in_0), .A2(port_in_1), .ZN(wire_dwc) );

  Detection det0 ( .port_dwc_0(port_out), .port_dwc_1(wire_dwc), .port_dwc_error(port_error) );
endmodule
