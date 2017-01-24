`timescale 1ns / 1ps
module datapath(	clk,
						reset,
						memtoreg,
						pcsrc,
						alusrc,
						regdst,
						regwrite,
						jump,
						alucontrol,
						zero,
						pc,
						instr,
						aluresult,
						writedata,
						readdata);

	input					clk, reset, memtoreg, pcsrc,
							alusrc, regdst, regwrite, jump;
	input		[2:0]		alucontrol;
	input		[31:0]	instr, readdata;
	output				zero;
	output	[31:0]	pc, aluresult, writedata;
	
	wire		[4:0]		writereg;
	wire		[31:0]	pcnext, pcnextbr, pcplus4, pcbranch;
	wire		[31:0]	signimm, signimmsh;
	wire		[31:0]	srca, srcb, result;
	
	/********** next PC logic **********/
		// The program counter
	flopr		pcreg	(	.clk		(clk),
							.reset	(reset),
							.d			(pcnext[7:0]),
							.q			(pc[7:0]));
	
		//	Adder to increment the PC value
	Adder_32	pcadd1(	.augend	(pc),
							.addend	(31'h4),
							.sum		(pcplus4));
				
		// shift left the sign extended constant
	s12		immsh	(	.a			(signimm),
							.y			(signimmsh));
		
		// branch address adder
	Adder_32	pcadd2(	.augend	(signimmsh),
							.addend	(pcplus4),
							.sum		(pcbranch));
							
		//	branch mux
	mux2_32	pcbrmux(	.in0	(pcnextbr),
							.in1	(	{pcplus4[31:28],	instr[25:0], 2'b00}),
							.sel	(jump),
							.out	(pcnext));
	/**********************************************************************/
	
	/********** register file logic **********/
		// The register file
	regfile		rf(	.clk		(clk),
							.we3		(regwrite),
							.ra1		(instr[25:21]),
							.ra2		(instr[20:16]),
							.wa3		(writereg),
							.wd3		(result),
							.rd1		(srca),
							.rd2		(writedata));
		
		//	destination register selection mux
	mux2_5 	wrmux(	.in0(instr[20:16]),
							.in1(instr[15:11]),
							.sel(regdst),
							.out(writereg));
							
		//	register data input selection mux
	mux2_32	resmux(	.in0(aluresult),
							.in1(readdata),
							.sel(memtoreg),
							.out(result));
						
		// sign extender to make 32-bit constant
	signext 	se(		.a(instr[15:0]),
							.y(signimm));
	/**********************************************************************/
	
	/********** ALU logic **********/
		// ALU input B selection mux
	mux2_32	srcbmux(	.in0(writedata),
							.in1(signimm),
							.sel(alusrc),
							.out(srcb));
		
		// The Arithmetic Logic Unit
	ALU		alu(		.ALUControl(alucontrol),
							.A(srca),
							.B(srcb),
							.Result(aluresult),
							.Zero_Flag(zero));
	/**********************************************************************/

endmodule
