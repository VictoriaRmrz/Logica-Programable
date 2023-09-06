module decoderSimple_tb();
	
reg [3:0] entrada_decoder;
wire [6:0] salida_decoder;

decoderSimple DUT(
	.entrada_decoder(entrada_decoder),
	.salida_decoder(salida_decoder)

);


initial

begin

	entrada_decoder = 0;
	#100
	entrada_decoder = 1;
	#100
	entrada_decoder = 2;
	#100
	entrada_decoder = 3;
	#100
	entrada_decoder = 4;
	#100
	entrada_decoder = 5;
	#100
	entrada_decoder = 6;
	#100
	entrada_decoder = 7;
	#100
	entrada_decoder = 8;
	#100
	entrada_decoder = 9;
	#100
	entrada_decoder = 12;
	#100
	entrada_decoder = 15;
	#100
	$stop;
end


endmodule