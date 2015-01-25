`include "datatypes.pkg"

module sm_motor( output logic [7:0] q,
		 input logic clk,
		 input logic reset,
		 input logic run );

   states c_state, n_state;
   int 			     i;
   logic [7:0] 		     tempvar;
   logic [1:0] 		     tempcount;
   

/* Drive the reset and nex state logic */
   
   always_ff @( posedge clk, negedge reset )
     begin
	if( ~reset )
	  c_state<=IDLE;
	else
	  c_state<=n_state;
     end

/* Drive current state outputs */
   always_comb
     begin
	case( c_state )
	  
	  IDLE: begin
	     tempvar='0;
	     if( run ) begin
	        n_state=START;
	  end
	     else begin
		n_state=IDLE;
	     end
	  end
	  
	     START: begin
		tempvar=8'b1000_000;
		i=1;
		n_state=STEP;
	     end

	  STEP: begin
	     tempvar=i;
	     if( i == 255 ) begin
		i='1;
		n_state=DONE;
	     end
	     else begin
		i=i*2;
		n_state=STEP;
	     end
	  end

	  DONE: begin
	     tempvar='1;
	     if( tempcount == 'd3 )
	       begin
		  tempcount=0;
		  n_state=IDLE;
	       end
	     else begin
		tempcount++;
		n_state=DONE;
	     end
	  end

	endcase // case ( c_state )
     end // always_comb

assign q = tempvar;
endmodule // sm_motor


	     
	     
		
	     
	  
		
			  
			  