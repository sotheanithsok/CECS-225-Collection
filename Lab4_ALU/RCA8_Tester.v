`timescale 1ns / 1ps

module RCA8_Tester;

	// Inputs
	reg [7:0] A_8;
	reg [7:0] B_8;
	reg Cin;

	// Outputs
	wire Cout;
	wire [7:0] S_8;

	// Instantiate the Unit Under Test (UUT)
	RCA8 uut (
		.A_8(A_8), 
		.B_8(B_8), 
		.Cin(Cin), 
		.Cout(Cout), 
		.S_8(S_8)
	);

	initial begin
		//case 0
		A_8 = 8'h 12;
		B_8 = 8'h 34;
		Cin = 0;
		#10;
		
		//case 1
		A_8 = 8'h 55;
		B_8 = 8'h AA;
		Cin = 0;
		#10;
		
		//case 2
		A_8 = 8'h 72;
		B_8 = 8'h 27;
		Cin = 0;
		#10;
		
		//case 3
		A_8 = 8'h 80;
		B_8 = 8'h 08;
		Cin = 0;
		#10;
		
		//case 4
		A_8 = 8'h 12;
		B_8 = 8'h 34;
		Cin = 1;
		#10;
		
		//case 5
		A_8 = 8'h 55;
		B_8 = 8'h AA;
		Cin = 1;
		#10;
		
		//case 6
		A_8 = 8'h 72;
		B_8 = 8'h 27;
		Cin = 1;
		#10;
		
		//case 7
		A_8 = 8'h 80;
		B_8 = 8'h 08;
		Cin = 1;
		#10;
		
		$stop;
	end      
endmodule

