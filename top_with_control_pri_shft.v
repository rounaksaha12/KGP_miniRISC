`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:26:43 11/08/2022
// Design Name:   CPU_TOP_WITH_CONTROL
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/top_with_control_pri_shft.v
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

module top_with_control_pri_shft;

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
		rst <= 0;
		/*
		addi 0,5
		addi 1,69
		addi 4,47
		*/
		
		
		#80;
		/*shll $0,2*/
		
		
		#20;
		/*shrl $1,3*/
		
		
		#20;
		/*compi $0,-2*/
		
		
		#20;
		/*compi $2,-1*/
		
		
		#20;
		/*shrlv $4,$0*/
		
		#20;
		/*shllv $1,$2*/
		
		#20;
		/*addi $3,-3*/
		
		
		#20;
		/*shra $3,1*/
		
		
		#20;
		/*shrav $3,$2*/
		
		
		#40 $finish;
		// Add stimulus here

	end
      
endmodule

