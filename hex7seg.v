/*
Author: Nathan Spence

Program Name: hex7seg

Creation Date: 2/27/2023

Date Last Updated: 2/27/2023

Function: This program allows simple interfacing with the 7-segment hex display on the DE10 lite.

Method: Directly map inputs to output combinations

Inputs: A 3-bit integer value

Outputs: The hex display lights.

Comments:
*/

module hex7seg(
input[3:0] num,
output reg [6:0] display);

	always@(num)
		case(num)
			4'h0:display=7'b1000000; //Displays 0
			4'h1:display=7'b1111001; //Displays 1
			4'h2:display=7'b0100100; //Displays 2
			4'h3:display=7'b0110000; //Displays 3
			4'h4:display=7'b0011001; //Displays 4
			4'h5:display=7'b0010010; //Displays 5
			4'h6:display=7'b0000010; //Displays 6
			4'h7:display=7'b1111000; //Displays 7
			4'h8:display=7'b0000000; //Displays 8
			4'h9:display=7'b0011000; //Displays 9
			4'hA:display=7'b0001000; //Displays A
			4'hb:display=7'b0000011; //Displays b
			4'hc:display=7'b1000110; //Displays c
			4'hd:display=7'b0100001; //Displays d
			4'hE:display=7'b0000110; //Displays E
			4'hF:display=7'b0001110; //Displays F
			default:display=7'bx; //Shouldn't ever happen
		endcase
endmodule