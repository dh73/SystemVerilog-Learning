/* Test package for alu */

package definitions;

   parameter VERSION="1.1";

   typedef enum { ADD, SUB, MULT } opcodes;

   typedef struct packed {
      logic [31:0] a, b;
      opcodes opcodes_t; } definitions_t;

   function automatic [31:0] mult( input logic [31:0] a, b );
      return a*b;
   endfunction // mult

endpackage // definitions
   

   
