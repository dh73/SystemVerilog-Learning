`timescale 1ns/1ps

/* ------------------------------ External declarations ----------------------*/

parameter VERSION="1.2a"; //External constant

//reg resetN = 1;           //External variable

typedef struct packed {
   logic [31:0] address;
   logic [31:0] data;
   logic [7:0] 	opcode;
} instruction_word_t;

/* Simple external function from $unit example:
 function automatic int log2 ( input in n ); //Declared as automatic for synthesis guidelines
 if ( n<=1 ) return ( 1 );
 log2=0;
 while ( n > 1 )
 begin
   n=n/2;
   log2++;
 end
   return (log2);
endfunction */ 

/* --------------------------- Module definition --------------------------------- */

module register( output instruction_word_t q,
		 input 	    instruction_word_t d,
		 input wire clk, resetN );

   always_ff @( posedge clk /*negedge resetN*/ )
     if( ~resetN )
       q<='0;
     else
       q<=d;


endmodule // register
