module bit4inc4Reg_t4(clear, load, inr, clk, data, q);

input clear, load, inr, clk;
input [3:0] data;
output [3:0] q = 4'h0;
reg [3:0] q = 4'h0;

always @(posedge clk)
begin
	if(clear) q <= 0;
	else if(load) q <= data;
	else if(inr) q <= q + 4'h1;
end

endmodule