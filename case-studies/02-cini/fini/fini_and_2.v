
module FINIand ( port_a, port_b, port_c );
  input [1:0] port_a;
  input [1:0] port_b;
  output [1:0] port_c;


  AND2_X1 U3 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(port_c[1]) );
  AND2_X1 U4 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(port_c[0]) );
endmodule

