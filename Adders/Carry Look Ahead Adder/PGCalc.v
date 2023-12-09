module PGCalc(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] cout
);

    wire [31:0] g;
    wire [31:0] p;
    assign g = a & b;
    assign p = a ^ b;
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : carry_chain
            assign cout[i] = (g[i] | (p[i] & (i == 0 ? cin : cout[i-1])));
        end
    endgenerate
endmodule