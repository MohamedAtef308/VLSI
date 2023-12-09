module Adder(
    input [31:0] a, 
    input [31:0] b,
    input cin,  
    output [31:0] sum,
    output overflow
);
    assign sum = a + b + cin;
    assign overflow = ((~(a[31] ^ b[31])) & (sum[31] ^ a[31]));
endmodule