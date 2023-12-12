module CRAdder (
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout,
    output overflow
);
    
    wire [31:0] passCout;

    FullAdder bit0(a[0], b[0], cin, sum[0], passCout[0]);
    FullAdder bit1(a[1], b[1], passCout[0], sum[1], passCout[1]);
    FullAdder bit2(a[2], b[2], passCout[1], sum[2], passCout[2]);
    FullAdder bit3(a[3], b[3], passCout[2], sum[3], passCout[3]);


    FullAdder bit4(a[4], b[4], passCout[3], sum[4], passCout[4]);
    FullAdder bit5(a[5], b[5], passCout[4], sum[5], passCout[5]);
    FullAdder bit6(a[6], b[6], passCout[5], sum[6], passCout[6]);
    FullAdder bit7(a[7], b[7], passCout[6], sum[7], passCout[7]);
    
    
    FullAdder bit8(a[8], b[8], passCout[7], sum[8], passCout[8]);
    FullAdder bit9(a[9], b[9], passCout[8], sum[9], passCout[9]);
    FullAdder bit10(a[10], b[10], passCout[9], sum[10], passCout[10]);
    FullAdder bit11(a[11], b[11], passCout[10], sum[11], passCout[11]);

    
    FullAdder bit12(a[12], b[12], passCout[11], sum[12], passCout[12]);
    FullAdder bit13(a[13], b[13], passCout[12], sum[13], passCout[13]);
    FullAdder bit14(a[14], b[14], passCout[13], sum[14], passCout[14]);
    FullAdder bit15(a[15], b[15], passCout[14], sum[15], passCout[15]);
    
    
    FullAdder bit16(a[16], b[16], passCout[15], sum[16], passCout[16]);
    FullAdder bit17(a[17], b[17], passCout[16], sum[17], passCout[17]);
    FullAdder bit18(a[18], b[18], passCout[17], sum[18], passCout[18]);
    FullAdder bit19(a[19], b[19], passCout[18], sum[19], passCout[19]);
    
    
    FullAdder bit20(a[20], b[20], passCout[19], sum[20], passCout[20]);
    FullAdder bit21(a[21], b[21], passCout[20], sum[21], passCout[21]);
    FullAdder bit22(a[22], b[22], passCout[21], sum[22], passCout[22]);
    FullAdder bit23(a[23], b[23], passCout[22], sum[23], passCout[23]);
    
    
    FullAdder bit24(a[24], b[24], passCout[23], sum[24], passCout[24]);
    FullAdder bit25(a[25], b[25], passCout[24], sum[25], passCout[25]);
    FullAdder bit26(a[26], b[26], passCout[25], sum[26], passCout[26]);
    FullAdder bit27(a[27], b[27], passCout[26], sum[27], passCout[27]);
    
    
    FullAdder bit28(a[28], b[28], passCout[27], sum[28], passCout[28]);
    FullAdder bit29(a[29], b[29], passCout[28], sum[29], passCout[29]);
    FullAdder bit30(a[30], b[30], passCout[29], sum[30], passCout[30]);
    FullAdder bit31(a[31], b[31], passCout[30], sum[31], cout);

    assign overflow = ((~(a[31] ^ b[31])) & (sum[31] ^ a[31]));

endmodule