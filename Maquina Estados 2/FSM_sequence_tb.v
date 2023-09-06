module FSM_sequence_tb();

	reg 	   clk,
				rst;
	wire [3:0] LEDR;



FSM_sequence DUT(
	.clk(clk), 
	.rst(rst),
	.LEDR(LEDR)
);


always begin
	forever #10 clk = ~clk;
end


initial
begin
	clk = 0;
	rst = 1;
	#5 rst = 0;
	#10 rst = 1;
	#500 
	
	$stop;
end


endmodule