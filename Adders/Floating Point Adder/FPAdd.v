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
        reg tempSign;
        reg [31:0] tempShift;
        wire [4:0] shiftAmount;
        reg [4:0] realShiftAmount;
        MSB MSB99(tempShift, shiftAmount);

        

        always @(*) begin
            mantissaA = {2'b01, A[22:0]};
            mantissaB = {2'b01, B[22:0]};
            tempShift = 1'd0;
            realShiftAmount = 1'd0;

            if (A == 1'd0 | B == 1'd0) begin // handle case 0
                if (A == 1'd0) begin
                    tempSum = mantissaB;
                    tempExp = B[30:23];
                    tempSign = B[31];
                end
                else begin
                    tempSum = mantissaA;
                    tempExp = A[30:23];
                    tempSign = A[31];
                end
            end
            else begin
                diff = A[30:23] - B[30:23];
                if(diff[7] == 1'b0) begin
                    // expA greater
                    mantissaB = mantissaB >> diff; // shift smaller to make its exponent greater
                    tempExp = A[30:23];
                    tempSign = A[31];

                end 
                else begin
                    // expB greater
                    diff = (~diff) + 1;
                    mantissaA = mantissaA >> diff; // shift smaller to make its exponent greater
                    tempExp = B[30:23];
                    tempSign = B[31];
                end

                if ((A[31]^B[31]) == 1'b1) begin
                    if (A[31] == 1'b1) begin
                        tempSum = mantissaB - mantissaA;
                    end
                    else begin
                        tempSum = mantissaA - mantissaB;                    
                    end

                    if (diff == 1'd0) begin
                        tempSign = tempSum[24];
                    end

                    if (tempSign == 1'b1) begin
                        tempSum = ~tempSum +1;
                    end

                    if (tempSum[23] == 1'b0) begin
                        if (tempSum == 1'd0) begin
                            tempExp = 1'd0;
                        end
                        else begin
                        tempShift = {tempSum[23:0], 8'b00000000};
                        realShiftAmount = ~(shiftAmount);

                        tempExp = tempExp - realShiftAmount;
                        tempSum = tempSum << realShiftAmount;
                        end
                    end
                end
                else begin
                    tempSum = mantissaA + mantissaB;
                    tempSign = A[31];

                    tempExp = tempExp + tempSum[24];

                    if (tempSum[24] == 1'b1) begin
                        tempSum = tempSum >> 1; // normalize here maybe
                    end
                end
            end
        end

        assign cout = tempSum[24];
        assign sum[31] = tempSign;
        assign sum[22:0] = tempSum[22:0];
        assign sum[30:23] = tempExp;
endmodule