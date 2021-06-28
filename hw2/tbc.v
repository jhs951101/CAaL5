'timescale 1ns/100ps
module test_inc4Reg_t2;

reg clk, load, clear;
reg [3:0] data;
wire [3:0] q;

inc4Reg_t2 u0(clk, data, q, load, clear);

initial begin
clk = 0;
end

always #5 clk = ~clk;

initial begin
load = 0;
#10 load = 1;
#6 load = 0;
#13 load = 0;
#20 load = 0;
#28 load = 0;
#30 load = 0;
end

initial begin
clear = 1;
#37 clear = 0;
#50 clear = 1;
end

initial begin
data = 2;
#17 data = 7;
#21 data = 1;
#30 data = 3;
#40 data = 6;
#11 data = 5;
end

endmodule