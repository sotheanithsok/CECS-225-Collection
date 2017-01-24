`timescale 1ns / 1ps

module Main_Decoder_Tester;

	// Inputs
	reg [5:0] Opcode;

	// Outputs
	wire RegWrite;
	wire RegDst;
	wire ALUSrc;
	wire Branch;
	wire MemWrite;
	wire MemtoReg;
	wire [1:0] ALUOp;

	// Instantiate the Unit Under Test (UUT)
	Main_Decoder uut (
		.Opcode(Opcode), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.Branch(Branch), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.ALUOp(ALUOp)
	);

	initial begin
		//Test Case 0
		Opcode = 6'b000000;
		#10;
		
		//Test Case 1
		Opcode = 6'b100011;
		#10;
		
		//Test Case 2
		Opcode = 6'b101011;
		#10;
		
		//Test Case 3
		Opcode = 6'b000100;
		#10;
		
		//Test Case 4
		Opcode = 6'b111111;
		#10;

	$stop;
	
	end
      
endmodule

