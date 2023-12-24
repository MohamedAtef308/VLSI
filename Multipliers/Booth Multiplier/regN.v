module regN #(
    parameter N = 32
) (
    clk,
    reset,
    in,
    out
);
    input clk, reset;
    output reg [N-1:0] out;
    input [N-1:0] in;
    always @(posedge clk) begin
        if (reset) out <= 'b0;
        else out <= in;
    end
endmodule