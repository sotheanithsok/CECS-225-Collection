`timescale 1ns / 1ps
module ALU_Decoder_Tester;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] Funct;

	// Outputs
	wire [2:0] ALUControl;

	// Instantiate the Unit Under Test (UUT)
	ALU_Decoder uut (
		.ALUOp(ALUOp), 
		.Funct(Funct), 
		.ALUControl(ALUControl)
	);

	initial begin
		//Test Case 0
		ALUOp = 2'b0;
		Funct = 6'bX;
		#10;
		
		//Test Case 1
		ALUOp = 2'b01;
		Funct = 6'bX;
		#10;
		
		//Test Case 2
		ALUOp = 2'b10;
		Funct = 6'bXX0000;
		#10;
		
		//Test Case 3
		ALUOp = 2'b10;
		Funct = 6'bXX0010;
		#10;
		
		//Test Case 4
		ALUOp = 2'b10;
		Funct = 6'bXX0100;
		#10;
		
		//Test Case 5
		ALUOp = 2'b10;
		Funct = 6'bXX0101;
		#10;
		
		//Test Case 6
		ALUOp = 2'b10;
		Funct = 6'bXX1010;
		#10;
		
		$stop;

	end
      
endmodule

