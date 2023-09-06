module decoderSimple(
	
	input [3:0] entrada_decoder,
	output reg [6:0] salida_decoder
);


always @(*) 
begin
	case(entrada_decoder)
	
		0:							// gfedcba
			salida_decoder = 7'b 1000000;
		1: 
			salida_decoder = 7'b 1111001;
		2: 
			salida_decoder = 7'b 0100100;
		3: 
			salida_decoder = 7'b 0110000;
		4: 
			salida_decoder = 7'b 0011001;
		5: 
			salida_decoder = 7'b 0010010;
		6: 
			salida_decoder = 7'b 0000010;
		7:
			salida_decoder = 7'b 1111000;
		8: 
			salida_decoder = 7'b 0000000;
		9: 
			salida_decoder = 7'b 0011000;
	
		default: 
			salida_decoder = 7'b 0111111;
	
	
	endcase


end



endmodule