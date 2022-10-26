`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:25 10/21/2022 
// Design Name: 
// Module Name:    ADDR_32bit 
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
module ADDR_32bit(a,b,c_in,ADDRout,ADDRc_out);
input [31:0] a,b,c_in;
output [31:0] ADDRout;

assign ADDRout=a+b+c_in;
assign ADDRc_out=0; /*hardcoded dummy output, will be corrected when this module gets replaced by CLA*/

endmodule
