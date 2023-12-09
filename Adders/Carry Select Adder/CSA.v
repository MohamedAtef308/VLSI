module CSA(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout,
    output overflow
    );

    wire [3:0] CoutSelector;
    wire [6:0] Sum7_Carry0;
    wire [6:0] Sum7_Carry1;
    wire [8:0] Sum9_Carry0;
    wire [8:0] Sum9_Carry1;
    wire [10:0] Sum11_Carry0;
    wire [10:0] Sum11_Carry1;
    wire [3:0]Cout_Carry0;
    wire [3:0]Cout_Carry1;

    FiveBitAdder SumFirst5(a[4:0],b[4:0],cin,sum[4:0],CoutSelector[0]);

    SevenBitAdder Adder7_Carry0(a[11:5],b[11:5],1'b0,Sum7_Carry0,Cout_Carry0[0]);
    SevenBitAdder Adder7_Carry1(a[11:5],b[11:5],1'b1,Sum7_Carry1,Cout_Carry1[0]);
    assign sum[11:5] = (CoutSelector[0]==0)? Sum7_Carry0 : Sum7_Carry1;
    MUX_2 CarryOutMux7(Cout_Carry0[0], Cout_Carry1[0], CoutSelector[0], CoutSelector[1]);

    NineBitAdder Adder9_Carry0(a[20:12],b[20:12],1'b0,Sum9_Carry0,Cout_Carry0[1]);
    NineBitAdder Adder9_Carry1(a[20:12],b[20:12],1'b1,Sum9_Carry1,Cout_Carry1[1]);
    assign sum[20:12] = (CoutSelector[1]==0)? Sum9_Carry0 : Sum9_Carry1;
    MUX_2 CarryOutMux9(Cout_Carry0[1], Cout_Carry1[1], CoutSelector[1], CoutSelector[2]);

    ElevenBitAdder Adder11_Carry0(a[31:21],b[31:21],1'b0,Sum11_Carry0,Cout_Carry0[2]);
    ElevenBitAdder Adder11_Carry1(a[31:21],b[31:21],1'b1,Sum11_Carry1,Cout_Carry1[2]);
    assign sum[31:21] = (CoutSelector[2]==0)? Sum11_Carry0 : Sum11_Carry1;
    
    MUX_2 CarryOutMux11(Cout_Carry0[2], Cout_Carry1[2], CoutSelector[2], CoutSelector[3]);
    assign cout = CoutSelector[3];
    assign overflow =(~(a[31] ^ b[31]) & (a[31] ^ sum[31]));


endmodule