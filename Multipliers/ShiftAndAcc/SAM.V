module SAM (
  input [31:0] a,
  input [31:0] b,
  output wire [63:0] result,
  output wire sign
);

  reg [63:0] temp;
  integer i;
  always @(*) begin
    temp = 64'b0;
    for (i = 0; i < 31; i = i + 1) begin
      if (b[i]) begin
        temp = temp + (a[30:0] << i);
      end
    end
  end

  assign result = temp;
  assign sign = (a[31] ^ b[31]) && (temp != 64'b0);
  
endmodule
