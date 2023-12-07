module Adder(
    input wire [3:0] a, 
    input wire [3:0] b,
    output reg [3:0] sum,
    output reg overflowPositive, overflowNegative
);
    wire [4:0] extendedA, extendedB, extendedSum;
    assign extendedA = {a[3], a};
    assign extendedB = {b[3], b};
    assign extendedSum = extendedA + extendedB;
    always @(*) begin
        sum = extendedSum[3:0];
        if(extendedSum[4:3] == 2'b10) begin
            overflowNegative = 1'b1;
            overflowPositive = 1'b0;
        end 
        else if (extendedSum[4:3] == 2'b11 || extendedSum[4:3] == 2'b00) begin
            overflowNegative = 1'b0;
            overflowPositive = 1'b0;
        end
        else begin 
            overflowNegative = 1'b0;
            overflowPositive = 1'b1;
        end
    end
endmodule