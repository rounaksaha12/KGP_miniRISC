`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:45 10/28/2022 
// Design Name: 
// Module Name:    control 
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
module control(opcode,
					func,
					reg_dest_sel,
					reg_write,
					immediate_sel,
					alu_src_sel,
					comp_enb,
					alu_operation_sel,
					shft_type_sel,
					shft_amt_sel,
					shft_enb,
					branch_type,
					short_branch,
					jump_type,
					long_branch,
					mem_read,
					mem_write,
					reg_write_value_sel,
					branch_reg);

/*all control signals enclosed in this verilog*/

/*opcode is first 6 bits of the instruction and func the last 6 bits*/
/*opcode is the [31-26] bits of the instruction and func is the [5-0] bits of instruction where lsb is indexed 0*/
/*16 control signals in total*/

input  [5:0] opcode;
input  [5:0] func;
output reg [1:0] reg_dest_sel;
output reg reg_write;
output reg immediate_sel;
output reg alu_src_sel;
output reg comp_enb;
output reg [1:0] alu_operation_sel;
output reg [1:0] shft_type_sel;
output reg shft_amt_sel;
output reg shft_enb;
output reg [1:0] branch_type;
output reg short_branch;
output reg [1:0] jump_type;
output reg long_branch;
output reg mem_read;
output reg mem_write;
output reg [1:0] reg_write_value_sel;
output reg branch_reg;
assign R_format = (~opcode[5])&(~opcode[4])&(~opcode[3]);
/*this wire stores the boolean value whether the instruction is a R-format instruction or not*/

/*if anything changes we recompute the control signals*/
/*combinatorial logic created for control unit*/
always @(*) begin
	/*chance of mistake exists here*/
	reg_dest_sel = {opcode[5],opcode[4]};
	reg_write = (R_format&(~func[5]|~func[4]|~func[3]))|(~opcode[5]&~opcode[4]&opcode[3])|(~opcode[2]&~opcode[1]&opcode[0]);
	immediate_sel = opcode[4];
	alu_src_sel = opcode[3];
	comp_enb = (R_format&func[3]&func[0])|(~opcode[5]&~opcode[4]&opcode[3]&~opcode[2]&~opcode[1]&opcode[0]);
	shft_type_sel = {func[1],func[0]};
	shft_amt_sel = func[2];
	shft_enb = R_format&(~func[5])&(~func[4])&(~func[3]);
	branch_type = {opcode[2],opcode[1]};
	short_branch = opcode[5]&(~opcode[4])&opcode[3];
	jump_type = {opcode[1],opcode[0]};
	long_branch = opcode[5]&(~opcode[4])&(~opcode[3]);
	mem_read = (~opcode[5])&opcode[4]&opcode[3];
	mem_write = opcode[5]&opcode[4]&opcode[3];
	reg_write_value_sel = {opcode[5],opcode[4]};
	alu_operation_sel = {R_format & func[4],(R_format & func[3]) | ~R_format};
	branch_reg = R_format&func[5]&func[4];
end



endmodule
