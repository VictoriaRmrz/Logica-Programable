module TOP(
	input        i_Clock,
   input        i_Rx_Serial,
   output       o_Rx_DV,
	
	output [6:0] seg1,
	output [6:0] seg2
);

wire [7:0] o_Rx_Byte_wire;

Receptor RECEPTOR(
	.i_Clock(i_Clock),
   .i_Rx_Serial(i_Rx_Serial),
   .o_Rx_DV(o_Rx_DV),
   .o_Rx_Byte(o_Rx_Byte_wire)
);

seven7 DISPLAY_1(
	.bcd(o_Rx_Byte_wire[7:4]),
	.seg(seg1)
);

seven7 DISPLAY_2(
	.bcd(o_Rx_Byte_wire[3:0]),
	.seg(seg2)

);

endmodule