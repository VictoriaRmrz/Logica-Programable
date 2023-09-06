module WRAPPER(
	input        MAX10_CLK1_50,
	input [9:0]  SW,
	output [9:0] LEDR,
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2,
	output [6:0] HEX3

);

TOP WRAPPER(
	.i_Clock(MAX10_CLK1_50),
   .i_Tx_DV(SW[9]),
   .i_Tx_Byte(SW[7:0]),
   .o_Tx_Active(LEDR[9]),
	.o_Rx_DV(LEDR[0]),
	.seg1(HEX0),
	.seg2(HEX1),
	.seg3(HEX2),
	.seg4(HEX3)
);

endmodule


