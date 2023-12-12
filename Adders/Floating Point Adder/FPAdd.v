module FPAdd(
    input [31:0] A,
    input [31:0] B,
    output [31:0] sum,
    output cout
);
        reg [7:0] diff;
        reg [24:0] mantissaA, mantissaB;
        reg [24:0] tempSum;
        reg [7:0] tempExp;
        

        always @(*) begin
            mantissaA = {2'b01, A[22:0]};
            mantissaB = {2'b01, B[22:0]};
            diff = A[30:23] - B[30:23];
            if(diff[7] == 1'b0) begin
                // expA greater
                mantissaB = mantissaB >> diff; // shift smaller to make its exponent greater
                tempExp = A[30:23];
            end 
            else begin
                // expB greater
                diff = (~diff) + 1;
                mantissaA = mantissaA >> diff; // shift smaller to make its exponent greater
                tempExp = B[30:23];
            end

            // if (A[31] = 1'b1) begin
            //     mantissaA = ~mantissaA + 1;
            // end

            // if (B[31] = 1'b1) begin
            //     mantissaB = ~mantissaB + 1;
            // end

            tempSum = mantissaA + mantissaB;
            tempExp = tempExp + tempSum[24];
            if (tempSum[24] == 1'b1) begin
                tempSum = tempSum >> 1;
            end
        end

        // add mantissas
        assign cout = tempSum[24];
        assign sum[31] = tempSum[24] + A[31] + B[31];
        assign sum[22:0] = tempSum[22:0];
        assign sum[30:23] = tempExp;
endmodule