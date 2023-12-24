module FPMSeq(
    A,
    B,
    clk,
    reset,
    result
);
input clk, reset;
input [31:0] A,B;
output [31:0]  result;
wire [31:0] AReg;
wire [31:0] BReg;
wire [31:0] resultReg;
regN #(32) regA (
    clk,
    reset,
    A,
    AReg
);
regN #(32) regB (
    clk,
    reset,
    B,
    BReg
);
FPM multiplier(
    AReg,
    BReg,
    resultReg
);
regN #(32) outA (
    clk,
    reset,
    resultReg[31:0],
    result[31:0]
);

endmodule