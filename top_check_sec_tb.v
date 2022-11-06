`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:53:34 11/06/2022
// Design Name:   CPU_TOP_MODULE
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/top_check_sec_tb.v
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

module top_check_sec_tb;

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
		.PC_OUT(PC_OUT)
	);

	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		RegWrite = 0;
		ImmSel = 0;
		ALUSrc = 0;
		CompEnbl = 0;
		ShiftAmntSel = 0;
		ShiftEnbl = 0;
		ShortBr = 0;
		LongBr = 0;
		MemRead = 0;
		MemWrite = 0;
		BranchReg = 0;
		ALUOp = 0;
		RegDst = 0;
		ShiftType = 0;
		BranchType = 0;
		JumpType = 0;
		MemToReg = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst <= 0;
		/*
		addi 0,5
		addi 1,69
		addi 4,3
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
		/*compi 0,7*/
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
		/*addi 2,-26*/
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
		/*add 4,2*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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
		/*comp 3,4*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 1;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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
		/*and 1,3*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b10;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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
		/*xor 0,1*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b11;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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
		/*addi 0,2*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 1;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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
		/*and 2,4*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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
		/*branch 7*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
		BranchType <= 0;
		ShortBr <= 0;
		JumpType <= 2'b00;
		LongBr <= 1;
		MemRead <= 0;
		MemWrite <= 0;
		MemToReg <= 2'b00;
		BranchReg <= 0;
		RegWrite <= 0;
		
				#20;
		/*comp 3,4*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 1;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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
		/*and 1,3*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b10;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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
		/*xor 0,1*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b11;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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
		/*addi 0,2*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 1;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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
		/*and 2,4*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
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

