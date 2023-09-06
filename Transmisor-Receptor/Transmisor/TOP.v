module TOP(
	input       i_Clock,
   input       i_Tx_DV,
   input [7:0] i_Tx_Byte, 
   output      o_Tx_Active,
   output	   o_Tx_Serial,
   output      o_Tx_Done,
	
	output [6:0] seg1,
	output [6:0] seg2
);

parameter CLKS_PER_BIT = 5208;

Transmisor #(.CLKS_PER_BIT(CLKS_PER_BIT)) TRANSMISOR(
	.i_Clock(i_Clock),
   .i_Tx_DV(i_Tx_DV),
   .i_Tx_Byte(i_Tx_Byte), 
   .o_Tx_Active(o_Tx_Active),
   .o_Tx_Serial(o_Tx_Serial),
   .o_Tx_Done(o_Tx_Done)
);

seven7 DISPLAY_1(
	.bcd(i_Tx_Byte[7:4]),
	.seg(seg1)

);

seven7 DISPLAY_2(
	.bcd(i_Tx_Byte[3:0]),
	.seg(seg2)

);

endmodule