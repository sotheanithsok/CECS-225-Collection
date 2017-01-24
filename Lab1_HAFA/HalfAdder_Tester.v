`timescale 1ns / 1ps


module HalfAdder_Tester;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire Cout;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	HalfAdder uut (
		.A(A), 
		.B(B), 
		.Cout(Cout), 
		.S(S)
	);

	initial begin
		// test case 0
		A = 0;
		B = 0;
		#10;		//Wait 10 time units
		
		// test case 1
		A = 0;
		B = 1;
		#10;		//Wait 10 time units
		
		// test case 2
		A = 1;
		B = 0;
		#10;		//Wait 10 time units
		
		// test case 3
		A = 1;
		B = 1;
		#10;		//Wait 10 time units
		$stop;	//end the simulation
	
	end
      
endmodule

