`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:11:36 11/05/2022
// Design Name:   Register
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/register_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_tb;

	// Inputs
	reg [31:0] D;
	reg clk;
	reg rst;
	reg RegWrEnbl;

	// Outputs
	wire [31:0] Q;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.D(D), 
		.clk(clk), 
		.rst(rst), 
		.RegWrEnbl(RegWrEnbl), 
		.Q(Q)
	);
	
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		D = 32'd5;
		clk = 1;
		rst = 1;
		RegWrEnbl = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst<=0;
		D<=32'd6;
		
		#20
		D<=32'd7;
		
		#20
		D<=32'd8;
		
		#20;
		RegWrEnbl<=0;
		D<=32'd9;
		
		#20;
		D<=32'd10;
		
		#20
		D<=32'd11;
		RegWrEnbl<=1;
		
		#20
		D<=32'd12;
		
		#20
		D<=32'd13;
		
		#20
		$finish;
        
		// Add stimulus here

	end
      
endmodule

