module WRAPPER(
	input [9:0] SW,
	input MAX10_CLK1_50,
	output [6:0] HEX0, HEX1, HEX2
);

Complemento TOP(
	.clk(MAX10_CLK1_50),
	.data_in(SW),
	.seg1(HEX0), 
	.seg2(HEX1),
	.seg3(HEX2)
);

endmodule