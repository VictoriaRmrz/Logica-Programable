module contador_tb();

reg clk;
reg rst;
reg [3:0] c_max;
wire [3:0] counter_out;

contador DUT(
	.clk(clk),
	.rst(rst),
	.c_max(c_max),
	.counter_out(counter_out)
);


always begin
	clk = 0;
	forever #10 clk = ~clk;
end  


initial

begin
	rst = 1;
	#5 rst = 0;
	#10 rst = 1;
	c_max = 10;
	#200
	$stop;
end


endmodule