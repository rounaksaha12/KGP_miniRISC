`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:47:28 11/08/2022 
// Design Name: 
// Module Name:    MUX_16to1 
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
module MUX_10to1 #(parameter WIDTH=32) 
(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,out,sel);

/*
this module as such is not required in the datapath
this is required to select a register whose value is to
be output from the top module, to facilitate the demonstration
of working of linear search and bubble sort on the processor

we would basically have access to view the contents of the first 
10 registers of the register file
*/

input [WIDTH-1:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9;
input [3:0] sel;

output reg [WIDTH-1:0] out;

always@(*)
begin

    case(sel)
        4'b0000: out=in0;
        4'b0001: out=in1;
        4'b0010: out=in2;
        4'b0011: out=in3;
        4'b0100: out=in4;
        4'b0101: out=in5;
        4'b0110: out=in6;
        4'b0111: out=in7;
        4'b1000: out=in8;
        4'b1001: out=in9;
        default: out=0;
    endcase

end


endmodule
