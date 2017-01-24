`timescale 1ns / 1ps

module Subtracter_32(	subtrahend, minuend, difference	);
	input		[31:0]		subtrahend, minuend;
	output	[31:0]		difference;
	
	assign 	difference = subtrahend - minuend;

endmodule
