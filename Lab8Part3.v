/*
Author: Nathan Spence

Program Name: Lab8Part3

Creation Date: 3/20/2023

Date Last Updated: 3/20/2023

Function: This module displays HELLO across the six hex displays at different positions, depending on the switch input.

Method: Instantiate six decoders.

Inputs: SW[0]

Outputs: The six hex segments.

Comments:
*/

//Main Display Control Module
module Lab8Part3(
input [2:0] SW,
output [6:0] HEX0, HEX1, HEX2,
output [6:0] HEX3, HEX4, HEX5);

	parameter H = 3'b000;
	parameter E = 3'b001;
	parameter L = 3'b010;
	parameter O = 3'b011;
	parameter B = 3'b100;

	wire [2:0] out1, out2, out3, out4, out5, out6;
	wire [2:0] sel;

	//Set select bits equal to the first three switches
	assign sel = SW;

	//First character pattern:	HELLOB
	MUX6to1 case1(.S(sel), .A(H), .B(E), .C(L), .D(L), .E(O), .F(B), .out(out1));
	HelloDecoder display1(.num(out1), .display(HEX5));

	//Second character pattern:	ELLOBH
	MUX6to1 case2(.S(sel), .A(E), .B(L), .C(L), .D(O), .E(B), .F(H), .out(out2));
	HelloDecoder display2(.num(out2), .display(HEX4));

	//Third character pattern:	LLOBHE
	MUX6to1 case3(.S(sel), .A(L), .B(L), .C(O), .D(B), .E(H), .F(E), .out(out3));
	HelloDecoder display3(.num(out3), .display(HEX3));

	//Fourth character pattern:	LOBHEL
	MUX6to1 case4(.S(sel), .A(L), .B(O), .C(B), .D(H), .E(E), .F(L), .out(out4));
	HelloDecoder display4(.num(out4), .display(HEX2));

	//Fifth character pattern:	OBHELL
	MUX6to1 case5(.S(sel), .A(O), .B(B), .C(H), .D(E), .E(L), .F(L), .out(out5));
	HelloDecoder display5(.num(out5), .display(HEX1));

	//Sixth character pattern:	BHELLO
	MUX6to1 case6(.S(sel), .A(B), .B(H), .C(E), .D(L), .E(L), .F(O), .out(out6));
	HelloDecoder display6(.num(out6), .display(HEX0));

endmodule