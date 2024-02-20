/*
Author: Nathan Spence

Program Name: MUX3bit2to1

Creation Date: 3/20/2023

Date Last Updated: 3/20/2023

Function: This module simulates a 3-bit wide 2-1 multiplexer

Method: Directly map inputs to output combinations

Inputs: A, B, and Select wires.

Outputs: Output wires

Comments:
*/

//3-bit 2 to 1 Multiplexer
module MUX3bit2to1(
input [2:0] A, B,
input S,
output [2:0] out);

	//Outputs A or B based on
	//the value of the select bit (S).

	assign out[0] = (~S & A[0]) | (S & B[0]);
	assign out[1] = (~S & A[1]) | (S & B[1]);
	assign out[2] = (~S & A[2]) | (S & B[2]);


endmodule