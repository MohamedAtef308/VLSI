module CLAAdder(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output wire [31:0] sum,
    output wire overflow
    );

    wire [7:0] PGcout;

    PGCalc PGcalculator0(a[3:0], b[3:0], cin, PGcout[0], sum[3:0]);
    PGCalc PGcalculator1(a[7:4], b[7:4], PGcout[0], PGcout[1], sum[7:4]);
    PGCalc PGcalculator2(a[11:8], b[11:8], PGcout[1], PGcout[2], sum[11:8]);
    PGCalc PGcalculator3(a[15:12], b[15:12], PGcout[2], PGcout[3], sum[15:12]);

    PGCalc PGcalculator4(a[19:16], b[19:16], PGcout[3], PGcout[4], sum[19:16]);
    PGCalc PGcalculator5(a[23:20], b[23:20], PGcout[4], PGcout[5], sum[23:20]);
    PGCalc PGcalculator6(a[27:24], b[27:24], PGcout[5], PGcout[6], sum[27:24]);
    PGCalc PGcalculator7(a[31:28], b[31:28], PGcout[6], PGcout[7], sum[31:28]);
    
    assign overflow = ((~(a[31] ^ b[31])) & (sum[31] ^ a[31]));
endmodule