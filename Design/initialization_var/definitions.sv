`ifndef COMP_DONE //Compiler trick
`define COMP_DONE //For import package in multiple dependence modules

package definitions;

	parameter VERSION="1.0a";
	parameter N=8;
	typedef logic [N-1:0]	u8;

endpackage

import definitions::*; //Call to all definitions in this package

`endif