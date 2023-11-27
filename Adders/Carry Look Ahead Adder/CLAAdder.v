module Req2(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );

    wire [3:0] PGcout;
    wire [3:0] open;

    PGCalc PGcalculator(a, b, cin, PGcout);

    FA bit0(a[0], b[0], cin, sum[0], open[0]);
    FA bit1(a[1], b[1], PGcout[0], sum[1], open[1]);
    FA bit2(a[2], b[2], PGcout[1], sum[2], open[2]);
    FA bit3(a[3], b[3], PGcout[2], sum[3], open[3]);

    assign cout = PGcout[3];


endmodule