module inc4Reg_t1(clk, q, clear);

input clk, clear;
output [3:0] q = 4'h0;
reg [3:0] q = 4'h0;

always @(~clear)
begin
	q <= 0;
end

always @(posedge clk)
begin
	if(clear) q <= q+1;
end

endmodule