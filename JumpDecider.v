`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:30 10/21/2022 
// Design Name: 
// Module Name:    JumpDecider 
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
module JumpDecider(carry,LongBr,LongBrType,LongBr_out);
input carry,LongBr;
input [1:0] LongBrType;
output LongBr_out;

wire hardwired_one,not_carry,LongBrMUX_out;

assign hardwired_one=1'd1;

not JumpDecider_n1(not_carry,carry);
and JumpDecider_a1(LongBr_out,LongBr,LongBrMUX_out);
MUX_4to1 #(.WIDTH(1)) LongBrMUX (.in0(hardwired_one),.in1(hardwired_one),.in2(carry),.in3(not_carry),.sel(LongBrType),.out(LongBrMUX_out));

endmodule
