`timescale 1ns / 1ps
module regfile(clk, we3, ra1, ra2, wa3, wd3, rd1, rd2);
	input					clk;				//clock signal
	input 				we3;				//write enable control signal
	input		[4:0] 	ra1, ra2, wa3;	//Read address 1, 2, and Write address
	input 	[31:0]	wd3;				//32-bit write data
	output	[31:0]	rd1, rd2;		//32-bit read data
	
	reg	[31:0]	rf[31:0];
	//	three ported register file
	//		read two ports combinationally
	//		write thrid port on the falling edge of clk
	//		register 0 hardwired to 0
	always	@(negedge clk)
		if (we3) rf[wa3]	<=wd3;
	
	assign rd1=(ra1 != 0) ? rf[ra1] : 0;
	assign rd2=(ra2 != 0) ? rf[ra2] : 0;

endmodule
