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
module RegFile(clk,rst,rsAdd,rtAdd,wrAdd,wrData,wrEnable,rsOut,rtOut,/**/r0,r1,r2,r3,r4,r5/**/);
input clk,rst;
input [4:0] rsAdd,rtAdd,wrAdd;
input [31:0] wrData;
input wrEnable;
output [31:0] rsOut,rtOut;
output [31:0] r0,r1,r2,r3,r4,r5;

reg [31:0] Registers[31:0];

assign rsOut=Registers[rsAdd];
assign rtOut=Registers[rtAdd];

/**/
assign r0=Registers[0];
assign r1=Registers[1];
assign r2=Registers[2];
assign r3=Registers[3];
assign r4=Registers[4];
assign r5=Registers[5];
/**/

always@(posedge clk or posedge rst)
begin
		if(rst)
		begin
				Registers[0]<=0;
				Registers[1]<=0;
				Registers[2]<=0;
				Registers[3]<=0;
				Registers[4]<=0;
				Registers[5]<=0;
				Registers[6]<=0;
				Registers[7]<=0;
				Registers[8]<=0;
				Registers[9]<=0;
				Registers[10]<=0;
				Registers[11]<=0;
				Registers[12]<=0;
				Registers[13]<=0;
				Registers[14]<=0;
				Registers[15]<=0;
				Registers[16]<=0;
				Registers[17]<=0;
				Registers[18]<=0;
				Registers[19]<=0;
				Registers[20]<=0;
				Registers[21]<=0;
				Registers[22]<=0;
				Registers[23]<=0;
				Registers[24]<=0;
				Registers[25]<=0;
				Registers[26]<=0;
				Registers[27]<=0;
				Registers[28]<=0;
				Registers[29]<=0;
				Registers[30]<=0;
				Registers[31]<=0;
		end
		
		else
		begin
				if(wrEnable)
						Registers[wrAdd]<=wrData;
		end
end

endmodule
