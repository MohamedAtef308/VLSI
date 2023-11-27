module PGCalc(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] cout,
    output[3:0] Pout
);

    wire [3:0] g;
    assign g = a & b;
    wire [3:0] p;
    assign p = a ^ b;
    assign Pout = a^b;

    assign cout[0] = (g[0] | (p[0] & cin));
    assign cout[1] = (g[1] | (p[1] & (g[0] | (p[0] & cin))));

    assign cout[2] = (g[2] | (p[2] & (g[1] | (p[1] & (g[0] | (p[0] & cin))))));
    assign cout[3] = (g[3] | (p[3] & (g[2] | (p[2] & (g[1] | (p[1] & (g[0] | (p[0] & cin))))))));

endmodule