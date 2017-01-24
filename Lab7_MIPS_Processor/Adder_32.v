`timescale 1ns / 1ps
module Adder_32(augend, addend, sum);
	input		[31:0]	augend,	addend;
	output	[31:0]	sum;
	
	wire					Carry0_1, Carry1_2, Carry2_3;
	
	RCA8	rca8_0	(	.A_8	(	augend[7:0]		),
							.B_8	(	addend[7:0]		),
							.Cin	(	1'b0				),
							.Cout(	Carry0_1			),
							.S_8	(	sum[7:0]			)
						);
	RCA8	rca8_1	(	.A_8	(	augend[15:8]	),
							.B_8	(	addend[15:8]	),
							.Cin	(	Carry0_1			),
							.Cout(	Carry1_2			),
							.S_8	(	sum[15:8]		)
						);
	RCA8	rca8_2	(	.A_8	(	augend[23:16]	),
							.B_8	(	addend[23:16]	),
							.Cin	(	Carry1_2			),
							.Cout(	Carry2_3			),
							.S_8	(	sum[23:16]		)
						);
	RCA8	rca8_3	(	.A_8	(	augend[31:24]	),
							.B_8	(	addend[31:24] 	),
							.Cin	(	Carry2_3			),
							.Cout(						),
							.S_8	(	sum[31:24]		)
						);
endmodule
