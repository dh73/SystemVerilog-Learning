/****************************************************/
// Packge definitons
// for make some declarations easier
// example 02


package definitions;

   typedef logic [7:0] byte_0;

   typedef struct packed{
      logic 	  reset;
      logic       clk;
      logic       en;
   } chip_types;

endpackage // definitions
   
