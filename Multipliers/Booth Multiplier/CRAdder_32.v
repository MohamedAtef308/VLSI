module CRAdder_32 (
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout,
    output overflow
);
    
    wire [31:0] passCout;

    FullAdder bit0(a[0], b[0], cin, sum[0], passCout[0]);
    genvar i;
    generate
        for (i = 1; i < 31; i = i + 1) begin : bit_gen
            FullAdder bit(a[i], b[i], passCout[i-1], sum[i], passCout[i]);
        end
    endgenerate

    FullAdder bit63(a[31], b[31], passCout[30], sum[31], cout);

    assign overflow = ((~(a[31] ^ b[31])) & (sum[31] ^ a[31]));
endmodule