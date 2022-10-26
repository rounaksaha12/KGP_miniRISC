`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:16 10/26/2022 
// Design Name: 
// Module Name:    SIGN_EXTND 
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
module SIGN_EXTND #(parameter INPUT_WIDTH=16) (in,out);
input [INPUT_WIDTH-1:0] in;
output [31:0] out;

assign out=$signed(in);

endmodule
