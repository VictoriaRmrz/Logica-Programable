module wrapper(
	input [9:0] SW,
	input MAX10_CLK1_50,
	input [1:0] KEY,
	output wire [6:0] HEX0
);

clk_div_with_7seven WRAPPER(
	.clk(MAX10_CLK1_50),
	.rst(KEY[0]),
	.entradas(SW[3:0]),
	.salidas(HEX0)
);


endmodule