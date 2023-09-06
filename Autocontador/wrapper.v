module wrapper(
	input [9:0] SW,
	input MAX10_CLK1_50,
	input [1:0] KEY,
	output wire [6:0] HEX0
);

counter_9999 WRAPPER(
	.clk(MAX10_CLK1_50),
	.switch_up(SW[4]),
	.switch_clear(SW[9]),
	.rst_a(KEY[0]),
	.seg(HEX0),
	.digit
);


endmodule