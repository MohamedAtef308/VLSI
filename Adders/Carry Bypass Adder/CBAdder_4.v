module CBAdder_4(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire [3:0] PGCout;
    wire [3:0] Sel; 

    PGCalc PGcalculator(a, b, cin, PGCout, Sel);

    FA bit0(a[0], b[0], cin, sum[0]);
    FA bit1(a[1], b[1], PGCout[0], sum[1]);
    FA bit2(a[2], b[2], PGCout[1], sum[2]);
    FA bit3(a[3], b[3], PGCout[2], sum[3]);

    MUX_2 CoutMux(PGCout[3], cin, (Sel[0] & Sel[1] & Sel[2] & Sel[3]), cout);


endmodule