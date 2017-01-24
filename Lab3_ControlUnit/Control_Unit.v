`timescale 1ns / 1ps
module Control_Unit(	Opcode, Funct, MemtoReg, MemWrite,
							Branch, ALUSrc, RegDst, RegWrite,
							ALUControl);
	input		[5:0]	Opcode,Funct;
	output			MemtoReg, MemWrite, Branch,ALUSrc, RegDst, RegWrite;
	output 	[2:0]	ALUControl;
	
	wire		[1:0]	ALUOp_md_to_ad;
	
	ALU_Decoder		ad(.ALUOp(ALUOp_md_to_ad), 
							.Funct(Funct), 
							.ALUControl(ALUControl)
							);
	
	Main_Decoder	md(.Opcode(Opcode), 
							.RegWrite(RegWrite), 
							.RegDst(RegDst), 
							.ALUSrc(ALUSrc), 
							.Branch(Branch), 
							.MemWrite(MemWrite),
							.MemtoReg(MemtoReg), 
							.ALUOp(ALUOp_md_to_ad)
							);

endmodule
