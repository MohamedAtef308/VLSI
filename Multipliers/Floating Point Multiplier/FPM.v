module FPMult (
    input [31:0] a,
    input [31:0] b,
    output [31:0] result
);
    
    reg [23:0] mantissaA,mantissaB;
    reg [47:0] tempResult;
    reg [7:0] expA, expB;
    reg [8:0] tempExp;
    // reg [4:0] realShift;
    wire [4:0] shiftAmount;
    MSB MSBFP(tempResult[47:16], shiftAmount);

    always @(a,b) begin
        mantissaA = {1'b1,a[22:0]};
        mantissaB = {1'b1,b[22:0]};
        expA = a[30 : 23];
        expB = b[30 : 23];
        tempResult = 1'd0;

        tempExp = expA + expB - 8'b01111111;

        tempResult = mantissaA * mantissaB;

        // if (shiftAmount) begin
        //     tempResult = tempResult >> shiftAmount;
        //     tempExp = tempExp + shiftAmount;
        // end

    end
    
    assign result [31] = a[31] ^ b[31];
    assign result [30:23]  = tempExp[7:0];
    assign result [22:0] = tempResult[46:23];
endmodule 