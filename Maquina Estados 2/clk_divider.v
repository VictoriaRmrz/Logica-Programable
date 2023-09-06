module  clk_divider#(parameter frecuencia = 1)(
	input clk, rst,
	output reg clk_div
);

reg [31:0] count;
parameter constantNumber = 50_000_000 / (2 * frecuencia);

always @(posedge clk or negedge rst)
begin

	if (rst == 1'b 0)
		count <= 32'b 0;
	else if (count == constantNumber - 1)
		count <= 32'b 0;
	else 
		count <= count + 1;
end

always @(posedge clk or negedge rst)
begin
	if(rst == 1'b 0)
		clk_div <= 1'b 0;
	else if(count == constantNumber - 1)
		clk_div <= ~clk_div;
	else
		clk_div <= clk_div;

end

endmodule