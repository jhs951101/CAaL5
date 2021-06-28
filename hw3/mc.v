module inc4Reg_t3(clk, data, q, load, clear);

input clk, load, clear;
input [3:0] data;
output [3:0] q = 4'h0;
reg [3:0] q = 4'h0;

always @(~clear)
begin
	q <= 0;
end

always @(posedge clk)
begin
	if(clear && load) q <= data;
	else if(clear && ~load)
		if(q == 4'hc) q <= 0;
		else q <= q+1;
end

endmodule