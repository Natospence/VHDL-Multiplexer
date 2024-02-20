/*
Author: Nathan Spence

Program Name: Lab8Part2

Creation Date: 3/20/2023

Date Last Updated: 3/20/2023

Function: This module demonstrates the use of a HelloDecoder

Method:

Inputs: 3 onboard switches

Outputs: HEX0

Comments:
*/

//Main Display Control Module
module Lab8Part2(
input [2:0] SW,
output [6:0] HEX0);

HelloDecoder decoder(.num(SW), .display(HEX0));

endmodule