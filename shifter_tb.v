`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:07:25 11/04/2022
// Design Name:   SHIFTER
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/shifter_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SHIFTER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shifter_tb;

	// Inputs
	reg [31:0] a;
	reg [1:0] ShiftTypeSHIFTER;
	reg [4:0] ShiftAmntSHIFTER;
	reg ShifterEnblSHIFTER;

	// Outputs
	wire [31:0] SHIFTERout;

	// Instantiate the Unit Under Test (UUT)
	SHIFTER uut (
		.a(a), 
		.ShiftTypeSHIFTER(ShiftTypeSHIFTER), 
		.ShiftAmntSHIFTER(ShiftAmntSHIFTER), 
		.ShifterEnblSHIFTER(ShifterEnblSHIFTER), 
		.SHIFTERout(SHIFTERout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		ShiftTypeSHIFTER = 0;
		ShiftAmntSHIFTER = 0;
		ShifterEnblSHIFTER = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a<=32'd11;
		ShiftAmntSHIFTER<=5'd2;

		#10;
		ShifterEnblSHIFTER<=1'b1;

		#10 $finish;
        
		// Add stimulus here

	end
      
endmodule

