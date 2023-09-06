module contador(
	input clk, rst,
	input [3:0] c_max,
	output reg [3:0] counter_out
);


always @(posedge clk or negedge rst)
begin

	if(!rst)
	begin
		counter_out <= 0;
	end
	else
	begin
		if(counter_out >= c_max)
		begin
			counter_out <= 0;
		end
		else
			counter_out <= counter_out + 1;
	end
end
endmodule