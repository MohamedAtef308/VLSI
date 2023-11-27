`timescale 1ns / 100ps
module testBench();

    reg [3:0]a, b;
    wire [3:0] sum;
    reg cin;
    wire cout;
    reg clk =0;

    Req2 testing(a, b, cin, sum, cout);
    
    initial begin

    a = 4'h5;
    b = 4'h6;
    cin = 0;
    #10;

    if(sum !== 4'hb || cout !== 1'b0)
        $display("a = 5, b = 6 and sum != b");

    a = 4'hA;
    b = 4'h2;
    cin = 0;
    #10;

    if(sum !== 4'hC || cout !== 1'b0)
        $display("a = A, b = 2 and sum != C");

    a = 4'hE;
    b = 4'h1;
    cin = 1;
    #10;

    if(sum !== 4'h0 || cout !== 1'b1)
        $display("a = E, b = 1 and sum != 00");
end

    endmodule