`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:10:31 11/04/2022
// Design Name:   JumpDecider
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/jump_dec_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JumpDecider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jump_dec_tb;

	// Inputs
	reg carry;
	reg LongBr;
	reg [1:0] LongBrType;

	// Outputs
	wire LongBr_out;

	// Instantiate the Unit Under Test (UUT)
	JumpDecider uut (
		.carry(carry), 
		.LongBr(LongBr), 
		.LongBrType(LongBrType), 
		.LongBr_out(LongBr_out)
	);
	
	initial begin
		$monitor("decission=%b",LongBr_out);
	end
	
	initial begin
		// Initialize Inputs
		carry = 0;
		LongBr = 0;
		LongBrType = 0;

		// Wait 100 ns for global reset to finish
		#100;
		LongBr<=1;
		LongBrType<=2'b00;
		
		#10;
		LongBr<=0;
		LongBrType<=2'b00;
		
		#10
		LongBr<=1;
		LongBrType<=2'b10;
		carry<=1;
		
		#10
		LongBr<=1;
		LongBrType<=2'b10;
		carry<=0;
		
		#10
		LongBr<=1;
		LongBrType<=2'b11;
		carry<=1;
		
		#10
		LongBr<=1;
		LongBrType<=2'b11;
		carry<=0;
		
		#10
		LongBr<=0;
		LongBrType<=2'b10;
		carry<=1;
		
		#10
		LongBr<=0;
		LongBrType<=2'b10;
		carry<=0;
		
		#10
		LongBr<=0;
		LongBrType<=2'b11;
		carry<=1;
		
		#10
		LongBr<=0;
		LongBrType<=2'b11;
		carry<=0;
		
		#10
		LongBr<=1;
		LongBrType<=2'b00;
		carry<=0;
		
		#10
		LongBr<=1;
		LongBrType<=2'b00;
		carry<=1;
		
		#10
		LongBr<=1;
		LongBrType<=2'b01;
		carry<=0;
		
		#10
		LongBr<=1;
		LongBrType<=2'b01;
		carry<=1;
		
		#10
		$finish;
        
		// Add stimulus here

	end
      
endmodule

