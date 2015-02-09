`include "defs.sv"

class Driver;
	virtual arbiter ports; //Called from interface
	
	//Constructor
	function new( virtual arbiter ports );
		this.ports=ports;
	endfunction

	//Methods
	task run_driver();
		#5 ports.intest=0;
		#5 ports.reset=1;
		#5 ports.reset=0;
		repeat(16) 
			@ ( posedge ports.clk );
				#5 ports.intest=0;
				#5 ports.intest=1;
				#5 ports.intest=1;
				#5 ports.intest=0;
				#5 ports.intest=1;
				#5 ports.intest=1;
				#5 ports.intest=0;
				#5 ports.intest=0;
				#5 ports.intest=1;
				#5 ports.intest=1;
				#5 ports.intest=0;
	endtask

endclass

class Monitor;
	virtual arbiter ports;

	//Constructor
	function new( virtual arbiter ports );
		this.ports=ports;
	endfunction

	//Methods
	task run_monitor();
		if( ports.match ) $display("Matched\n");
		else $display("Nothing match\n");
	endtask

endclass

module tb_topsynth;

	logic 	    clk = 0;
	arbiter 	SimBus( .* );
	topsynth   TheTop( .Bus0(SimBus.synth));

	initial begin
		#20 clk=0;
	end

	initial begin
		Driver  tb_driver0 = new( SimBus );
		Monitor tb_monitor = new( SimBus );

		fork begin
			tb_driver0.run_driver(); end
		join 

		fork begin
			tb_monitor.run_monitor(); end
		join_none
	end

	always begin
		#5 clk++;
	end

	initial #10000 $finish;

endmodule