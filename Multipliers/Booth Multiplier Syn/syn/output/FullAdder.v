
module FullAdder ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n4, n5;

  XOR2_X1 U5 ( .A(cin), .B(n4), .Z(sum) );
  INV_X1 U6 ( .A(n5), .ZN(cout) );
  AOI22_X1 U7 ( .A1(b), .A2(a), .B1(n4), .B2(cin), .ZN(n5) );
  XOR2_X1 U8 ( .A(a), .B(b), .Z(n4) );
endmodule

