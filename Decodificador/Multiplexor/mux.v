module mux (m_out, a,b, sel);
	output m_out;
	input a, b;
	input sel;
	
	assign m_out = (sel)? a:b;
	
endmodule