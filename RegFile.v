`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:41:50 10/20/2022 
// Design Name: 
// Module Name:    RegFile 
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
module RegFile(clk,rst,rsAdd,rtAdd,wrAdd,WrData,wrEnable,rsOut,rtOut);
input clk,rst;
input [4:0] rsAdd,rtAdd,wrAdd;
input [31:0] wrData;
input WrEnable;
output [31:0] rsOut,rtOut;

reg [31:0] Registers[31:0];

assign rsOut=Registers[rsAdd];
assign rtOUt=Registers[rtAdd];

always@(posedge clk or posedge rst)
begin
		if(rst)
		begin
				Registers<=0;
		end
		
		else
		begin
				if(WrEnable)
						Registers[wrAdd]<=WrData;
		end
end

endmodule
