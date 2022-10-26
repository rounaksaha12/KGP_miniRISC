`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:46 10/20/2022 
// Design Name: 
// Module Name:    MUX_2to1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX_2to1 #(parameter WIDTH=32)(in0,in1,out,sel);
input [WIDTH-1:0] in0,in1;
input sel;
output [WIDTH-1:0] out;

assign out=(sel)?in1:in0;

endmodule
