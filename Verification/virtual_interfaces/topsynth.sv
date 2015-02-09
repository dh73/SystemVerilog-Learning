`include "defs.sv"

module topsynth( arbiter.synth Bus0 );

  State Current, Next;

  always_ff @( posedge Bus0.clk, posedge Bus0.reset ) begin: state_logic
    if( Bus0.reset )
      Current<=S0;
    else
      Current<=Next;
  end


  always_comb begin: next_state_logic
    //Next=Current;
  `ifndef PrintState $display("Current state is %s\n", Current.name);
    unique case( Current )
      S0: if( Bus0.intest ) Next=S0; else Next=S1;
      S1: if( Bus0.intest ) Next=S2; else Next=S1;
      S2: if( Bus0.intest ) Next=S3; else Next=S1;
      S3: if( Bus0.intest ) Next=S1; else Next=S0;
      default: Next=S0;  
    endcase
    $display("Next state will be %s\n", Next.name);
  `endif
 end

 assign Bus0.match=(Current==S3);

endmodule
