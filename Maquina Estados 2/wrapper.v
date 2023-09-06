module wrapper (
	input MAX10_CLK1_50,
	input [1:0] KEY,
	output [9:0] LEDR
);

FSM_sequence WRAPPER(
	.clk(MAX10_CLK1_50),
	.rst(KEY[0]),
	.LEDR(LEDR[3:0])
);

endmodule