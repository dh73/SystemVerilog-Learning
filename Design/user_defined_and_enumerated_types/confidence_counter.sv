`timescale 1ns/1ps
`include "definitions.sv"

module confidence_counter ( output 	logic	in_sync,
							input   logic   reset, clk,
							input 	logic	synced, compare );

	enum {cnt[15:0]} State, Next;

	always_ff @( posedge clk, negedge reset ) begin: reset_logic
		if( ~reset ) State<=cnt0;
		else		 State<=Next;
	end

	always_comb begin
		Next=State; //Default Next-state value

		case( State )
			cnt0: if( compare && synced ) Next=State.next;

			cnt1: begin
					if( compare && synced )  Next=State.next;
					if( compare && !synced ) Next=State.first;
				  end

			cnt15: if( compare && !synced ) Next=State.prev;

			default: begin
					 	if( compare && synced )  Next=State.next;
					 	if( compare && !synced ) Next=State.prev;
					 end
		endcase
	end

	always_ff @( posedge clk, negedge reset ) begin: output_logic
		if( ~reset ) in_sync<='0;
		else begin
			if( State == cnt8 ) in_sync<=1;
			if( State == cnt0 ) in_sync<=0;
		end
	end

endmodule