`timescale 1ns / 100ps
module testBench();

    reg [7:0]a, b;
    wire [7:0] sum;
    reg cin;
    wire cout;
    reg clk = 0;

    Req1 testing(a, b, cin, sum, cout);
    
    initial begin

    a = 8'h05;
    b = 8'h06;
    cin = 0;
    #10;

    if(sum !== 8'h0b || cout !== 1'b0)
        $display("a = 5, b = 6 and sum != b");

    a = 8'h0A;
    b = 8'h02;
    cin = 0;
    #10;

    if(sum !== 8'h0C || cout !== 1'b0)
        $display("a = A, b = 2 and sum != C");

    a = 8'hFE;
    b = 8'h01;
    cin = 1;
    #10;

    if(sum !== 8'h00 || cout !== 1'b1)
        $display("a = FE, b = 1 and sum != 00");

    end

endmodule