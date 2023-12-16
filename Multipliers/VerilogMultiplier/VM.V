module Multiplier (
    input [31:0] a,
    input [31:0] b,
    output wire [63:0] result
);
    wire [31:0] tempA,tempB;
    wire [63:0] temp;

    wire tempsign ;

    assign tempsign =  a[31] ^ b[31];
    assign tempA = a[31]?  ~a +1'b1 : a;
    assign tempB = b[31]? ~b +1'b1 : b;
    assign temp = tempA * tempB;
    assign result =tempsign? ~temp +1'b1 : temp;
endmodule
