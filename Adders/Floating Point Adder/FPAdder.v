module FPAdder(
    input [31:0] a, 
    input [31:0] b,  
    output [31:0] sum,
    output overflow
);
    wire [4:0] msbA, msbB;
    MSB MSB0(a, msbA);
    MSB MSB1(b, msbB);
    reg [22:0] curA, curB;
    reg [4:0] expA, expB;
    reg [4:0] diffA, diffB;
    reg [4:0] diff;
    reg [31:0] shiftedA; 
    reg [31:0] shiftedB;
    reg [31:0] tempSum;
    always @(*) begin 
        curA = 32'd0;
        curB = 32'd0;
        expA = msbA - 5'd16;
        expB = msbB - 5'd16;
        diffA = 5'd23 - msbA;
        diffB = 5'd23 - msbB;
        if(diffA[4] == 1'b0) begin
            shiftedA =  a << diffA;
            curA = shiftedA[22:0];
        end 
        else begin
            diffA = (~diffA) + 1;
            shiftedA = a >> diffA;
            curA = shiftedA[22:0];
        end
        if(diffB[4] == 1'b0) begin
            shiftedB =  b << diffB;
            curB = shiftedB[22:0];
        end 
        else begin
            diffB = (~diffB) + 1;
            shiftedB = b >> diffB;
            curB = shiftedB[22:0];
        end
        diff = expA - expB;
        if(diff[4] == 1'b0) begin
            curA = curA >> diff;
        end 
        else begin
            diff = (~diff) + 1;
            curB = curB >> diff;
        end
        tempSum = curA + curB;
        diff = expA - expB;
        tempSum[23] = 1'b1; // wow we did it tell here
        // if(diff[4] == 1'b0) begin
        //     if(expB[4]==1'b1) begin
        //         expB = (~expB) + 1;
        //     end
        //     tempSum = tempSum << expB;
        // end
        // else begin
        //     tempSum = tempSum << expA;
        // end
    end
    assign sum = tempSum ;

endmodule