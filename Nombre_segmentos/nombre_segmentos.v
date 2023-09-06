module nombre_segmentos (bcd,seg);

input [3:0] bcd;
output reg [6:0] seg;

always @(bcd)
begin
	case (bcd)	
		0: 		  //gfedcba
			seg = 7'b 1000001;
		1: 
			seg = 7'b 1111001;
		2: 
			seg = 7'b 1000110;
		3: 
			seg = 7'b 1001110;
		4: 
			seg = 7'b 1000000;
		5: 
			seg = 7'b 0101111;
		6: 
			seg = 7'b 1111001;
		7: 
			seg = 7'b 0001000;
		

		default:
			seg = 7'b 1111111;
	
	
	endcase

end

endmodule