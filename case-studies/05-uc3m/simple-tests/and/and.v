
module simple_AND ( port_in, port_out);
  input [1:0] port_in;
  output [0:0] port_out;

  AND2_X1 U1 ( .A1(port_in[0]), .A2(port_in[1]), .ZN(port_out[0]) );
endmodule
