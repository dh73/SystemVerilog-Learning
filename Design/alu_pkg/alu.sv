`timescale 1ns/1ps
`include "package.sv"

module alu( input definitions::definitions_t IW,
	    input logic 	clk, 
	    output logic [31:0] result );


   always_ff @( posedge clk )
     begin
	case( IW.opcodes_t )
	  definitions::ADD: result=IW.a + IW.b;
	  definitions::SUB: result=IW.a - IW.b;
	  definitions::MULT: result=definitions::mult(IW.a, IW.b);
	endcase // case ( IW.opcodes_t )
     end

endmodule // alu
