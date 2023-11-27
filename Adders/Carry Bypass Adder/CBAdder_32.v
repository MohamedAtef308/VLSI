module CBAdder_16(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout
);

    wire [2:0] carries;

    CBAdder_4 bits4_0(a[3:0], b[3:0], cin, sum[3:0], carries[0]);
    CBAdder_4 bits4_1(a[7:4], b[7:4], carries[0], sum[7:4], carries[1]);
    CBAdder_4 bits4_2(a[11:8], b[11:8], carries[1], sum[11:8], carries[2]);
    CBAdder_4 bits4_3(a[15:12], b[15:12], carries[2], sum[15:12], carries[3]);

    CBAdder_4 bits4_3(a[19:16], b[19:16], carries[3], sum[19:16], carries[4]);
    CBAdder_4 bits4_3(a[23:20], b[23:20], carries[4], sum[23:20], carries[5]);
    CBAdder_4 bits4_3(a[27:24], b[27:24], carries[5], sum[27:24], carries[6]);
    CBAdder_4 bits4_3(a[31:28], b[31:28], carries[6], sum[31:28], cout);

endmodule