module SevenBitAdder (
    input [6:0] A,   // 7-bit input A
    input [6:0] B,   // 7-bit input B
    input Cin,
    output [6:0] Sum, // 7-bit sum output
    output Cout      // Carry-out
);

    wire [4:0] sum_part;
    wire carry1, carry2;

    // Use the 5-bit adder
    FiveBitAdder adder5 (.A(A[4:0]), .B(B[4:0]), .Cin(Cin), .Sum(sum_part), .Cout(carry1));

    // Use two 1-bit adders for the remaining bits
    FA fa6 (A[5], B[5], carry1, Sum[5], carry2);
    FA fa7 (A[6], B[6], carry2, Sum[6], Cout);

    // Concatenate the results
	  assign Sum[4:0] = sum_part;

endmodule