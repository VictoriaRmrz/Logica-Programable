module TOP(
	input       i_Clock,
   input       i_Tx_DV,
   input [7:0] i_Tx_Byte,
	output      o_Rx_DV,
	output 		o_Tx_Active,
	
	output [6:0] seg1,
	output [6:0] seg2,
	output [6:0] seg3,
	output [6:0] seg4
	
);

parameter CLKS_PER_BIT = 5208;
reg [7:0] registro_bcd;
wire o_Tx_Serial_wire;
wire o_Tx_Done;
wire [7:0] o_Rx_Byte;
	

Transmisor #(.CLKS_PER_BIT(CLKS_PER_BIT)) TRANSMISOR(
	.i_Clock(i_Clock),
   .i_Tx_DV(i_Tx_DV),
   .i_Tx_Byte(i_Tx_Byte), 
   .o_Tx_Active(o_Tx_Active),
   .o_Tx_Serial(o_Tx_Serial_wire),
   .o_Tx_Done(o_Tx_Done)
	
);

Receptor #(.CLKS_PER_BIT(CLKS_PER_BIT)) RECEPTOR(
	.i_Clock(i_Clock),
   .i_Rx_Serial(o_Tx_Serial_wire),
   .o_Rx_DV(o_Rx_DV),
   .o_Rx_Byte(o_Rx_Byte)
);


seven7 DISPLAY_1(
	.bcd(o_Rx_Byte[7:4]),
	.seg(seg1)

);

seven7 DISPLAY_2(
	.bcd(o_Rx_Byte[3:0]),
	.seg(seg2)

);

seven7 DISPLAY_3(
	.bcd(i_Tx_Byte[7:4]),
	.seg(seg3)

);

seven7 DISPLAY_4(
	.bcd(i_Tx_Byte[3:0]),
	.seg(seg4)

);


endmodule

