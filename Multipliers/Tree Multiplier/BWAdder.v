module BWAdder (
  input [63:0] a,
  input [63:0] b,
  input [63:0] c,
  output wire [63:0] result,
  output wire [63:0] carry
);
  assign result[63] = a[63] ^ b[63] ^ c[63];
  assign carry[0] = 1'b0;
  genvar i;
  generate
    for (i = 0; i < 63; i = i + 1) begin: bitwiseAdd
      assign result[i] = a[i] ^ b[i] ^ c[i];
      assign carry[i + 1] = (a[i] & b[i]) | (c[i] & (a[i] ^ b[i]));
    end
  endgenerate
endmodule