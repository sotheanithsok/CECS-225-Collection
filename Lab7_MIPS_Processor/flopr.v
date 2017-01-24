`timescale 1ns / 1ps

module flopr(clk, reset, d, q);
	input						clk, reset;
	input				[7:0]	d;
	output	reg	[7:0]	q;
	
	//resettable program counter register
	always @(posedge clk, posedge reset)
		if( reset )	q = 0;
		else			q = d;
endmodule
