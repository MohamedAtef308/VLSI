module FPMult (
    input [31:0] a,
    input [31:0] b,
    output [31:0] result
);
    
    reg [23:0] mantissaA,mantissaB;
    reg [47:0] tempResult;
    reg [22:0] finalMantissa;
    reg [7:0] expA, expB;
    reg [8:0] tempExp;
    reg tempSign;

    always @(a,b) begin
        mantissaA = {1'b1,a[22:0]};
        mantissaB = {1'b1,b[22:0]};
        expA = a[30 : 23];
        expB = b[30 : 23];
        tempResult = 1'd0;
        tempSign = a[31] ^ b[31];

        if (a[30:0] == 31'd0 || b[30:0] == 31'd0)begin
            finalMantissa = 23'd0;
            tempExp = 9'd0;
            tempSign = 1'b0;
        end
        else begin
        tempResult = mantissaA * mantissaB;

        tempExp = expA + expB - 8'b01111111 + tempResult[47];

        finalMantissa = (tempResult[47] == 1'b1)? tempResult[46: 24]: tempResult[45:23];
        end
    end
    
    assign result [31] = tempSign;
    assign result [30:23]  = tempExp[7:0];
    assign result [22:0] = finalMantissa;
endmodule 