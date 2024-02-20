/*
Author: Nathan Spence

Program Name: HelloDecoder

Creation Date: 3/20/2023

Date Last Updated: 3/20/2023

Function: This module maps bit values to letters on the hex7seg display.

Method: Directly map inputs to output combinations

Inputs: Input bits

Outputs: Hex7seg display

Comments:
*/

//Hello decoder
module HelloDecoder(
input [2:0] num,
output reg [6:0] display);

	always@(num)
	begin
		case(num)

			3'b000: display = 7'b0001001;    //Display H
			3'b001: display = 7'b0000110;    //Display E
			3'b010: display = 7'b1000111;    //Display L
			3'b011: display = 7'b1000000;    //Display O
			default: display = 7'b1111111;  //Display nothing

		endcase
	end

endmodule