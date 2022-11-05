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
module Register #(parameter WIDTH=32) (D,clk,rst,RegWrEnbl,Q);
input [WIDTH-1:0] D;
input clk,rst,RegWrEnbl;
output reg [WIDTH-1:0] Q;

always@(posedge clk or posedge rst)
    begin
        if(rst)
				begin
					Q<=0;
				end
        else
				if(RegWrEnbl)
					begin
						Q<=D;
					end
    end


endmodule
