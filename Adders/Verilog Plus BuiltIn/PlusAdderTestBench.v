`timescale 1ns/1ns
module PlusAdderTestBench;

    reg [31:0] a;
    reg [31:0] b;
    reg cin;
    wire [31:0] sum;
    wire overflow;

    // Instantiate the CSA module
    Adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .overflow(overflow)
    );

    // Clock generation
    reg clk = 0;
    always #5 clk = ~clk;

initial begin
    // Test case 1
    a = 32'h7FFFFFFF;
    b = 32'h00000001;
    cin = 0;

    #10;

    $display("Test Case 1 overflow +:");
    $display("a = %h, b = %h, cin = %b", a, b, cin);
    $display("sum = %h, overflow = %b", sum,overflow);
    $display("=====================");

    // Test case 2
    a = 32'h80000000; // -2^31, a signed negative number
    b = -1; // 1
    cin = 0;

    #10;

    $display("Test Case 2 overflow -:");
    $display("a = %h, b = %h, cin = %b", a, b, cin);
    $display("sum = %h, overflow = %b", sum, overflow);
    $display("=====================");

    // Test case 3
    a = -4; // 2^31 - 1, the maximum signed positive number
    b = 5; // 1
    cin = 0;

    #10;

    $display("Test Case 3 positive + negative:");
    $display("a = %h, b = %h, cin = %b", a, b, cin);
    $display("sum = %h", sum);
    $display("=====================");
    // Test case 4
    a = 10; // 2^31 - 1, the maximum signed positive number
    b = 10; // 1
    cin = 0;

    #10;

    $display("Test Case 4 positive + positive :");
    $display("a = %h, b = %h, cin = %b", a, b, cin);
    $display("sum = %h, overflow = %b", sum,overflow);
    $display("=====================");
    // Test case 5
    a = -10; // 2^31 - 1, the maximum signed positive number
    b = -20; // 1
    cin = 0;

    #10;

    $display("Test Case 5 negative + negative :");
    $display("a = %h, b = %h, cin = %b", a, b, cin);
    $display("sum = %h, overflow = %b", sum, overflow);
    $display("=====================");
    // Test case 6
    a = 165; // 2^31 - 1, the maximum signed positive number
    b = 1000; // 1
    cin = 0;

    #10;

    $display("Test Case 6 :");
    $display("a = %h, b = %h, cin = %b", a, b, cin);
    $display("sum = %h, overflow = %b", sum, overflow);
    $display("=====================");
    // Test case 7
    a = -500; // 2^31 - 1, the maximum signed positive number
    b = 2000; // 1
    cin = 0;

    #10;

    $display("Test Case 7:");
    $display("a = %h, b = %h, cin = %b", a, b, cin);
    $display("sum = %h, overflow = %b", sum, overflow);
    $display("=====================");
    // Test case 8
    a = -999; // 2^31 - 1, the maximum signed positive number
    b = 999; // 1
    cin = 0;

    #10;

    $display("Test Case 8:");
    $display("a = %h, b = %h, cin = %b", a, b, cin);
    $display("sum = %h, overflow = %b", sum, overflow);
    $display("=====================");

    // Finish simulation
    $stop;
end

// ...

endmodule