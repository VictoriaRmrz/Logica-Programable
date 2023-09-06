module ff_d #(parameter BITS = 1)(
	input clk, rst_a,
	input [BITS - 1 : 0] d_in,
	output reg [BITS - 1 : 0] q_out
);

always @(posedge clk or negedge rst_a)
begin
	if (!rst_a)
		q_out <= 1'b0;
	else
		q_out <= d_in;
end
endmodule

