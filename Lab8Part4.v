/*
Author: Nathan Spence

Program Name: Lab8Part4

Creation Date: 3/20/2023

Date Last Updated: 3/20/2023

Function: This module causes HELLO to scroll across the hex outputs. The direction can be reversed by toggling SW 0.

Method: Instantiate Part3 of the lab, and use a timer to control the switch inputs to Part3.

Inputs: CLOCK_50 and the direction switch.

Outputs: The six hex displays.

Comments:
*/

module Lab8Part4(
	input CLOCK_50,
	input [0:0] SW,
	output [6:0] HEX0, HEX1, HEX2,
	output [6:0] HEX3, HEX4, HEX5
);

wire [2:0] position;

Timer t(.clock(CLOCK_50), .direction(SW[0]), .out(position));

Lab8Part3 control(.SW(position), .HEX0(HEX0), .HEX1(HEX1), .HEX2(HEX2), .HEX3(HEX3), .HEX4(HEX4), .HEX5(HEX5));


endmodule