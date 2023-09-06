module Operacion(
	input [3:0] SW,
	input clk,
	output reg [7:0] LEDR
);

reg [3:0] SW_x;

always @(posedge clk)
begin
	SW_x <= SW;
	LEDR <= SW_x**4 + 2*(SW_x**3) + (SW_x/8);
end
endmodule