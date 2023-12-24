module SAMSeq(
    A,
    B,
    clk,
    reset,
    result
);
input clk, reset;
input [31:0] A,B;
output [63:0]  result;
wire [31:0] AReg;
wire [31:0] BReg;
wire [63:0] resultReg;
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
SAM multiplier(
    AReg,
    BReg,
    resultReg
);
regN #(64) outA (
    clk,
    reset,
    resultReg[63:0],
    result[63:0]
);

endmodule