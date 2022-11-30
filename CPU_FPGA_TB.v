`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:53:11 11/09/2022
// Design Name:   CPU_FPGA
// Module Name:   /home/rounak/Documents/SEM_5/COA/verilog/Verilog Demo/ISE Project/KGP_miniRISC/CPU_FPGA_TB.v
// Project Name:  KGP_miniRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_FPGA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_FPGA_TB;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] output_sel;

	// Outputs
	wire [31:0] CPU_OUTPUT;

	// Instantiate the Unit Under Test (UUT)
	CPU_FPGA uut (
		.clk(clk), 
		.rst(rst), 
		.output_sel(output_sel), 
		.CPU_OUTPUT(CPU_OUTPUT)
	);
	
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		clk = 1;
		rst = 1;
		output_sel = 0;

		// Wait 100 ns for global reset to finish
		
		
		
		// TEST FOR LINEAR SEARCH:
		
		#100;
		rst<=0; // start the computation
		        // the computations are guided by the the linear search program loaded in instruction memory
				  // memory is accessed for the search key and the array in which the key is to be searched 
		
		#1500 output_sel<=4'b0100; // after sufficient number of clock cycles the computation is complete
											// and the result of search is stored in the 4th register $4
											// set the output select to view the result (contents of $4)
		
		#40 $finish; // the result remains visible for 40 further nanoseconds and then simulation is stopped
		
		// note that the remaining space after the code of linear search in instruction memory is padded with
		// redundant instructions: addi $0,0, hence the cycles following the completion of computation and during
		// viewing of result this redundant instruction keeps getting executed till the simulation is stopped
		
		
       /* 
		// TEST FOR BUBBLE SORT:
		
		//Comments while demonstration: it is difficult for us to show that the array stored in data memory is actually 
		// unsorted	before the execution starts, since we cannot directly fetch values from the bram using input signals (switches)
		// in FPGA, also rst is 1 hence none of the registers are getting written to and output from them is 0. It can be verified 
		// from the .coe file for the bubble sort data memory that the array is actually unsorted
		
		#100;
		rst<=0; // start the computation
		
		#23000; // after sufficient number of clock cycles the actual sorting operation is over, 
				  // the values of MEM[0],MEM[1],...,MEM[9] are loaded into the $0,$1,...,$9 registers
				  // after this we can set the output_sel lines accordingly to view the contents of these
				  // registers to verify that the array has been sorted
				  
				  // "sufficient" number of clock cycles however would depend on the number of elements and
				  // the initial ordering of the array elements, in our case where we have 10 elements in
				  // the following order initially: 10, -2, 5, -29, 34, 123, 3, 1, 5, 89, it was found to
				  // take around 2300 ns for the main sorting to complete
		
		output_sel<=4'b0000; // view the content of $0 (MEM[0] has been loaded here) for 30 ns
		#30;
		
		output_sel<=4'b0001; // view $1 (same as MEM[1])
		#30;
		
		output_sel<=4'b0010; // view $2 (same as MEM[2])
		#30;
		
		// view all through $3-$9 for 30ns each to verify that the array has been sorted
		
		output_sel<=4'b0011;
		#30;
		
		output_sel<=4'b0100;
		#30;
		
		output_sel<=4'b0101;
		#30;
		
		output_sel<=4'b0110;
		#30;
		
		output_sel<=4'b0111;
		#30;
		
		output_sel<=4'b1000;
		#30;
		
		output_sel<=4'b1001;
		#30;
		
		
		// finish after all the elements have been viewed, note that we can view each of the
		// registers for any amount of time by setting the output_sel signal according to 
		// our wish, it has no dependency on the clock
		$finish;
		*/

	end
      
endmodule

