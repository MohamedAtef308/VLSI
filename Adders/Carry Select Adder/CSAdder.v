module Req1(
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] sum,
    output cout
    );

    wire CoutSelector;
    wire [3:0] SumCarry0;
    wire [3:0] SumCarry1;
    wire CoutCarry0;
    wire CoutCarry1;

    FA SumFirst4(a[3:0],b[3:0],cin,sum[3:0],CoutSelector);

    FA AdderCarry0(a[7:4],b[7:4],1'b0,SumCarry0,CoutCarry0);
    FA AdderCarry1(a[7:4],b[7:4],1'b1,SumCarry1,CoutCarry1);

    MUX_4 SumMux0(SumCarry0, SumCarry1, CoutSelector, sum[7:4]);
    MUX_2 CarryOutMux(CoutCarry0, CoutCarry1, CoutSelector, cout);

endmodule