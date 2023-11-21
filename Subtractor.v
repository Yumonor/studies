module Subtractor(A,B,diff);
	input [3:0] A;
	input [3:0] B;
	output [3:0] diff;
	
	assign diff = A+(~B)+4'd1;

endmodule