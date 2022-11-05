`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:28 11/05/2022 
// Design Name: 
// Module Name:    bram_write_check 
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
module bram_write_check(
						input clk,
						input MemwrEna,
						input [12:0] addr,
						input [31:0] din,
						output [31:0] out);
						
READ_WRITE_MEM DATA_MEM (
  .clka(clk), // input clka
  .ena(1'b1), // input ena
  .wea(MemwrEna), // input [0 : 0] wea
  .addra(addr), // input [12 : 0] addra
  .dina(din), // input [31 : 0] dina
  .douta(out) // output [31 : 0] douta
);

endmodule
