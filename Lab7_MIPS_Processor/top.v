`timescale 1ns / 1ps
module top(clk, reset, writedata, dataadr, memwrite);
	input	clk, reset;
	output	[31:0]	writedata, dataadr;
	output	memwrite;
	
	wire [31:0] pc, instr, readdata;
	//	instantiate processor and memories
	mips mips(
					.clk(clk),
					.reset(reset),
					.pc(pc),
					.instr(instr),
					.memwrite(memwrite),
					.aluout(dataadr),
					.writedata(writedata),
					.readdata(readdata)
				);
	imem imem(
					.a(pc[7:2]),
					.rd(instr)
				);
	dmem dmem(
					.clk(clk),
					.we(memwrite),
					.a(dataadr),
					.wd(writedata),
					.rd(readdata)
				);

endmodule
