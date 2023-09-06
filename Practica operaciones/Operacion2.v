module Operacion2(
	input [3:0] SW,
	input clk,
	output reg [7:0] LEDR
);

reg [3:0] SW_aux;
reg SW_2, SW_3,SW_4;

always @(posedge clk)
begin
	SW_aux <= SW;
	SW_2 <= SW_aux * SW_aux;
	SW_3 <= SW_2 * SW_aux;
	SW_4 <= SW_3 * SW_aux;
	
	SW_3 <= SW_3 << 1;
	SW_aux <= SW_aux >> 3;
	
	LEDR <= SW_4 + SW_3 + SW_aux;
	
end
endmodule

