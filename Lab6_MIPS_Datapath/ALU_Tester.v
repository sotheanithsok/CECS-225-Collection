`timescale 1ns / 1ps

module ALU_Tester;

	// Inputs
	reg [2:0] ALUControl;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] Result;
	wire Zero_Flag;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUControl(ALUControl), 
		.A(A), 
		.B(B), 
		.Result(Result), 
		.Zero_Flag(Zero_Flag)
	);

	initial begin
		// Case 0:AND
		ALUControl = 3'b0;
		A = 32'h13256189;
		B = 32'h13256189+1;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Case 1:OR
		ALUControl = 3'b001;
		A = 32'h13256189;
		B = 32'h13256189+1;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Case 2:ADD
		ALUControl = 3'b010;
		A = 32'h13256189;
		B = 32'h13256189+1;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Case 3:SUB
		ALUControl = 3'b110;
		A = 32'h13256189;
		B = 32'h13256189+1;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Case 4:SLT
		ALUControl = 3'b111;
		A = 32'h13256189;
		B = 32'h13256189+1;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Case 5:SLT
		ALUControl = 3'b111;
		A = 32'h13256189+1;
		B = 32'h13256189;

		// Wait 100 ns for global reset to finish
		#100;
       
		$stop;
	end
      
endmodule

