`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:02 11/04/2022
// Design Name:   ALU_32bit
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/ALU_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_32bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg AddrSrcBSel;
	reg [1:0] PrimaryOutputSel;
	reg [1:0] ShifterInputSel;
	reg [1:0] ShiftTypeALU;
	reg [4:0] ShiftAmntALU;
	reg ShifterEnblALU;

	// Outputs
	wire [31:0] ALUOut;
	wire ALUc_out;
	wire MSB;
	wire ALUzero;

	// Instantiate the Unit Under Test (UUT)
	ALU_32bit uut (
		.a(a), 
		.b(b), 
		.AddrSrcBSel(AddrSrcBSel), 
		.PrimaryOutputSel(PrimaryOutputSel), 
		.ShifterInputSel(ShifterInputSel), 
		.ShiftTypeALU(ShiftTypeALU), 
		.ShiftAmntALU(ShiftAmntALU), 
		.ShifterEnblALU(ShifterEnblALU), 
		.ALUOut(ALUOut), 
		.ALUc_out(ALUc_out), 
		.MSB(MSB), 
		.ALUzero(ALUzero)
	);
	
	initial begin
	$monitor("ALUOut=%d,ALUc_out=%d,MSB=%d,ALUzero=%d",$signed(ALUOut),ALUc_out,MSB,ALUzero);
	end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		AddrSrcBSel = 0;
		PrimaryOutputSel = 1;
		ShifterInputSel = 0;
		ShiftTypeALU = 0;
		ShiftAmntALU = 0;
		ShifterEnblALU = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a<=32'd5;
		b<=32'd6;
		AddrSrcBSel<=1'b1;
		PrimaryOutputSel<=2'd1;

		#10;
		a<=32'd1245;
		b<=32'd7836;
		AddrSrcBSel<=1'b0;
		PrimaryOutputSel<=2'd1;
		
		#10;
		a<=32'd1245;
		b<=32'd7836;
		AddrSrcBSel<=1'b1;
		PrimaryOutputSel<=2'd1;

		#10;
		a<=32'd1245;
		b<=32'd1245;
		AddrSrcBSel<=1'b1;
		PrimaryOutputSel<=2'd1;

		#10;
		a<=-32'd1;
		b<=32'd1;
		AddrSrcBSel<=1'b0;
		PrimaryOutputSel<=2'd1;

		#10;
		a<=32'd5;
		b<=32'd6;
		AddrSrcBSel<=1'b0;
		PrimaryOutputSel<=2'd1;
		ShifterEnblALU<=1'b1;
		ShiftAmntALU<=5'd2;

		#10;
		a<=-32'd2147483647;
		b<=32'd6;
		AddrSrcBSel<=1'b0;
		PrimaryOutputSel<=2'd1;
		ShifterEnblALU<=1'b1;
		ShiftAmntALU<=5'd1;
		ShiftTypeALU<=2'd3;

		#10 $finish;
        
		// Add stimulus here

	end
      
endmodule

