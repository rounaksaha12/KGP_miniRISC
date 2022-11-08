`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:15:57 11/06/2022
// Design Name:   control
// Module Name:   /home/swarup/Desktop/SEM_5/KGP_miniRISC_control/control_tb.v
// Project Name:  KGP_miniRISC_control
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_tb;

	// Inputs
	reg [5:0] opcode;
	reg [5:0] func;

	// Outputs
	wire [1:0] reg_dest_sel;
	wire reg_write;
	wire immediate_sel;
	wire alu_src_sel;
	wire comp_enb;
	wire [1:0] alu_operation_sel;
	wire shft_type_sel;
	wire shft_amt_sel;
	wire shft_enb;
	wire [1:0] branch_type;
	wire short_branch;
	wire [1:0] jump_type;
	wire long_branch;
	wire mem_read;
	wire mem_write;
	wire [1:0] reg_write_value_sel;
	wire branch_reg;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.opcode(opcode), 
		.func(func), 
		.reg_dest_sel(reg_dest_sel), 
		.reg_write(reg_write), 
		.immediate_sel(immediate_sel), 
		.alu_src_sel(alu_src_sel), 
		.comp_enb(comp_enb), 
		.alu_operation_sel(alu_operation_sel), 
		.shft_type_sel(shft_type_sel), 
		.shft_amt_sel(shft_amt_sel), 
		.shft_enb(shft_enb), 
		.branch_type(branch_type), 
		.short_branch(short_branch), 
		.jump_type(jump_type), 
		.long_branch(long_branch), 
		.mem_read(mem_read), 
		.mem_write(mem_write), 
		.reg_write_value_sel(reg_write_value_sel), 
		.branch_reg(branch_reg)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;
		func = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		#10;
		
		opcode <=6'b000000;
		func <= 6'b000001;
		
		#20;
		$finish;

	end
      
endmodule

