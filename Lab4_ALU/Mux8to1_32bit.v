`timescale 1ns / 1ps
module Mux8to1_32bit(	Sel,
								In0, In1, In2, In3, In4, In5, In6, In7,
								Out);
	input			[2:0]		Sel;
	input 		[31:0]	In0, In1, In2, In3, In4, In5, In6, In7;
	output reg	[31:0] Out;

	always@(*)
	begin						//beginning of the procedural block
		case(	Sel)
			3'b000	:	Out	=	In0;
			3'b001	:	Out	=	In1;
			3'b010	:	Out	=	In2;
			3'b011	:	Out	=	In3;
			3'b100	:	Out	=	In4;
			3'b101	:	Out	=	In5;
			3'b110	:	Out	=	In6;
			3'b111	:	Out	=	In7;
			default	:	Out	=	32'bX;
		endcase
	end						//end of the procedural block
endmodule
