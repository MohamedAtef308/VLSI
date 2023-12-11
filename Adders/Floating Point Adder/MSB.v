module MSB(
    input [31:0] a, 
    output [4:0] msb
);
    integer i;
    reg [4:0] temp = 5'd0;
    always @ (*) begin : loop
        for (i = 0; i < 32; i = i + 1) begin
            if (a[i] == 1'b1) begin
                temp = i;
            end
            else begin
                temp = temp;
            end
        end
    end
    assign msb = temp;
endmodule