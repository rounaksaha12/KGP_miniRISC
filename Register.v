`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:22 10/20/2022 
// Design Name: 
// Module Name:    Register 
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
module Register(D,clk,rst,RegWrEnbl,Q);
input [31:0] D;
input clk,rst;
output [31:0] Q;

always@(posedge clk or posedge rst)
    begin
        if(rst)
				begin
					Q<=32'd0;
				end
        else
				if(RegWrEnbl)
					begin
						Q<=D;
					end
    end


endmodule
