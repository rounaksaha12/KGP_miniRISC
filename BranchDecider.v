`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:54 10/21/2022 
// Design Name: 
// Module Name:    BranchDecider 
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
module BranchDecider(zero,MSB,ShortBr,ShortBrType,ShortBr_out);
input zero,MSB,ShortBr;
input [1:0] ShortBrType;
output ShortBr_out;

wire not_zero,not_MSB,ShortBrMUX_out;

not BranchDecider_n1(not_zero,zero);
not BranchDecider_n2(not_MSB,MSB);
and BranchDecider_a1(ShortBr_out,ShortBr,ShortBrMUX_out);
MUX_4to1 #(.WIDTH(1)) ShortBrMUX (.in0(not_MSB),.in1(MSB),.in2(zero),.in3(not_zero),.sel(ShortBrType),.out(ShortBrMUX_out));
/*
10 branch on 0
11 branch on not 0
01 branch on negative
00 branch on positive (not included in given instruction set, may be included in future)
*/

endmodule
