//--------------------------Project3----------------------------------------------------------------

`include "JUDGE.v"
`include "Multipiler.v"
`include "COUNT.v"
`include "CONTROL.v" 

module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate);

	input clk, rst;
	input en;
	input [23:0] central;
	input [11:0] radius;
	input [1:0] mode;
	output busy;
	output valid;
	output [7:0] candidate;
	
	reg [1:0] cs;		
	reg [1:0] ns;
	reg [7:0] target_ns;
	reg [7:0] target_cs;	
	reg [7:0] CountIn;
	wire ans_A,ans_B,ans_C;
	wire [3:0] xdiff_A,xdiff_B,xdiff_C;
	wire [3:0] ydiff_A,ydiff_B,ydiff_C;
	wire [7:0] Prod_rA,Prod_rB,Prod_rC;		
	wire [7:0] Prod_xdA,Prod_xdB,Prod_xdC;
	wire [7:0] Prod_ydA,Prod_ydB,Prod_ydC;
	
	always@(posedge clk or posedge rst) begin
		if(rst) begin
			cs <= 2'd0;
			target_cs <= 8'h10;
			CountIn <= 8'd0;
		end
		else begin
			cs <= ns;
			target_cs <= target_ns;
			CountIn <= (cs==2'd3)?8'd0:candidate;
		end
	end 
	
	CONTROL CT(cs,target_cs,en,ns,target_ns,valid,busy);
	
	Subtractor S0(central[23:20],target_cs[7:4],xdiff_A);
	Subtractor S1(central[19:16],target_cs[3:0],ydiff_A);
	Subtractor S2(central[15:12],target_cs[7:4],xdiff_B);
	Subtractor S3(central[11:8],target_cs[3:0],ydiff_B);
	Subtractor S4(central[7:4],target_cs[7:4],xdiff_C);
	Subtractor S5(central[3:0],target_cs[3:0],ydiff_C);
	
	Multipiler M0(xdiff_A,Prod_xdA);
	Multipiler M1(ydiff_A,Prod_ydA);
	Multipiler M2(xdiff_B,Prod_xdB);
	Multipiler M3(ydiff_B,Prod_ydB);
	Multipiler M4(xdiff_C,Prod_xdC);
	Multipiler M5(ydiff_C,Prod_ydC);
	Multipiler M6(radius[11:8],Prod_rA);
	Multipiler M7(radius[7:4],Prod_rB);
	Multipiler M8(radius[3:0],Prod_rC);
	
	JUDGE JA(Prod_xdA,Prod_ydA,Prod_rA,ans_A);
	JUDGE JB(Prod_xdB,Prod_ydB,Prod_rB,ans_B);
	JUDGE JC(Prod_xdC,Prod_ydC,Prod_rC,ans_C);
	
	COUNT C0(ans_A,ans_B,ans_C,mode,cs,CountIn,candidate);
	
endmodule


