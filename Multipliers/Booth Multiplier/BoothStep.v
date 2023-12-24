// inputs are => A (accumlator), Q(multiplier), M(multiplicand)
//   Q_1(last bit after shit)

module BoothStep(
    input [31:0] a, q, m, 
    input q_1,
    output reg [31:0] nextA, nextQ,
    output reg nextQ_1
);
    reg [31:0] nextATemp;
    wire [31:0] sumAM, subAM;
    wire coutSum, overflowSum;
    wire coutSub, overflowSub;
    CRAdder_32 sum(a, m, 1'b0, sumAM, coutSum, overflowSum);
    CRAdder_32 sub(a, ~m, 1'b1, subAM, coutSub, overflowSub);

    always @(*) begin
        if({q[0], q_1} == 2'b01) begin
            nextATemp = sumAM;
        end
        else if({q[0], q_1} == 2'b10) begin
            nextATemp = subAM; // this can be a + ~m + 1
        end
        else begin
            nextATemp = a;
        end 
        nextQ_1 = q[0];
        nextQ = q >> 1;
        nextQ[31] = nextATemp[0];
        nextA = nextATemp >> 1;
        nextA[31] = nextATemp[31];
    end

endmodule