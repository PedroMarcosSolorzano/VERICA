module Simple_AND ( port_in_0, port_in_1, port_out );
  input [0:0] port_in_0;
  input [0:0] port_in_1;
  output [0:0] port_out;

  AND2_X1 U0 ( .A1(port_in_0), .A2(port_in_1), .ZN(port_out) );
endmodule
