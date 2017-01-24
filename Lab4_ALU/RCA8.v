`timescale 1ns / 1ps

module RCA8(A_8, B_8, Cin, Cout, S_8);
	input [7:0] A_8, B_8;
	input Cin;
	output Cout;
	output [7:0] S_8;
	
	wire c0, c1 ,c2 ,c3 ,c4 ,c5 ,c6;

	FullAdder fa0(	.FA_A	(A_8[0]),
						.FA_B	(B_8[0]),
						.Cin 	(Cin),
						.FA_S (S_8[0]),
						.Cout	(c0)
						);
	FullAdder fa1(	.FA_A	(A_8[1]),
						.FA_B	(B_8[1]),
						.Cin 	(c0),
						.FA_S (S_8[1]),
						.Cout	(c1)
						);					
	FullAdder fa2(	.FA_A	(A_8[2]),
						.FA_B	(B_8[2]),
						.Cin 	(c1),
						.FA_S (S_8[2]),
						.Cout	(c2)
						);
	FullAdder fa3(	.FA_A	(A_8[3]),
						.FA_B	(B_8[3]),
						.Cin 	(c2),
						.FA_S (S_8[3]),
						.Cout	(c3)
						);
	FullAdder fa4(	.FA_A	(A_8[4]),
						.FA_B	(B_8[4]),
						.Cin 	(c3),
						.FA_S (S_8[4]),
						.Cout	(c4)
						);
	FullAdder fa5(	.FA_A	(A_8[5]),
						.FA_B	(B_8[5]),
						.Cin 	(c4),
						.FA_S (S_8[5]),
						.Cout	(c5)
						);
	FullAdder fa6(	.FA_A	(A_8[6]),
						.FA_B	(B_8[6]),
						.Cin 	(c5),
						.FA_S (S_8[6]),
						.Cout	(c6)
						);
	FullAdder fa7(	.FA_A	(A_8[7]),
						.FA_B	(B_8[7]),
						.Cin 	(c6),
						.FA_S (S_8[7]),
						.Cout	(Cout)
						);

endmodule
