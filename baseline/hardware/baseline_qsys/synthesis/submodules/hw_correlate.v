module corr(
	input wire clk,
	input wire reset,
	input wire [7:0]address,
	input read,
	output wire [31:0]readdata,
	input wire write,
	input wire [31:0]writedata);

	reg sync;
	reg ack;
	reg [3:0]current_state, next_state;
	

	reg signed [7:0] sig_1, sig_2, sig_3, sig_4, sig_5, sig_6, sig_7, sig_8, sig_9, sig_10, sig_11, sig_12, sig_13, sig_14, sig_15, sig_16;
	reg signed [7:0] sig_17, sig_18, sig_19, sig_20;
	reg signed [7:0] temp_1, temp_2, temp_3, temp_4, temp_5, temp_6, temp_7, temp_8, temp_9, temp_10, temp_11, temp_12, temp_13, temp_14, temp_15, temp_16;
	
	
	reg signed[31:0]mulresult1, mulresult2, mulresult3, mulresult4,mulresult5;
	
	localparam sync1s = 3'd0, sync0s = 3'd3;
	
	always @(posedge clk or posedge reset)
		if(reset == 1'h1)
			begin

				temp_1 <= 8'b0; temp_2 <= 8'b0; temp_3 <= 8'b0; temp_4 <= 8'b0;
				temp_5 <= 8'b0; temp_6 <= 8'b0; temp_7 <= 8'b0; temp_8 <= 8'b0;
				temp_9 <= 8'b0; temp_10 <= 8'b0; temp_11 <= 8'b0; temp_12 <= 8'b0;
				temp_13 <= 8'b0; temp_14 <= 8'b0; temp_15 <= 8'b0; temp_16 <= 8'b0;
				
				sig_1 <= 8'b0; sig_2 <= 8'b0; sig_3 <= 8'b0; sig_4 <= 8'b0;
				sig_5 <= 8'b0; sig_6 <= 8'b0; sig_7 <= 8'b0; sig_8 <= 8'b0;
				sig_9 <= 8'b0; sig_10 <= 8'b0; sig_11 <= 8'b0; sig_12 <= 8'b0;
				sig_13 <= 8'b0; sig_14 <= 8'b0; sig_15 <= 8'b0; sig_16 <= 8'b0;
				
				sig_17 <= 8'b0; sig_18 <= 8'b0; sig_19 <= 8'b0; sig_20 <= 8'b0;
				
				sync <= 1'b0;
				current_state <= sync1s;
			end
		else
			begin

				sync <= (write & (address == 32'hA)) ? writedata[0] : sync;
				current_state <= next_state;
			
				temp_1 <= (write & (address == 32'h0)) ? $signed(writedata[7:0]) : temp_1;
				temp_2 <= (write & (address == 32'h0)) ? $signed(writedata[15:8]) : temp_2;
				temp_3 <= (write & (address == 32'h0)) ? $signed(writedata[23:16]) : temp_3;
				temp_4 <= (write & (address == 32'h0)) ? $signed(writedata[31:24]) : temp_4;
				temp_5 <= (write & (address == 32'h1)) ? $signed(writedata[7:0]) : temp_5;
				temp_6 <= (write & (address == 32'h1)) ? $signed(writedata[15:8]) : temp_6;
				temp_7 <= (write & (address == 32'h1)) ? $signed(writedata[23:16]) : temp_7;
				temp_8 <= (write & (address == 32'h1)) ? $signed(writedata[31:24]) : temp_8;
				temp_9 <= (write & (address == 32'h2)) ? $signed(writedata[7:0]) : temp_9;
				temp_10 <= (write & (address == 32'h2)) ? $signed(writedata[15:8]) : temp_10;
				temp_11 <= (write & (address == 32'h2)) ? $signed(writedata[23:16]) : temp_11;
				temp_12 <= (write & (address == 32'h2)) ? $signed(writedata[31:24]) : temp_12;
				temp_13 <= (write & (address == 32'h3)) ? $signed(writedata[7:0]) : temp_13;
				temp_14 <= (write & (address == 32'h3)) ? $signed(writedata[15:8]) : temp_14;
				temp_15 <= (write & (address == 32'h3)) ? $signed(writedata[23:16]) : temp_15;
				temp_16 <= (write & (address == 32'h3)) ? $signed(writedata[31:24]) : temp_16;
				
				
				sig_1 <= (write & (address == 32'h4)) ? $signed(writedata[7:0]) : sig_1;
				sig_2 <= (write & (address == 32'h4)) ? $signed(writedata[15:8]) : sig_2;
				sig_3 <= (write & (address == 32'h4)) ? $signed(writedata[23:16]) : sig_3;
				sig_4 <= (write & (address == 32'h4)) ? $signed(writedata[31:24]) : sig_4;
				sig_5 <= (write & (address == 32'h5)) ? $signed(writedata[7:0]) : sig_5;
				sig_6 <= (write & (address == 32'h5)) ? $signed(writedata[15:8]) : sig_6;
				sig_7 <= (write & (address == 32'h5)) ? $signed(writedata[23:16]) : sig_7;
				sig_8 <= (write & (address == 32'h5)) ? $signed(writedata[31:24]) : sig_8;
				sig_9 <= (write & (address == 32'h6)) ? $signed(writedata[7:0]) : sig_9;
				sig_10 <= (write & (address == 32'h6)) ? $signed(writedata[15:8]) : sig_10;
				sig_11 <= (write & (address == 32'h6)) ? $signed(writedata[23:16]) : sig_11;
				sig_12 <= (write & (address == 32'h6)) ? $signed(writedata[31:24]) : sig_12;
				sig_13 <= (write & (address == 32'h7)) ? $signed(writedata[7:0]) : sig_13;
				sig_14 <= (write & (address == 32'h7)) ? $signed(writedata[15:8]) : sig_14;
				sig_15 <= (write & (address == 32'h7)) ? $signed(writedata[23:16]) : sig_15;
				sig_16 <= (write & (address == 32'h7)) ? $signed(writedata[31:24]) : sig_16;
				
				
				sig_17 <= (write & (address == 32'h8)) ? $signed(writedata[7:0]) : sig_17;
				sig_18 <= (write & (address == 32'h8)) ? $signed(writedata[15:8]) : sig_18;
				sig_19 <= (write & (address == 32'h8)) ? $signed(writedata[23:16]) : sig_19;
				sig_20 <= (write & (address == 32'h8)) ? $signed(writedata[31:24]) : sig_20;
				
				
			
			end


	
	always @*
		begin
			next_state = current_state;
			ack = 1'b0;
			
			case(current_state)
				sync1s:
					begin
						ack = 1'b0;
						next_state = sync ? sync0s : sync1s;
					end
				sync0s:
					begin
						ack = 1'b1;
						mulresult1 = (sig_1 * temp_1) + (sig_2 * temp_2) + (sig_3 * temp_3) + (sig_4 * temp_4) + (sig_5  * temp_5) + (sig_6 * temp_6) + (sig_7 * temp_7) + (sig_8 * temp_8) + 
								 (sig_9 * temp_9) + (sig_10 * temp_10) + (sig_11 * temp_11) + (sig_12 * temp_12) + (sig_13 * temp_13) + (sig_14 * temp_14) + (sig_15 * temp_15) + (sig_16 * temp_16);
						mulresult2 = (sig_2 * temp_1) + (sig_3 * temp_2) + (sig_4 * temp_3) + (sig_5 * temp_4) + (sig_6  * temp_5) + (sig_7 * temp_6) + (sig_8 * temp_7) + (sig_9 * temp_8) + 
								 (sig_10 * temp_9) + (sig_11 * temp_10) + (sig_12 * temp_11) + (sig_13 * temp_12) + (sig_14 * temp_13) + (sig_15 * temp_14) + (sig_16 * temp_15) + (sig_17 * temp_16);
						mulresult3 = (sig_3 * temp_1) + (sig_4 * temp_2) + (sig_5 * temp_3) + (sig_6 * temp_4) + (sig_7 * temp_5) + (sig_8 * temp_6) + (sig_9 * temp_7) + (sig_10 * temp_8) + 
								 (sig_11 * temp_9) + (sig_12 * temp_10) + (sig_13 * temp_11) + (sig_14 * temp_12) + (sig_15 * temp_13) + (sig_16 * temp_14) + (sig_17 * temp_15) + (sig_18 * temp_16);
						mulresult4 = (sig_4 * temp_1) + (sig_5 * temp_2) + (sig_6 * temp_3) + (sig_7 * temp_4) + (sig_8 * temp_5) + (sig_9 * temp_6) + (sig_10 * temp_7) + (sig_11 * temp_8) + 
								 (sig_12 * temp_9) + (sig_13 * temp_10) + (sig_14 * temp_11) + (sig_15 * temp_12) + (sig_16 * temp_13) + (sig_17 * temp_14) + (sig_18 * temp_15) + (sig_19 * temp_16);
								 
						mulresult5 = (sig_5 * temp_1) + (sig_6 * temp_2) + (sig_7 * temp_3) + (sig_8 * temp_4) + (sig_9 * temp_5) + (sig_10 * temp_6) + (sig_11 * temp_7) + (sig_12 * temp_8) + 
								 (sig_13 * temp_9) + (sig_14 * temp_10) + (sig_15 * temp_11) + (sig_16 * temp_12) + (sig_17 * temp_13) + (sig_18 * temp_14) + (sig_19 * temp_15) + (sig_20 * temp_16);
								 
								 
						next_state = ~sync ? sync1s : sync0s;
					end
			endcase
		end
		
	assign readdata = 	(read & (address == 32'h10)) ? mulresult1 :
						(read & (address == 32'h11)) ? mulresult2 :
						(read & (address == 32'h12)) ? mulresult3 :
						(read & (address == 32'h13)) ? mulresult4 :
						(read & (address == 32'h14)) ? mulresult5 :
						(read & (address == 32'hB)) ? {31'h0, ack} :
						32'h0;
	
	endmodule