`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:10:44 11/05/2022
// Design Name:   bram_check
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/bram_check_2_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bram_check
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bram_check_2_tb;

	// Inputs
	reg clk;
	reg rst;
	reg wrEna;

	// Outputs
	wire [31:0] out;
	wire [31:0] d_out;

	// Instantiate the Unit Under Test (UUT)
	bram_check uut (
		.clk(clk), 
		.rst(rst), 
		.wrEna(wrEna), 
		.out(out), 
		.d_out(d_out)
	);
	always #10 clk=~clk;
	
	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		wrEna = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst<=0;
		wrEna<=1'd1;

	end
      
endmodule

