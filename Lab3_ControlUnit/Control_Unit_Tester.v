`timescale 1ns / 1ps

module Control_Unit_Tester;

	// Inputs
	reg [5:0] Opcode;
	reg [5:0] Funct;

	// Outputs
	wire MemtoReg;
	wire MemWrite;
	wire Branch;
	wire ALUSrc;
	wire RegDst;
	wire RegWrite;
	wire [2:0] ALUControl;

	// Instantiate the Unit Under Test (UUT)
	Control_Unit uut (
		.Opcode(Opcode), 
		.Funct(Funct), 
		.MemtoReg(MemtoReg), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUSrc(ALUSrc), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.ALUControl(ALUControl)
	);

	initial begin
		// Test Case 0
		Opcode = 6'b0;
		Funct = 6'b100000;

		#10;
		
		// Test Case 1
		Opcode = 6'b0;
		Funct = 6'b100010;

		#10;
		
		// Test Case 2
		Opcode = 6'b0;
		Funct = 6'b100100;

		#10;
		
		// Test Case 3
		Opcode = 6'b0;
		Funct = 6'b100101;

		#10;
		
		// Test Case 4
		Opcode = 6'b0;
		Funct = 6'b101010;

		#10;
		
		// Test Case 5
		Opcode = 6'b100011;
		Funct = 6'bX;

		#10;
		
		// Test Case 6
		Opcode = 6'b101011;
		Funct = 6'bX;

		#10;
		
		// Test Case 7
		Opcode = 6'b000100;
		Funct = 6'bX;

		#10;
		
		// Test Case 8
		Opcode = 6'b111111;
		Funct = 6'bX;

		#10;
		
		$stop;
	end
      
endmodule

