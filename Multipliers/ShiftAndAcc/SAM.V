module SAM (
    input [31:0] a,
    input [31:0] b,
    output wire [63:0] result
);
    wire [63:0] temp [32:0];
    wire [63:0] addTemp [31:0];
    wire [63:0] negvTemp,ExtendedA;
    wire [31:0] tempA,tempB,negvA,negvB; 

    wire tempsign ;
    
    CRAdder CRAddA(~a, 0, 1'b1, negvA);
    CRAdder CRAddB(~b, 0, 1'b1, negvB);
    assign tempA = a[31]? negvA:a;
    assign tempB = b[31]? negvB:b;
    assign ExtendedA = {{32'b0}, tempA};    
    assign tempsign =  a[31] ^ b[31];
    assign temp[0] = 64'b0;
        genvar j;
        generate
            for (j = 0; j < 32; j = j + 1) begin : ADD_LOOP
                    CRAdder_64 CRAddResult(
                        .a(ExtendedA << j),
                        .b(temp[j]),
                        .cin(1'b0),
                        .sum(addTemp[j])
                        
                    );
                    assign temp[j+1] = tempB[j] ?addTemp[j]:temp[j];
                
            end
        endgenerate
    CRAdder_64 CRAddResult(~temp[32], 64'b0, 1'b1, negvTemp);
    assign result = tempsign?negvTemp:temp[32];
endmodule
