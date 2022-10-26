`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:24 10/21/2022 
// Design Name: 
// Module Name:    TWOS_COMPL_32bit 
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
module TWOS_COMPL_32bit(a,TWOS_COMPLout);
input [31:0] a;
output [31:0] TWOS_COMLout;

assign TWOS_COMLout=~a+1;

endmodule
