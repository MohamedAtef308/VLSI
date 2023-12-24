module VM (
    input [31:0] a,
    input [31:0] b,
    output wire [63:0] result
);
    wire [31:0] tempA,tempB;
    wire [31:0] negvA,negvB;
    wire [63:0] temp,negvTemp;

    wire tempsign ;
    CRAdder CRAddA(~a, 0, 1'b1, negvA);
    CRAdder CRAddB(~b, 0, 1'b1, negvB);

    assign tempsign =  a[31] ^ b[31];
    assign tempA = a[31]?  negvA : a;
    assign tempB = b[31]? negvB : b;
    assign temp = tempA * tempB;
    CRAdder_64 CRAddResult(~temp, 64'b0, 1'b1, negvTemp);
    assign result =tempsign? negvTemp: temp;
endmodule
