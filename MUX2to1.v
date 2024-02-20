/*
Author: Nathan Spence

Program Name: MUX2to1

Creation Date: 3/20/2023

Date Last Updated: 3/20/2023

Function: This module simulates a 2-1 multiplexer

Method: Directly map inputs to output combinations

Inputs: A, B, and Select bits.

Outputs: Output wire

Comments:
*/

//2 to 1 Multiplexer
module MUX2to1(
input A, B, S,
output out);

	//Outputs A or B based on
	//the value of the select bit (S).

	assign out = (~S & A) | (S & B);

endmodule