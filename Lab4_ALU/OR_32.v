`timescale 1ns / 1ps

module OR_32(argA, argB, AorB);
   input 	[31:0] argA, argB;
   output 	[31:0] AorB;
	
	assign	AorB = argA | argB;



endmodule
