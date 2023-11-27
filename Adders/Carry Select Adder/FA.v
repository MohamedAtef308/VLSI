module FA (
    input  a,
    input  b,
    input Cin,
    output  Sum,
    output Cout
);

    assign Sum = a ^ b ^ Cin;  // Sum output
    assign Cout = (a & b) | (b & Cin) | (a & Cin); // Carry-out
endmodule