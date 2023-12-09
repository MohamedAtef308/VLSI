module CLAAdder(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output wire [31:0] sum,
    output wire overflow
    );

    wire [31:0] PGcout;
    wire [31:0] open;
    PGCalc PGcalculator(a, b, cin, PGcout);
    FA bit0(a[0], b[0], cin, sum[0], open[0]);
    FA bit1(a[1], b[1], PGcout[0], sum[1], open[1]);
    FA bit2(a[2], b[2], PGcout[1], sum[2], open[2]);
    FA bit3(a[3], b[3], PGcout[2], sum[3], open[3]);
    FA bit4(a[4], b[4], PGcout[3], sum[4], open[4]);

    FA bit5(a[5], b[5], PGcout[4], sum[5], open[5]);
    FA bit6(a[6], b[6], PGcout[5], sum[6], open[6]);
    FA bit7(a[7], b[7], PGcout[6], sum[7], open[7]);
    FA bit8(a[8], b[8], PGcout[7], sum[8], open[8]);

    FA bit9(a[9], b[9], PGcout[8], sum[9], open[9]);
    FA bit10(a[10], b[10], PGcout[9], sum[10], open[10]);
    FA bit11(a[11], b[11], PGcout[10], sum[11], open[11]);
    FA bit12(a[12], b[12], PGcout[11], sum[12], open[12]);

    FA bit13(a[13], b[13], PGcout[12], sum[13], open[13]);
    FA bit14(a[14], b[14], PGcout[13], sum[14], open[14]);
    FA bit15(a[15], b[15], PGcout[14], sum[15], open[15]);
    FA bit16(a[16], b[16], PGcout[15], sum[16], open[16]);

    FA bit17(a[17], b[17], PGcout[16], sum[17], open[17]);
    FA bit18(a[18], b[18], PGcout[17], sum[18], open[18]);
    FA bit19(a[19], b[19], PGcout[18], sum[19], open[19]);
    FA bit20(a[20], b[20], PGcout[19], sum[20], open[20]);

    FA bit21(a[21], b[21], PGcout[20], sum[21], open[21]);
    FA bit22(a[22], b[22], PGcout[21], sum[22], open[22]);
    FA bit23(a[23], b[23], PGcout[22], sum[23], open[23]);
    FA bit24(a[24], b[24], PGcout[23], sum[24], open[24]);

    FA bit25(a[25], b[25], PGcout[24], sum[25], open[25]);
    FA bit26(a[26], b[26], PGcout[25], sum[26], open[26]);
    FA bit27(a[27], b[27], PGcout[26], sum[27], open[27]);
    FA bit28(a[28], b[28], PGcout[27], sum[28], open[28]);
    
    FA bit29(a[29], b[29], PGcout[28], sum[29], open[29]);
    FA bit30(a[30], b[30], PGcout[29], sum[30], open[30]);
    FA bit31(a[31], b[31], PGcout[30], sum[31], open[31]);
    assign overflow = ((~(a[31] ^ b[31])) & (sum[31] ^ a[31]));
endmodule