`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:42 11/05/2022 
// Design Name: 
// Module Name:    bram_check 
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
module bram_check(input clk,
						input rst,
						input wrEna,
						output [31:0] out,
						output [31:0] d_out);

wire [31:0] d_in;

Register PC(.Q(d_out),.D(d_in),.clk(clk),.rst(rst),.RegWrEnbl(wrEna));
ADDR_32bit add(.a(d_out),.b(32'd1),.c_in(1'd0),.ADDRout(d_in),.ADDRc_out());

READ_ONLY_MEM I_CACHE (
  .clka(clk), // input clka
  .addra(d_out[11:0]), // input [11 : 0] addra
  .douta(out) // output [31 : 0] douta
);



endmodule
