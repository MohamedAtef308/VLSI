module CRAdder_64 (
    input [63:0] a,
    input [63:0] b,
    input cin,
    output [63:0] sum,
    output cout,
    output overflow
);
    
    wire [63:0] passCout;

    FullAdder bit0(a[0], b[0], cin, sum[0], passCout[0]);
    genvar i;
    generate
        for (i = 1; i < 63; i = i + 1) begin : bit_gen
            FullAdder bit(a[i], b[i], passCout[i-1], sum[i], passCout[i]);
        end
    endgenerate

    FullAdder bit63(a[63], b[63], passCout[62], sum[63], cout);

    assign overflow = ((~(a[63] ^ b[63])) & (sum[63] ^ a[63]));
endmodule