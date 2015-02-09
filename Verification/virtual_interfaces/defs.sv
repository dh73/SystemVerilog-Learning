`ifndef COMP_DONE
`define COMP_DONE

timeunit 1ns;
timeprecision 1ps;

package defs;
  typedef enum logic [1:0] { S[3:0] } State;
endpackage

import defs::*;

interface arbiter( input clk );
  logic reset, intest, match;
  modport synth( input  reset,
  	         	 input  clk,
  		 		 input  intest,
                 output match );
endinterface



`endif
