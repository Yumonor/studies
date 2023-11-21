//--------------------------Project3----------------------------------------------------------------

module JUDGE(square_x,square_y,square_r,ans);
	
	input [7:0] square_x,square_y,square_r;				//central & radias
	output ans;					//Is target(x,y) in the circle or not?

	wire [7:0] diff_square;
	
	assign diff_square = square_r - square_x - square_y;
	assign ans = (diff_square[7]) ? 1'b0 : 1'b1;
	
endmodule
