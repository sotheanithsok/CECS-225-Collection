`timescale 1ns / 1ps

module top_tester;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] writedata;
	wire [31:0] dataadr;
	wire memwrite;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.reset(reset), 
		.writedata(writedata), 
		.dataadr(dataadr), 
		.memwrite(memwrite)
	);
	
	//initialize test
	initial 
	begin
		reset <= 1; # 22; reset<=0;
	end
	//generate clock to sequence tests
	always
	begin
		clk<= 1; # 5; clk <=0; #5;
	end
	// check results
	always @(negedge clk)
	begin
		if (memwrite) begin
			if(dataadr===84 & writedata===7) begin
				$display("Simulation succeeded");
				$stop;
			end else if (dataadr !==80) begin
				$display("Simulation failed");
				$stop;
			end
		end
    end 
endmodule

