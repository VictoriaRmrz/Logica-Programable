module uart_tb();

reg 		 i_Clock;
reg       i_Tx_DV;
reg [7:0] i_Tx_Byte;
wire	    o_Tx_Serial;
wire      o_Tx_Done;
wire      o_Rx_DV;
wire [7:0] o_Rx_Byte;


TOP TOP(
	.i_Clock(i_Clock),
   .i_Tx_DV(i_Tx_DV),
   .i_Tx_Byte(i_Tx_Byte),
   .o_Tx_Serial(o_Tx_Serial),
   .o_Tx_Done(o_Tx_Done),
	.o_Rx_DV(o_Rx_DV),
	.o_Rx_Byte(o_Rx_Byte)
);

always begin
	forever #10 i_Clock = ~i_Clock;
end


initial
begin
	i_Clock = 0;

	i_Tx_DV = 1;
	#100000
	i_Tx_Byte = 7'b 1010100;
	#100000000
	
	$stop;
end

endmodule
