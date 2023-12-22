module BWAdder (
  input [63:0] a,
  input [63:0] b,
  input [63:0] c,
  output wire [63:0] result,
  output wire [63:0] carry
);
  assign result = a ^ b ^ c;
  assign carry = ((a & b) | (c & (a ^ b))) << 1;
endmodule