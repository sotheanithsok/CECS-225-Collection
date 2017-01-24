`timescale 1ns / 1ps
module imem(a,rd);
	input		[5:0]		a;
	output	[31:0]	rd;
	reg		[31:0]	RAM[63:0];
	initial
		$readmemh("memfile.dat",RAM);
	assign rd=RAM[a];	//word aligned

endmodule
