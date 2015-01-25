`timescale 1ns/1ps

import definitions::*;

module counter( output byte_0 q,
		input chip_types CT );

   logic 	      byte_0 temp_q;
   
   always_ff @( posedge CT.clk, negedge CT.reset )
     begin
	if( ~CT.reset )
	  temp_q<='0;
	else
	  temp_q<=temp_q+'1;
     end

   assign q = ( CT.en ) ? temp_q : 'z;

endmodule // counter

