//--------------------------Project3----------------------------------------------------------------

module COUNT(A,B,C,mode,state,CountIn,CountOut);

	input A;
	input B;
	input C;
	input [1:0] mode;
	input [1:0] state;
	input [7:0] CountIn;
	output [7:0] CountOut;
	
	wire m0,m1,m2,m3;
	wire w0,w1,w2,w3;
	
	and (m0,A,~mode[0],~mode[1]);
	
	and (m1,A,B,mode[0],~mode[1]);
	
	xor (w0,A,B);
	and (m2,w0,~mode[0],mode[1]);
	
	xnor (w1,A,B,C);
	or (w2,A,B,C);
	and (m3,w1,w2,mode[0],mode[1]);
	
	xor (w3,state[0],state[1]);
	
	assign CountOut = (m0|m1|m2|m3)&w3 ? CountIn+7'd1 : CountIn;
	
endmodule