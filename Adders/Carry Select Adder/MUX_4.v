module MUX_4 (
  input  wire[3:0] x,
  input  wire[3:0] y,
  input  wire sel,
  output reg [3:0] m
);
  always @ (*) begin
    m = 0;
    if (sel == 0) begin
      m = x;
    end
    else begin
      m = y;
    end
end
endmodule