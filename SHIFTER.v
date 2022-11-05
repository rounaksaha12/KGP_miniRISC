`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:54 10/21/2022 
// Design Name: 
// Module Name:    SHIFTER 
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
module SHIFTER(a,ShiftTypeSHIFTER,ShiftAmntSHIFTER,ShifterEnblSHIFTER,SHIFTERout);
input ShifterEnblSHIFTER;
input [31:0] a;
input [1:0] ShiftTypeSHIFTER;
input [4:0] ShiftAmntSHIFTER;
output reg [31:0] SHIFTERout;
/*
shift type:
00		left logical
01		left arithmetic
10		right logical
11		right arithmetic
*/

always@(*)
begin

if(!ShifterEnblSHIFTER)
begin
	SHIFTERout=a;
end

else
begin
	case(ShiftTypeSHIFTER)
			2'b00: SHIFTERout=a<<ShiftAmntSHIFTER;
			2'b01: SHIFTERout=a<<<ShiftAmntSHIFTER;
			2'b10: SHIFTERout=a>>ShiftAmntSHIFTER;
			2'b11: SHIFTERout=$signed(a)>>>ShiftAmntSHIFTER;
	endcase
end

end

endmodule
