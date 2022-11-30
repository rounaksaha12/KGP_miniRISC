`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:04 10/26/2022 
// Design Name: 
// Module Name:    DIFF_32bit 
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
module DIFF_32bit(a,b,DIFFout);
input [31:0] a;
input [31:0] b;
output reg [31:0] DIFFout;
integer i,check;
always @(a or b)
begin
	check = 0;
	for(i=0;i<32;i=i+1)
		begin
		if ((a[i] == b[i]))
		begin
			DIFFout[i] = 1'b0;
		end
		else if(check == 1)
		begin
			DIFFout[i] = 1'b0;
		end
		else
		begin
			DIFFout[i] = 1'b1;
			check = 1;
		end
		end
end


endmodule
