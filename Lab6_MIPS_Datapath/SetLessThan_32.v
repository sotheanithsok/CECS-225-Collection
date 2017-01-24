`timescale 1ns / 1ps

module SetLessThan_32(argA, argB, AltB);
	input		[31:0] argA, argB;
	output 	[31:0]	AltB;
	
	assign	AltB = (argA < argB) ? 32'b1 : 32'b0;

endmodule
