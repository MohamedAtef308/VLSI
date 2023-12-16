module SAM (
    input [31:0] a,
    input [31:0] b,
    output wire [63:0] result,
);
    reg [63:0] temp;
    reg [31:0] tempA,tempB;
    reg tempsign ;
    
    integer i;
    always @(*) begin
        tempsign =  a[31] ^ b[31];
        tempA = a[31]?  ~a +1'b1:a;
        tempB = b[31]? ~b +1'b1:b;
        temp = 64'b0;
        for (i = 0; i < 31; i = i + 1) begin
            if (tempB[i]) begin
                temp = temp + (tempA[30:0] << i);
            end
        end
        temp =tempsign?~temp +1'b1:temp;
    end
    assign result = temp;
endmodule
