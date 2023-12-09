module PGCalc(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] sum
);

    wire [3:0] g;
    wire [3:0] p;
    wire [3:0] c;
    assign g = a & b;
    assign p = a ^ b;

    assign c[0] = cin;
    assign c[1] = (g[0] | (p[0] & cin));
    assign c[2] = (g[1] | (p[1] & (g[0] | (p[0] & cin))));
    assign c[3] = (g[2] | (p[2] & (g[1] | (p[1] & (g[0] | (p[0] & cin))))));
    assign cout = (g[3] | (p[3] & (g[2] | (p[2] & (g[1] | (p[1] & (g[0] | (p[0] & cin))))))));
    assign sum = a ^ b ^ c;
    // a ^ b may be replace by p
endmodule