module contador(
	input clk, rst,
	input [9:0] SW,
	output comp_out, clk_out
);

parameter C_MAX = 20_000;

wire clk_divider_wire;
reg [31:0] counter_out;
reg [31:0] comparador;

clk_divider CLK(
	.clk(clk),
	.rst(rst),
	.clk_div(clk_divider_wire)
);

always @(posedge clk_divider_wire or negedge rst)
begin

	if(!rst)
	begin
		counter_out <= 0;
	end
	else
	begin
		if(counter_out >= C_MAX - 1)
		begin
			counter_out <= 0;
		end
		else
			counter_out <= counter_out + 1;
	end
end

always @(SW)
begin
	comparador = ((2000 * SW) / 1023) + 500;
end

assign comp_out = comparador > conter_out ? 1:0;
assign clk_out = clk_divider_wire;

endmodule
