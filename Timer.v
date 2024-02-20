/*
Author: Nathan Spence

Program Name: Timer

Creation Date: 3/20/2023

Date Last Updated: 3/20/2023

Function: This module implements a timer that counts up or down depending on the input switch.

Method: Procedural verilog on every clock uptick. Convert clock ticks to seconds and count in the direction of the switch.

Inputs: clock ticks and direction switch.

Outputs: Output octet.

Comments:
*/

module Timer(
	input clock,
	input direction,
	output reg [2:0] out
);

reg [31:0] clock_counter;

always@(posedge clock)
	begin
	
	clock_counter = clock_counter + 1;
	
	//After we've reached a second
	if(clock_counter >= 50000000)
		begin
		
			//If we're incrementing
			if(direction)
			begin
				out = out + 1;
				if (out > 5)
					out = 0;
			end
					
			//If we're decrementing
			else
			begin
				if (out == 0)
					out = 5;
				else
				out = out - 1;
			end
			
				
			clock_counter = 0;
		
		end
	
	end
	
endmodule