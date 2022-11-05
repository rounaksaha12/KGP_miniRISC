`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:56:32 11/03/2022 
// Design Name: 
// Module Name:    IS_ZERO 
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
module IS_ZERO(in,out);
input [31:0] in;
output out;

assign out=(in==32'd0)?1:0;

endmodule
