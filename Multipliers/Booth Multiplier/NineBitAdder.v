module NineBitAdder (
    input [8:0] A,    // 9-bit input A
    input [8:0] B,    // 9-bit input B
    input Cin,
    output [8:0] Sum,  // 9-bit sum output
    output Cout        // Carry-out
);

    wire [6:0] sum_part;
    wire carry1, carry2;

    // Use the 7-bit adder
    SevenBitAdder adder7 (.A(A[6:0]), .B(B[6:0]), .Cin(Cin), .Sum(sum_part), .Cout(carry1));

    // Use two 1-bit adders for the remaining bits
    FA fa8 (A[7], B[7], carry1, Sum[7], carry2);
    FA fa9 (A[8], B[8], carry2, Sum[8], Cout);

    // Concatenate the results
	  assign Sum[6:0] = sum_part;

endmodule
