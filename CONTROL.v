module CONTROL(cs,target_cs,en,ns,target_ns,valid,busy);
	input [1:0] cs;	
	input [7:0] target_cs;
	input en;
	output reg [1:0] ns;
	output reg [7:0] target_ns;
	output valid;
	output busy;
	
	//state0: initialize ; state1: get value ; state2: calculate ; state3: valid candidate
	always@(*) begin
		case(cs)
			2'd0: 
			begin
				ns = (en) ? 2'd1:2'd0;
				target_ns = (en) ? (target_cs[3:0] & 4'b1000) ? target_cs+8'h09:target_cs+8'h01 : 8'h11;
			end
			2'd1: 
			begin
				ns = (target_cs!=8'h87) ? 2'd1:2'd2;
				target_ns = (target_cs[3:0] & 4'b1000) ? target_cs+8'h09 : target_cs+8'h01;
			end
			2'd2: 
			begin
				ns = 2'd3;
				target_ns = target_cs;
			end
			2'd3: 
			begin
				ns = 2'd0;
				target_ns = 8'h10;
			end
		endcase
	end
	
	assign valid = (cs==2'd3) ? 1'b1:1'b0;
	assign busy = (cs!=2'd0) ? 1'b1:1'b0; 
	
endmodule