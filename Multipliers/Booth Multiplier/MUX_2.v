module MUX_2(
 input wire A, B, Sel,
 output wire F
);
assign F = (Sel == 0) ? A : B;
endmodule