'timescale 1ns/100ps
module test_4bitinc4Reg_t4;

reg clear, load, inr, clk;
reg [3:0] data;
wire [3:0] q;

bit4inc4Reg_t4 u0(clear, load, inr, clk, data, q);

initial begin
clk = 0;
end

always #5 clk = ~clk;

initial begin
clear = 1;
#14 clear = 1;
#14 clear = 0;
#14 clear = 0;
end

initial begin
load = 1;
#14 load = 0;
#14 load = 1;
#14 load = 0;
end

initial begin
inr = 0;
#14 inr = 1;
#14 inr = 1;
#14 inr = 1;
end

initial begin
data = 5;
end

endmodule