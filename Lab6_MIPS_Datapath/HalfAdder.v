`timescale 1ns / 1ps

module HalfAdder(A, B, Cout, S);
	input A, B;
	output Cout, S;
	
	assign Cout = A & B; //Carry output equation
	assign S = A ^ B; //Sum Equation
	
endmodule
