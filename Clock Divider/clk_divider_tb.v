module clk_divider_tb();

reg clk, rst;
wire clk_div;

clk_divider DUT(
	.clk(clk),
	.rst(rst),
	.clk_div(clk_div)
);


always begin
	clk = 0;
	rst = 1;
	#5 rst = 0;
	#10 rst = 1;
	forever #10 clk = ~clk;
end  



endmodule