`timescale 1ns / 1ps
module signext(a, y);
	input		[15:0]	a;
	output	[31:0]	y;
	
	// sign extend form 16-bit to 32-bit
	assign	y = {{16{a[15]}},a};

endmodule
