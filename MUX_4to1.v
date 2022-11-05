`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:10:12 10/20/2022 
// Design Name: 
// Module Name:    MUX_4to1 
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
module MUX_4to1 #(parameter WIDTH=32) (in0,in1,in2,in3,out,sel);
input [WIDTH-1:0] in0,in1,in2,in3;
input [1:0] sel;
output [WIDTH-1:0] out;

assign out=sel[1]?(sel[0]?in3:in2):(sel[0]?in1:in0);

endmodule
