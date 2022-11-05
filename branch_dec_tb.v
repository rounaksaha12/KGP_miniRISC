`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:41:34 11/05/2022
// Design Name:   BranchDecider
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/branch_dec_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BranchDecider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module branch_dec_tb;

	// Inputs
	reg zero;
	reg MSB;
	reg ShortBr;
	reg [1:0] ShortBrType;

	// Outputs
	wire ShortBr_out;

	// Instantiate the Unit Under Test (UUT)
	BranchDecider uut (
		.zero(zero), 
		.MSB(MSB), 
		.ShortBr(ShortBr), 
		.ShortBrType(ShortBrType), 
		.ShortBr_out(ShortBr_out)
	);
	
	initial begin
		$monitor("decission=%b",ShortBr_out);
	end

	initial begin
		// Initialize Inputs
		zero = 0;
		MSB = 0;
		ShortBr = 0;
		ShortBrType = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		#10
		zero<=0;
		MSB<=1;
		ShortBr<=1;
		ShortBrType<=2'b10;
		
		#10
		zero<=1;
		MSB<=0;
		ShortBr<=1;
		ShortBrType<=2'b10;
		
		#10
		zero<=0;
		MSB<=0;
		ShortBr<=1;
		ShortBrType<=2'b11;
		
		#10
		zero<=1;
		MSB<=1;
		ShortBr<=1;
		ShortBrType<=2'b11;
		
		#10
		zero<=1;
		MSB<=0;
		ShortBr<=1;
		ShortBrType<=2'b01;
		
		#10
		zero<=0;
		MSB<=1;
		ShortBr<=1;
		ShortBrType<=2'b01;
		
		#10
		$finish;
        
		// Add stimulus here

	end
      
endmodule

