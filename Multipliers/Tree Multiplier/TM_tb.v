module TMSeq_TB;

    reg [31:0] a;
    reg [31:0] b;
    wire [63:0] result;


    // Clock generation
    reg clk = 0;
    wire reset = 0;
    TMSeq uut (
        .A(a),
        .B(b),
        .clk(clk),
        .reset(reset),
        .result(result)
    );

    always #5 clk = ~clk;
    integer faildTestCases = 0;
    integer passedTestCases = 0;

    always @* begin

        // Test case 1
        a = 50;
        b = -40;

        #10;
        

        if(-64'd2000 == result) begin
            $display("Test Case#1 passed");
            passedTestCases = passedTestCases + 1;
        end
        else begin
            $display("Test Case#1 failed +:");
            $display("a = %h, b = %h", a, b);
            $display("result = %h", result);
            faildTestCases = faildTestCases + 1;
        end
        $display("=====================");

        // Test case 2
        a = 90; // -2^31, a signed negative number
        b = 70; // 1

        #10;

        if(64'd6300 == result) begin
            $display("Test Case#2 passed");
            passedTestCases = passedTestCases + 1;
        end
        else begin
            $display("Test Case#2 failed +:");
            $display("a = %h, b = %h", a, b);
            $display("result = %h", result);
            faildTestCases = faildTestCases + 1;
        end
        $display("=====================");

        // Test case 3
        a = -80; // 2^31 - 1, the maximum signed positive number
        b = -65; // 1

        #10;

        if(64'd5200 == result) begin
            $display("Test Case#3 passed");
            passedTestCases = passedTestCases + 1;
        end
        else begin
            $display("Test Case#3 failed +:");
            $display("a = %h, b = %h", a, b);
            $display("result = %h", result);
            faildTestCases = faildTestCases + 1;
        end
        $display("=====================");

        // Test case 4
        a = -10; // 2^31 - 1, the maximum signed positive number
        b = 325; // 1

        #10;

        if(-64'd3250 == result) begin
            $display("Test Case#4 passed");
            passedTestCases = passedTestCases + 1;
        end
        else begin
            $display("Test Case#4 failed +:");
            $display("a = %h, b = %h", a, b);
            $display("result = %h", result);
            faildTestCases = faildTestCases + 1;
        end
        $display("=====================");

        // Test case 5
        a = 98756; // 2^31 - 1, the maximum signed positive number
        b = 0; // 1

        #10;

        if(64'd0 == result) begin
            $display("Test Case#5 passed");
            passedTestCases = passedTestCases + 1;
        end
        else begin
            $display("Test Case#5 failed +:");
            $display("a = %h, b = %h", a, b);
            $display("result = %h", result);
            faildTestCases = faildTestCases + 1;
        end
        $display("=====================");

        // Test case 6
        a = 98765; // 2^31 - 1, the maximum signed positive number
        b = 1; // 1

        #10;

        if(64'd98765 == result) begin
            $display("Test Case#6 passed");
            passedTestCases = passedTestCases + 1;
        end
        else begin
            $display("Test Case#6 failed +:");
            $display("a = %h, b = %h", a, b);
            $display("result = %h", result);
            faildTestCases = faildTestCases + 1;
        end
        $display("=====================");

        // Test case 7
        a = -500; // 2^31 - 1, the maximum signed positive number
        b = 2000; // 1

        #10;

        if(-64'd1000000 == result) begin
            $display("Test Case#7 passed");
            passedTestCases = passedTestCases + 1;
        end
        else begin
            $display("Test Case#7 failed +:");
            $display("a = %h, b = %h", a, b);
            $display("result = %h", result);
            faildTestCases = faildTestCases + 1;
        end
        $display("=====================");

        // Test case 8
        a = -999; // 2^31 - 1, the maximum signed positive number
        b = 999; // 1

        #10;

        if(-64'd998001 == result) begin
            $display("Test Case#8 passed");
            passedTestCases = passedTestCases + 1;
        end
        else begin
            $display("Test Case#8 failed +:");
            $display("a = %h, b = %h", a, b);
            $display("result = %h", result);
            faildTestCases = faildTestCases + 1;
        end
        $display("=====================");

        $display("Number of passed test cases:%h", passedTestCases);
        $display("Number of failed test cases:%h", faildTestCases);
        // Finish simulation
        #20
        $stop;
    end

    // ...

endmodule
