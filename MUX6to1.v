/*
Author: Nathan Spence

Program Name: MUX6to1

Creation Date: 3/20/2023

Date Last Updated: 3/20/2023

Function: This module simulates a 3-bit wide 6-1 multiplexer

Method: Modular instantiation. See diagram in lab manual

Inputs: A, B, C, D, E, and F input octets and select octet.

Outputs: Output octet

Comments:
*/

//3 bit wide 6 to 1 Multiplexer created
//using 3 bit wide 2 to 1 multiplexers
module MUX6to1(
input [2:0] S,				//3-bit select bit
input [2:0] A, B, C, D, E, F,		//3-bit input values
output [2:0] out);			//3-bit output value

		//3-bit temporary variables
		wire [2:0] tempA, tempB, tempC, tempD;

		//See associated diagram for organization

		//Layer 1 2-1 MUXes
		MUX3bit2to1 MUX0(.A(A), .B(B), .S(S[0]), .out(tempA));
		MUX3bit2to1 MUX1(.A(C), .B(D), .S(S[0]), .out(tempB));
		MUX3bit2to1 MUX2(.A(E), .B(F), .S(S[0]), .out(tempC));

		//Layer 2 2-1 MUX
		MUX3bit2to1 MUX3(.A(tempA), .B(tempB), .S(S[1]), .out(tempD));

		//Layer 3 2-1 MUX
		MUX3bit2to1 MUX4(.A(tempD), .B(tempC), .S(S[2]), .out(out));


endmodule