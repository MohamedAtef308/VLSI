module ElevenBitAdder (
    input [10:0] A,    // 9-bit input A
    input [10:0] B,    // 9-bit input B
    input Cin,
    output [10:0] Sum,  // 9-bit sum output
    output Cout        // Carry-out
);

    wire [8:0] sum_part;
    wire carry1, carry2;

    // Use the 7-bit adder
    NineBitAdder adder7 (.A(A[8:0]), .B(B[8:0]), .Cin(Cin), .Sum(sum_part), .Cout(carry1));

    // Use two 1-bit adders for the remaining bits
    FA fa8 (A[9], B[9], carry1, Sum[9], carry2);
    FA fa9 (A[10], B[10], carry2, Sum[10], Cout);

    // Concatenate the results
	  assign Sum[8:0] = sum_part;

endmodule
