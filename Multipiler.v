//--------------------------Project3----------------------------------------------------------------
//CO note - 2'nd multiplication algorithm
//0 <= A <= 7

module Multipiler(A,Product);
	
	input [3:0] A;
	output [7:0] Product;
	
	wire [7:0] temp0,temp1,temp2;
	
	assign temp0 = A[0] ? {A,A}>>1:{4'd0,A}>>1;
	assign temp1 = temp0[0] ? (temp0+{A,4'd0})>>1:temp0>>1;
	assign temp2 = temp1[0] ? (temp1+{A,4'd0})>>1:temp1>>1;
	assign Product = temp2[0] ? (temp2+{A,4'd0})>>1:temp2>>1;
	
endmodule
