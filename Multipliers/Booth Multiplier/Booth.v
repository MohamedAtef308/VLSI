module Booth(
    input [31:0] a, b,
    output [63:0] result
);
    wire [31:0] nextA [0:32]; // 2d wires
    wire [31:0] nextQ [0:32]; // 2d wires
    wire [32:0] q_1;
    assign q_1[0] = 1'b0;
    assign nextA[0] = 32'b0;
    assign nextQ[0] = b;

    genvar i;
    generate
    for (i = 0; i < 32; i = i + 1) begin : booth_instances
        BoothStep stepX(nextA[i], nextQ[i], a, q_1[i], nextA[i+1], nextQ[i+1], q_1[i+1]) ;
    end
    endgenerate

    assign result[63:32] = nextA[32];
    assign result[31:0] = nextQ[32];

endmodule