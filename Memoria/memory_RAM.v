module memory_RAM #(parameter NBits = 7, NAddr = 3)(
	input MAX10_CLK1_50, rst, //clk, rst
	input wr_en,//wr_en
//	input [NBits - 1 : 0] Data_in,
//	input [NAddr - 1 : 0] Data_address,
	input [(NBits + NAddr) - 1  : 0] SW,
	output reg [NBits - 1 : 0]  LEDR//Data_out
);

reg [NBits - 1 : 0] RAM [0 : (2**NAddr) - 1];

always @(posedge MAX10_CLK1_50 or negedge rst)
begin
	if(!rst) 
		RAM[SW[2:0]] <= 0;
	else
	begin
		if (!wr_en) 
		RAM[SW[2:0]] <= SW[9:3];
	end
	LEDR <= RAM[SW[2:0]];
end 
endmodule
