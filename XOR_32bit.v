`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:08 10/26/2022 
// Design Name: 
// Module Name:    XOR_32bit 
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
module XOR_32bit(a,b,XORout);
input [31:0] a,b;
output [31:0] XORout;

assign XORout=a^b;

endmodule
