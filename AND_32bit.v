`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:07 10/26/2022 
// Design Name: 
// Module Name:    AND_32bit 
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
module AND_32bit(a,b,ANDout);
input [31:0] a,b;
output [31:0] ANDout;

assign ANDout=a&b;

endmodule
