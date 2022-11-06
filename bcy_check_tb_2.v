`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:22:46 11/07/2022
// Design Name:   CPU_TOP_MODULE
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/bcy_check_tb_2.v
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

module bcy_check_tb_2;

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
	wire [31:0] PC_IN;
	wire [31:0] INSTRUCTION;
	wire [31:0] READ_REG1;
	wire [31:0] READ_REG2;
	wire [31:0] IMM_16BIT_SE;
	wire [31:0] IMM_21BIT_SE;
	wire [31:0] IMM_To_ALU;
	wire [31:0] ALUSrcA;
	wire [31:0] ALUSrcB;
	wire [31:0] ALU_RES;
	wire [31:0] BRANCH_DECN;
	wire [31:0] JUMP_DECN;
	wire [31:0] PC_PLUS_4;
	wire [31:0] OFFSET;
	wire [31:0] PC_PLUS_4_PLUS_OFFSET;
	wire [31:0] REG_WRITE_DATA;
	wire [31:0] MEM_READ_DATA;
	wire [4:0] WRITE_REG;
	wire [4:0] SHIFT_AMNT;
	wire ALU_RES_ZERO;
	wire ALU_RES_MSB;
	wire ALU_RES_CARRY;
	wire CARRY_FLAG;
	wire BRANCH_DECIDE_SEL;
	wire JUMP_DECIDE_SEL;
	wire [11:0] I_CACHE_ADDR_IN;

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
		.PC_OUT(PC_OUT), 
		.PC_IN(PC_IN), 
		.INSTRUCTION(INSTRUCTION), 
		.READ_REG1(READ_REG1), 
		.READ_REG2(READ_REG2), 
		.IMM_16BIT_SE(IMM_16BIT_SE), 
		.IMM_21BIT_SE(IMM_21BIT_SE), 
		.IMM_To_ALU(IMM_To_ALU), 
		.ALUSrcA(ALUSrcA), 
		.ALUSrcB(ALUSrcB), 
		.ALU_RES(ALU_RES), 
		.BRANCH_DECN(BRANCH_DECN), 
		.JUMP_DECN(JUMP_DECN), 
		.PC_PLUS_4(PC_PLUS_4), 
		.OFFSET(OFFSET), 
		.PC_PLUS_4_PLUS_OFFSET(PC_PLUS_4_PLUS_OFFSET), 
		.REG_WRITE_DATA(REG_WRITE_DATA), 
		.MEM_READ_DATA(MEM_READ_DATA), 
		.WRITE_REG(WRITE_REG), 
		.SHIFT_AMNT(SHIFT_AMNT), 
		.ALU_RES_ZERO(ALU_RES_ZERO), 
		.ALU_RES_MSB(ALU_RES_MSB), 
		.ALU_RES_CARRY(ALU_RES_CARRY), 
		.CARRY_FLAG(CARRY_FLAG), 
		.BRANCH_DECIDE_SEL(BRANCH_DECIDE_SEL), 
		.JUMP_DECIDE_SEL(JUMP_DECIDE_SEL), 
		.I_CACHE_ADDR_IN(I_CACHE_ADDR_IN)
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
		/*add 2,4*/
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
		/*compi $0,1*/
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
		/*addi $1,-4*/
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
		/*14: addi $1,1*/
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
		/*bcy 10*/
		RegDst <= 2'b00;
		ImmSel <= 0;
		ALUSrc <= 0;
		ALUOp <= 2'b01;
		CompEnbl <= 0;
		ShiftAmntSel <= 0;
		ShiftEnbl <= 0;
		ShiftType <= 0;
		BranchType <= 2'b11;
		ShortBr <= 1;
		JumpType <= 2'b10;
		LongBr <= 1;
		MemRead <= 0;
		MemWrite <= 0;
		MemToReg <= 2'b00;
		BranchReg <= 0;
		RegWrite <= 0;
		
		#20;
		/*addi $4,32*/
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
		
      #40 $finish;
		// Add stimulus here

	end
      
endmodule

