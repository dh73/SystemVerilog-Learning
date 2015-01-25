`timescale 1ns/1ps
`include "definitions.sv"

module alu( input instruction_t IW,
	    //input logic 	clk,
	    //input logic 	reset,
	    output logic [31:0] result );


   always_comb /*@( posedge clk, posedge reset ) */
     begin
	case( IW.opcodes_t )
	  ADD: result = IW.a + IW.b;
	  SUB: result = IW.a - IW.b;
	  MUL: result = mult(IW.a, IW.b);
	endcase // case ( IW.opcodes_t )
     end

endmodule // alu
