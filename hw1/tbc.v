'timescale 1ns/100ps
module test_inc4Reg_t1;

reg clk, clear;
wire [3:0] q;

inc4Reg_t1 u0(clk, q, clear);

initial begin
clk = 0;
end

always #5 clk = ~clk;

initial begin
clear = 1;
#37 clear = 0;
#50 clear = 1;
end

endmodule