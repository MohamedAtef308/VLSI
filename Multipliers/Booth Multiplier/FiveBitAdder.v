module FiveBitAdder (
    input [4:0] A,   // 5-bit input A
    input [4:0] B,   // 5-bit input B
    input Cin,
    output [4:0] Sum, // 5-bit sum output
    output Cout      // Carry-out
);

    wire [4:0] carry; // Array to store carry-out from each bit

    FA fa0 (A[0],B[0],Cin,Sum[0],carry[0]);
    FA fa1 (A[1],B[1], carry[0],Sum[1],carry[1]);
    FA fa2 (A[2],B[2], carry[1],Sum[2],carry[2]);
    FA fa3 (A[3],B[3], carry[2],Sum[3],carry[3]);
    FA fa4 (A[4],B[4], carry[3],Sum[4],Cout);

endmodule
