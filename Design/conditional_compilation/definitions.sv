`ifndef DEFS_DONE
 `define DEFS_DONE

package definitions;


   parameter VERSION="1.1";

   typedef enum { ADD, SUB, MUL } opcodes;

   typedef struct packed{
      logic [31:0] a, b;
      opcodes opcodes_t;
   } instruction_t;


   function automatic [31:0] mult ( input [31:0] a, b );

      return a*b;

   endfunction // mult

endpackage // definitions

   import definitions::*;

`endif
   
