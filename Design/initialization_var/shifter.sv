`timescale 1ns/1ps
`include "definitions.sv"

module shifter( output logic q,
				input  u8	 data_in,
				input logic  clk, reset,
				input logic  load );

var u8	qr='0; //Var is for context of use of tempshift object

always_ff @(posedge clk) begin : proc_shift
	if(~reset) begin
		 qr<='0;
	end else begin
		if(load)
		 qr<=data_in;
		else
		 qr<={1'b0, qr[N-1:1]};
	end
end

always_comb begin
	q=qr[0];
end


endmodule