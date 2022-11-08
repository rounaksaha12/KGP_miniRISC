`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:58:10 11/08/2022
// Design Name:   CPU_TOP_WITH_CONTROL
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/twc_2.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_TOP_WITH_CONTROL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module twc_2;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] r0;
	wire [31:0] r1;
	wire [31:0] r2;
	wire [31:0] r3;
	wire [31:0] r4;
	wire [31:0] r5;
	wire [31:0] r31;
	wire [31:0] PC_OUT;

	// Instantiate the Unit Under Test (UUT)
	CPU_TOP_WITH_CONTROL uut (
		.clk(clk), 
		.rst(rst), 
		.r0(r0), 
		.r1(r1), 
		.r2(r2), 
		.r3(r3), 
		.r4(r4), 
		.r5(r5), 
		.r31(r31), 
		.PC_OUT(PC_OUT)
	);
	
	always #10 clk=~clk;
	
	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst<=0;
		
		
        
		// Add stimulus here

	end
      
endmodule

