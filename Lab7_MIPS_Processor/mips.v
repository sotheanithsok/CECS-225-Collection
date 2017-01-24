`timescale 1ns / 1ps
module mips(clk, reset, pc, instr, memwrite, aluout, writedata, readdata);
	input	clk,reset;
	output	[31:0]	pc;
	input		[31:0]	instr;
	output				memwrite;
	output	[31:0]	aluout, writedata;
	input		[31:0]	readdata;
	
	wire	memtoreg, alusrc, regdst, regwrite, jump, pcsrc, zero;
	wire 	[2:0]	alucontrol;
	controller c(
						.op(instr[31:26]),
						.funct(instr[5:0]),
						.zero(zero),
						.memtoreg(memtoreg),
						.memwrite(memwrite),
						.pcsrc(pcsrc),
						.alusrc(alusrc),
						.regdst(regdst),
						.regwrite(regwrite),
						.jump(jump),
						.alucontrol(alucontrol)
					);
					
	datapath dp(
						.clk(clk),
						.reset(reset),
						.memtoreg(memtoreg),
						.pcsrc(pcsrc),
						.alusrc(alusrc),
						.regdst(regdst),
						.regwrite(regwrite),
						.jump(jump),
						.alucontrol(alucontrol),
						.zero(zero),
						.pc(pc),
						.instr(instr),
						.aluresult(aluout),
						.writedata(writedata),
						.readdata(readdata)
					);

endmodule
