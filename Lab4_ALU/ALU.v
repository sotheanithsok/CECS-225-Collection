`timescale 1ns / 1ps
module ALU(ALUControl, A, B, Result, Zero_Flag);
	input		[2:0]		ALUControl;
	input		[31:0]	A, B;
	output	[31:0]	Result;
	output				Zero_Flag;
	
	wire		[31:0]	ANDout, ORout, SUMout, DIFFout, LTout;
	
	AND_32			_and		(	.argA		(A),
										.argB		(B),
										.AandB	(ANDout)
									);
	OR_32				_or		(	.argA		(A),
										.argB		(B),
										.AorB		(ORout)
									);
	Adder_32			_add		(	.augend	(A),
										.addend	(B),
										.sum		(SUMout)
									);
	Subtracter_32	_sub		(	.subtrahend	(A),
										.minuend		(B),
										.difference	(DIFFout)
									);	
	SetLessThan_32	_slt		(	.argA	(A),
										.argB	(B),
										.AltB(LTout)
									);
	Mux8to1_32bit	_m81		(	.Sel	(ALUControl),
										.In0	(ANDout),
										.In1	(ORout),
										.In2	(SUMout),
										.In3	(32'bX),
										.In4	(32'bX),
										.In5	(32'bX),
										.In6	(DIFFout),
										.In7	(LTout),
										.Out	(Result)
									);
	assign	Zero_Flag	=	(	Result	)	?	1'b0	:	1'b1;
endmodule
