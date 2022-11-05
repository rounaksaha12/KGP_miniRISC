`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:41:55 11/05/2022
// Design Name:   bram_write_check
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/bram_write_check_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bram_write_check
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bram_write_check_tb;

	// Inputs
	reg clk;
	reg MemwrEna;
	reg [12:0] addr;
	reg [31:0] din;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	bram_write_check uut (
		.clk(clk), 
		.MemwrEna(MemwrEna), 
		.addr(addr), 
		.din(din), 
		.out(out)
	);
	
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		MemwrEna = 0;
		addr = 0;
		din = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		MemwrEna<=1'd1;
		din<=32'd69;
		
		#20
		MemwrEna<=1'd0;
		
		#20
		addr<=13'd1;
		
		#20
		MemwrEna<=1'd1;
		din<=32'd459;
		
		#20
		MemwrEna<=1'd0;
		
		
        
		// Add stimulus here

	end
      
endmodule

