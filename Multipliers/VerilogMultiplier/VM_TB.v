`timescale 1ns/1ns
module VM_TB;

    reg [31:0] a;
    reg [31:0] b;
    wire [63:0] result;

    // Instantiate the CSA module
    Multiplier uut (
        .a(a),
        .b(b),
        .result(result)
    );

    // Clock generation
    reg clk = 0;
    always #5 clk = ~clk;

initial begin
    // Test case 1
    a = 50;
    b = -40;

    #10;

    $display("Test Case 1 overflow +:");
    $display("a = %h, b = %h", a, b);
    $display("result = %h", result);
    $display("=====================");

    // Test case 2
    a = 90; // -2^31, a signed negative number
    b = 70; // 1

    #10;

    $display("Test Case 2 overflow -:");
    $display("a = %h, b = %h", a, b);
    $display("result = %h", result);
    $display("=====================");

    // Test case 3
    a = -80; // 2^31 - 1, the maximum signed positive number
    b = -65; // 1

    #10;

    $display("Test Case 3 positive + negative:");
    $display("a = %h, b = %h", a, b);
    $display("result = %h", result);
    $display("=====================");
    // Test case 4
    a = -10; // 2^31 - 1, the maximum signed positive number
    b = 325; // 1

    #10;

    $display("Test Case 4 positive + positive :");
    $display("a = %h, b = %h", a, b);
    $display("result = %h", result);
    $display("=====================");
    // Test case 5
    a = 98756; // 2^31 - 1, the maximum signed positive number
    b = 0; // 1

    #10;

    $display("Test Case 5 negative + negative :");
    $display("a = %h, b = %h", a, b);
    $display("result = %h", result);
    $display("=====================");
    // Test case 6
    a = 98765; // 2^31 - 1, the maximum signed positive number
    b = 1; // 1

    #10;

    $display("Test Case 6 :");
    $display("a = %h, b = %h", a, b);
    $display("result = %h", result);
    $display("=====================");
    // Test case 7
    a = -500; // 2^31 - 1, the maximum signed positive number
    b = 2000; // 1

    #10;

    $display("Test Case 7:");
    $display("a = %h, b = %h", a, b);
    $display("result = %h", result);
    $display("=====================");
    // Test case 8
    a = -999; // 2^31 - 1, the maximum signed positive number
    b = 999; // 1

    #10;

    $display("Test Case 8:");
    $display("a = %h, b = %h", a, b);
    $display("result = %h", result);
    $display("=====================");

    // Finish simulation
    $stop;
end

// ...

endmodule