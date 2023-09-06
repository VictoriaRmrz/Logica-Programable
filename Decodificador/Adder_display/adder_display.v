module adder_display(x,y,a,b,c,d,e,f,g);
	input x,y;
	output a,b,c,d,e,f,g;
	wire w0,w1;


	adder U1(x,y,w0,w1);
	dec_display U2(w0,w1,a,b,c,d,e,f,g);



endmodule