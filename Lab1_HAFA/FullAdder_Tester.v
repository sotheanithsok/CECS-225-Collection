`timescale 1ns / 1ps

module FullAdder_Tester;

	// Inputs
	reg FA_A;
	reg FA_B;
	reg Cin;

	// Outputs
	wire FA_S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.FA_A(FA_A), 
		.FA_B(FA_B), 
		.Cin(Cin), 
		.FA_S(FA_S), 
		.Cout(Cout)
	);

	initial begin
		// Test 0
		FA_A = 0;
		FA_B = 0;
		Cin = 0;
		#10; //Wait 10 unit times
       
		// Test 1
		FA_A = 0;
		FA_B = 1;
		Cin = 0;
		#10; //Wait 10 unit times

		// Test 2
		FA_A = 1;
		FA_B = 0;
		Cin = 0;
		#10; //Wait 10 unit times

		// Test 3
		FA_A = 1;
		FA_B = 1;
		Cin = 0;
		#10; //Wait 10 unit times

		// Test 4
		FA_A = 0;
		FA_B = 0;
		Cin = 1;
		#10; //Wait 10 unit times

		// Test 5
		FA_A = 0;
		FA_B = 1;
		Cin = 1;
		#10; //Wait 10 unit times

		// Test 6
		FA_A = 1;
		FA_B = 0;
		Cin = 1;
		#10; //Wait 10 unit times

		// Test 7
		FA_A = 1;
		FA_B = 1;
		Cin = 1;
		#10; //Wait 10 unit times		
		
		$stop;

	end
      
endmodule

