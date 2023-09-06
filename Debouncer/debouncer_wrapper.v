module debouncer_wrapper(
	input [9:0] SW,
	input MAX10_CLK1_50,
	input [1:0] KEY,
	output [9:0] LEDR
);

debouncer WRAPPER(
	.p_b(SW[9]),
	.clk(MAX10_CLK1_50),
	.rst_a(KEY[0]),
	.p_b_debouncer(LEDR[0])
);

endmodule