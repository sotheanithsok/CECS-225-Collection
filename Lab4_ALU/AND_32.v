`timescale 1ns / 1ps

module AND_32(argA, argB, AandB);
   input 	[31:0] argA, argB;
   output 	[31:0] AandB;
	
	assign	AandB = argA & argB;

endmodule
