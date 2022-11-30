`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:19 10/26/2022 
// Design Name: 
// Module Name:    ALU_32bit 
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
module ALU_32bit(a,b,AddrSrcBSel,PrimaryOutputSel,ShifterInputSel,ShiftTypeALU,ShiftAmntALU,ShifterEnblALU,ALUOut,ALUc_out,MSB,ALUzero);
input [31:0] a,b;
input [4:0] ShiftAmntALU;
input [1:0] ShiftTypeALU,PrimaryOutputSel;
input AddrSrcBSel,ShifterEnblALU,ShifterInputSel;

output [31:0] ALUOut;
output MSB,ALUzero,ALUc_out;

wire [31:0] AddrSrcB,/*twos_comp_b,*/ADDRoutALU,ANDoutALU,XORoutALU,DIFFoutALU,PrimaryOutput,ShifterInput;

/* TWOS_COMPL_32bit TWOS_COMPL_ALU(.a(b),.TWOS_COMPLout(twos_comp_b)); */ /*revision 18:27 26.10.22*/
/* Separate 2's complement module not required */

MUX_2to1 AddrSrcBMUX(.in0(b),.in1(/* comp_b */~b),.out(AddrSrcB),.sel(AddrSrcBSel)); /*revision 18:27 26.10.22*/

ADDR_32bit ADDR_ALU(.a(a),.b(AddrSrcB),.c_in(AddrSrcBSel),.ADDRout(ADDRoutALU),.ADDRc_out(ALUc_out)); /*revision 18:27 26.10.22*/
AND_32bit AND_ALU(.a(a),.b(b),.ANDout(ANDoutALU));
XOR_32bit XOR_ALU(.a(a),.b(b),.XORout(XORoutALU));
DIFF_32bit DIFF_ALU(.a(a),.b(b),.DIFFout(DIFFoutALU));

MUX_4to1 PrimaryOutputMUX(.in1(ADDRoutALU),.in3(ANDoutALU),.in2(XORoutALU),.in0(DIFFoutALU),.out(PrimaryOutput),.sel(PrimaryOutputSel));
MUX_2to1 ShifterInputMUX(.in0(PrimaryOutput),.in1(a),.out(ShifterInput),.sel(ShifterEnblALU)); 

/*
the selector line of this mux is the shift enable line itself since in all cases of shift, 
the shift is performed on rs only, this feature is specific to our ISA and might need to change 
if the ISA is to be extended to support other instructions of the form: 
addsh rs,rt,imm       [ rs <- (rs+rt)<<imm n ]
This is infact the main purpose of passing all kinds of outputs of the ALU through the
shifter module, in our ISA since the shift instructions are specific and are not embedded as
as a sub-operation in any of the other instructions, the shift enable line is set only in the 
shift operations
*/

SHIFTER SHIFTER_ALU(.a(ShifterInput),.ShiftTypeSHIFTER(ShiftTypeALU),.ShiftAmntSHIFTER(ShiftAmntALU),.ShifterEnblSHIFTER(ShifterEnblALU),.SHIFTERout(ALUOut));


assign ALUzero=(a==32'd0)?1:0;
assign MSB=a[31];


endmodule
