`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:37:28 11/07/2022
// Design Name:   CPU_TOP_MODULE
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/shift_tb.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_TOP_MODULE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shift_tb;

	// Inputs
	reg clk;
	reg rst;
	reg RegWrite;
	reg ImmSel;
	reg ALUSrc;
	reg CompEnbl;
	reg ShiftAmntSel;
	reg ShiftEnbl;
	reg ShortBr;
	reg LongBr;
	reg MemRead;
	reg MemWrite;
	reg BranchReg;
	reg [1:0] ALUOp;
	reg [1:0] RegDst;
	reg [1:0] ShiftType;
	reg [1:0] BranchType;
	reg [1:0] JumpType;
	reg [1:0] MemToReg;

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
	CPU_TOP_MODULE uut (
		.clk(clk), 
		.rst(rst), 
		.RegWrite(RegWrite), 
		.ImmSel(ImmSel), 
		.ALUSrc(ALUSrc), 
		.CompEnbl(CompEnbl), 
		.ShiftAmntSel(ShiftAmntSel), 
		.ShiftEnbl(ShiftEnbl), 
		.ShortBr(ShortBr), 
		.LongBr(LongBr), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.BranchReg(BranchReg), 
		.ALUOp(ALUOp), 
		.RegDst(RegDst), 
		.ShiftType(ShiftType), 
		.BranchType(BranchType), 
		.JumpType(JumpType), 
		.MemToReg(MemToReg), 
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
		RegWrite <= 1;
		ImmSel <= 0;
		ALUSrc <= 1;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShortBr <= 0;
		LongBr <= 0;
		MemRead <= 0;
		MemWrite <= 0;
		BranchReg <= 0;
		ALUOp <= 2'b01;
		RegDst <= 2'b00;
		ShiftType <= 0;
		BranchType <= 0;
		JumpType <= 2'b00;
		MemToReg <= 2'b00;
		
		#80;
		/*shll $0,2*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 1;
		ShiftType <= 2'b00;
		BranchType <= 0;
		ShortBr <= 0;
		JumpType <= 2'b00;
		LongBr <= 0;
		MemRead <= 0;
		MemWrite <= 0;
		MemToReg <= 2'b00;
		BranchReg <= 0;
		RegWrite <= 1;
		
		#20;
		/*shrl $1,3*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 1;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 1;
		ShiftType <= 2'b01;
		BranchType <= 0;
		ShortBr <= 0;
		JumpType <= 2'b00;
		LongBr <= 0;
		MemRead <= 0;
		MemWrite <= 0;
		MemToReg <= 2'b00;
		BranchReg <= 0;
		RegWrite <= 1;
		
		#20;
		/*compi $0,-2*/
		RegWrite <= 1;
		ImmSel <= 0;
		ALUSrc <= 1;
		CompEnbl <= 1;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShortBr <= 0;
		LongBr <= 0;
		MemRead <= 0;
		MemWrite <= 0;
		BranchReg <= 0;
		ALUOp <= 2'b01;
		RegDst <= 2'b00;
		ShiftType <= 0;
		BranchType <= 0;
		JumpType <= 2'b00;
		MemToReg <= 2'b00;
		
		#20;
		/*compi $2,-1*/
		RegWrite <= 1;
		ImmSel <= 0;
		ALUSrc <= 1;
		CompEnbl <= 1;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShortBr <= 0;
		LongBr <= 0;
		MemRead <= 0;
		MemWrite <= 0;
		BranchReg <= 0;
		ALUOp <= 2'b01;
		RegDst <= 2'b00;
		ShiftType <= 0;
		BranchType <= 0;
		JumpType <= 2'b00;
		MemToReg <= 2'b00;
		
		#20;
		/*shrlv $4,$0*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 1;
		ShiftEnbl <= 1;
		ShiftType <= 2'b01;
		BranchType <= 0;
		ShortBr <= 0;
		JumpType <= 2'b00;
		LongBr <= 0;
		MemRead <= 0;
		MemWrite <= 0;
		MemToReg <= 2'b00;
		BranchReg <= 0;
		RegWrite <= 1;
		
		#20;
		/*shllv $1,$2*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 1;
		ShiftEnbl <= 1;
		ShiftType <= 2'b00;
		BranchType <= 0;
		ShortBr <= 0;
		JumpType <= 2'b00;
		LongBr <= 0;
		MemRead <= 0;
		MemWrite <= 0;
		MemToReg <= 2'b00;
		BranchReg <= 0;
		RegWrite <= 1;
		
		#20;
		/*addi $3,-3*/
		RegWrite <= 1;
		ImmSel <= 0;
		ALUSrc <= 1;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShortBr <= 0;
		LongBr <= 0;
		MemRead <= 0;
		MemWrite <= 0;
		BranchReg <= 0;
		ALUOp <= 2'b01;
		RegDst <= 2'b00;
		ShiftType <= 0;
		BranchType <= 0;
		JumpType <= 2'b00;
		MemToReg <= 2'b00;
		
		#20;
		/*shra $3,1*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 1;
		ShiftType <= 2'b10;
		BranchType <= 0;
		ShortBr <= 0;
		JumpType <= 2'b00;
		LongBr <= 0;
		MemRead <= 0;
		MemWrite <= 0;
		MemToReg <= 2'b00;
		BranchReg <= 0;
		RegWrite <= 1;
		
		#20;
		/*shrav $3,$2*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 1;
		ShiftEnbl <= 1;
		ShiftType <= 2'b10;
		BranchType <= 0;
		ShortBr <= 0;
		JumpType <= 2'b00;
		LongBr <= 0;
		MemRead <= 0;
		MemWrite <= 0;
		MemToReg <= 2'b00;
		BranchReg <= 0;
		RegWrite <= 1;
		
		#40 $finish;
		// Add stimulus here

	end
      
endmodule

