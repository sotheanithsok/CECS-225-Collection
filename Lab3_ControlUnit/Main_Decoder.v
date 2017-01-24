`timescale 1ns / 1ps
module Main_Decoder(	Opcode, RegWrite, RegDst, 
							ALUSrc, Branch, MemWrite,
							MemtoReg, ALUOp);
	input		[5:0]	Opcode;
	output			RegWrite, RegDst, ALUSrc, Branch, MemWrite, MemtoReg;
	output	[1:0]	ALUOp;
	
	wire	R_Format, lw, sw, beg;
	
	assign	R_Format=~(Opcode[5]|Opcode[4]|Opcode[3]|Opcode[2]|Opcode[1]|Opcode[0]);
	assign	lw=Opcode[5]&Opcode[1]&Opcode[0]&~(Opcode[4]|Opcode[3]|Opcode[2]);
	assign	sw=Opcode[5]&~Opcode[4]&Opcode[3]&~Opcode[2]&Opcode[1]&Opcode[0];
	assign 	beq=Opcode[2]&~(Opcode[5]|Opcode[4]|Opcode[3]|Opcode[1]|Opcode[0]);
	
	assign	RegWrite=R_Format|lw;
	assign	RegDst=R_Format;
	assign	ALUSrc=lw|sw;
	assign	Branch=beq;
	assign	MemWrite=sw;
	assign	MemtoReg=lw;
	assign	ALUOp[1]=R_Format;
	assign	ALUOp[0]=beq;

endmodule
