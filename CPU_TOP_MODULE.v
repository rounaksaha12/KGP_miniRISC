`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:17 10/27/2022 
// Design Name: 
// Module Name:    CPU_TOP_MODULE 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

/*major changes nov 6 11:40*/

module CPU_TOP_MODULE(clk,rst,/**/RegWrite,ImmSel,ALUSrc,CompEnbl,ShiftAmntSel,ShiftEnbl,ShortBr,LongBr,MemRead,MemWrite,BranchReg,ALUOp,RegDst,ShiftType,BranchType,JumpType,MemToReg,r0,r1,r2,r3,r4,r5,r31/**/,/***/PC_OUT/***/);
input clk,rst;
output [31:0] r0,r1,r2,r3,r4,r5,r31,/***/PC_OUT/***/;

wire [31:0] PC_IN,/***//*PC_OUT,*//***/INSTRUCTION,READ_REG1,READ_REG2,IMM_16BIT_SE/*16 bit immediate sign extended*/,IMM_21BIT_SE/*32 bit immediate sign extended*/,IMM_To_ALU,ALUSrcA,ALUSrcB,ALU_RES,BRANCH_DECN,JUMP_DECN,PC_PLUS_4,OFFSET,PC_PLUS_4_PLUS_OFFSET,REG_WRITE_DATA,MEM_READ_DATA;
wire [4:0] WRITE_REG,SHIFT_AMNT;

/* Control signals*/
wire /**//*RegWrite,ImmSel,ALUSrc,CompEnbl,ShiftAmntSel,ShiftEnbl,ShortBr,LongBr,MemRead,MemWrite,BranchReg,*//**/ALU_RES_ZERO,ALU_RES_MSB,ALU_RES_CARRY,CARRY_FLAG,BRANCH_DECIDE_SEL,JUMP_DECIDE_SEL;
/**//*wire [1:0] ALUOp,RegDst,ShiftType,BranchType,JumpType,MemToReg;*//**/

/**/
/*control signals*/
input RegWrite,ImmSel,ALUSrc,CompEnbl,ShiftAmntSel,ShiftEnbl,ShortBr,LongBr,MemRead,MemWrite,BranchReg;
input [1:0] ALUOp,RegDst,ShiftType,BranchType,JumpType,MemToReg;
/**/

/***/
wire [11:0] I_CACHE_ADDR_IN;
/***/

/* Program Counter */
Register PC(.D(PC_IN),.clk(clk),.rst(rst),.RegWrEnbl(1'b1),.Q(PC_OUT));

/***/
MUX_2to1 #(.WIDTH(12)) I_CACHE_ADDR_SELECTOR_MUX(.in0(PC_IN[11:0]),.in1(12'd0),.out(I_CACHE_ADDR_IN),.sel(rst));
/***/

/* Instruction Cache */
READ_ONLY_MEM I_CACHE (
  .clka(clk), // input clka
  .addra(/*PC_OUT[11:0]*//***/I_CACHE_ADDR_IN/***/), // input [11 : 0] addra
  .douta(INSTRUCTION) // output [31 : 0] douta
);

/* Register file write selector MUX */
MUX_4to1 #(.WIDTH(5)) REGISTER_WRITE_SELECTOR_MUX(.in0(INSTRUCTION[25:21]),.in1(INSTRUCTION[20:16]),.in2(5'b11111),.in3(/*DONT CARE*/5'b00000),.out(WRITE_REG),.sel(RegDst));

/* Register file */
RegFile REG_FILE(.clk(clk),.rst(rst),.rsAdd(INSTRUCTION[25:21]),.rtAdd(INSTRUCTION[20:16]),.wrAdd(WRITE_REG),.wrData(REG_WRITE_DATA),.wrEnable(RegWrite),.rsOut(READ_REG1),.rtOut(READ_REG2),/**/.r0(r0),.r1(r1),.r2(r2),.r3(r3),.r4(r4),.r5(r5),.r31(r31)/**/);
/* regfile remaining wires: write data */

/* Immdiate field sign extender modules */
SIGN_EXTND IMM_SE_16(.in(INSTRUCTION[15:0]),.out(IMM_16BIT_SE));
SIGN_EXTND #(.INPUT_WIDTH(21)) IMM_SE_21(.in(INSTRUCTION[20:0]),.out(IMM_21BIT_SE));

/* Immediate selector MUX*/
MUX_2to1 IMM_SELECTOR_MUX(.in0(IMM_21BIT_SE),.in1(IMM_16BIT_SE),.out(IMM_To_ALU),.sel(ImmSel));

/* ALU source B selector MUX */
MUX_2to1 ALUsrcB_SELECTOR_MUX(.in0(READ_REG2),.in1(IMM_To_ALU),.out(ALUSrcB),.sel(ALUSrc));

/* ALU source A selector MUX */
MUX_2to1 ALUsrcA_SELECTOR_MUX(.in0(READ_REG1),.in1(32'd0),.out(ALUSrcA),.sel(CompEnbl));

/* ALU shift amount selector MUX */
MUX_2to1 #(.WIDTH(5)) ALUshiftamnt_SELECTOR_MUX(.in0(INSTRUCTION[10:6]/*shamt*/),.in1(READ_REG2[4:0]),.out(SHIFT_AMNT),.sel(ShiftAmntSel));


/* main ALU */
ALU_32bit ALUmain(
  .a(ALUSrcA),
  .b(ALUSrcB),
  .AddrSrcBSel(CompEnbl),
  .PrimaryOutputSel(ALUOp),/*ALUOp*/
  .ShifterInputSel(ShiftEnbl),
  .ShiftTypeALU(ShiftType),
  .ShiftAmntALU(SHIFT_AMNT),
  .ShifterEnblALU(ShiftEnbl),
  .ALUOut(ALU_RES),
  .ALUc_out(ALU_RES_CARRY),
  .MSB(ALU_RES_MSB),
  .ALUzero(ALU_RES_ZERO)
  );

/* Data memory */
READ_WRITE_MEM DATA_MEM (
  .clka(~clk), // input clka
  .ena(1'b1), // input ena
  /* does the enable pin allow read? */
  .wea(MemWrite), // input [0 : 0] wea
  .addra(ALU_RES[12:0]), // input [12 : 0] addra
  .dina(READ_REG2), // input [31 : 0] dina
  .douta(MEM_READ_DATA) // output [31 : 0] douta
);

/* carry flip flop */
Register #(.WIDTH(1)) CARRY_FF(.D(ALU_RES_CARRY),.clk(clk),.rst(rst),.RegWrEnbl(1'd1),.Q(CARRY_FLAG));

/*  branch decider */
BranchDecider BRANCH_DECIDE(.zero(ALU_RES_ZERO),.MSB(ALU_RES_MSB),.ShortBr(ShortBr),.ShortBrType(BranchType),.ShortBr_out(BRANCH_DECIDE_SEL));

/* branch decider selectot MUX */
MUX_2to1 BRANCH_DECIDE_SELECTOR_MUX(.in0(PC_PLUS_4),.in1(PC_PLUS_4_PLUS_OFFSET),.out(BRANCH_DECN),.sel(BRANCH_DECIDE_SEL));

/* jump decider */
JumpDecider JUMP_DECIDE(.carry(CARRY_FLAG),.LongBr(LongBr),.LongBrType(JumpType),.LongBr_out(JUMP_DECIDE_SEL));

/* jump decider selector MUX */
/* long jump address = concat(PC[31:26],INSTRUCTION[25:0])*/
/* note that instruction memory is word addressed hence PC+4 is actually PC+1 and offsets/addresses are not multiples of 4, hence sign extension is not required */
MUX_2to1 JUMP_DECIDER_SELECTOR_MUX(.in0(BRANCH_DECN),.in1({PC_OUT[31:26],INSTRUCTION[25:0]}),.out(JUMP_DECN),.sel(JUMP_DECIDE_SEL)); 

/* branch register selector MUX */
MUX_2to1 BRANCH_REG_SELECTOR_MUX(.in0(JUMP_DECN),.in1(READ_REG1),.out(PC_IN),.sel(BranchReg));

/* pc + 1 adder */
ADDR_32bit PC_ADDR1(.a(32'd1),.b(PC_OUT),.c_in(1'd0),.ADDRout(PC_PLUS_4),.ADDRc_out());

/* offset sign extender */
SIGN_EXTND OFFSET_SIGN_EXTEND(.in(INSTRUCTION[15:0]),.out(OFFSET));

/* pc +1 + offset adder*/
ADDR_32bit PC_ADDR2(.a(PC_PLUS_4),.b(OFFSET),.c_in(1'd0),.ADDRout(PC_PLUS_4_PLUS_OFFSET),.ADDRc_out());

/* reg write data selector mux */
MUX_4to1 REG_WRITE_DATA_SELECTOR_MUX(.in0(ALU_RES),.in1(MEM_READ_DATA),.in2(PC_PLUS_4),.in3(32'd0/*dummy line*/),.out(REG_WRITE_DATA),.sel(MemToReg));


endmodule
