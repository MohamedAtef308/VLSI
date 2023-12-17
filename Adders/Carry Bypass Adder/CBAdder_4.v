module CBAdder_4(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire PCout;
    wire [3:0] carries;

    PCalc Pcalculator(a, b, PCout);

    FA bit0(a[0], b[0], cin, sum[0], carries[0]);
    FA bit1(a[1], b[1], carries[0], sum[1], carries[1]);
    FA bit2(a[2], b[2], carries[1], sum[2], carries[2]);
    FA bit3(a[3], b[3], carries[2], sum[3], carries[3]);

    MUX_2 CoutMux(carries[3], cin, PCout, cout);

endmodule