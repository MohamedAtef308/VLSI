module FPAdder(
    input [8:0] a, 
    input [8:0] b,  
    output [8:0] sum,
    output overflow
);
    wire [4:0] msbA, msbB;
    MSB MSB0(a, msbA);
    MSB MSB1(b, msbB);
    reg [8:0] curA, curB;
    reg [4:0] expA, expB;
    always @(*) begin 
        expA = msbA - 5'd16;
        expB = msbB - 5'd16;
        if(expA[4] == 1'b0) begin
            curA = curA >> expA;
        end 
        else begin
            expA = (~expA) + 1;
            curA = curA >> expA;
        end
        if(expB[4] == 1'b0) begin
            curB = curB >> expB;
        end 
        else begin
            expB = (~expB) + 1;
            curB = curB >> expB;
        end
    end

endmodule