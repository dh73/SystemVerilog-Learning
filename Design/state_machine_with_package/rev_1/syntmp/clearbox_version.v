//altmult_accum CBX_SINGLE_OUTPUT_FILE="ON" DEDICATED_MULTIPLIER_CIRCUITRY="AUTO" DEVICE_FAMILY="Stratix III" PORT_SIGNA="PORT_UNUSED" PORT_SIGNB="PORT_UNUSED" REPRESENTATION_A="UNSIGNED" REPRESENTATION_B="UNSIGNED" WIDTH_A=8 WIDTH_B=8 WIDTH_RESULT=16 clock0 coefsel0 coefsel1 coefsel2 coefsel3 dataa datab datac result
//VERSION_BEGIN 14.0 cbx_alt_ded_mult_y 2014:06:05:09:45:41:SJ cbx_alt_zaccum 2014:06:05:09:45:41:SJ cbx_altaccumulate 2014:06:05:09:45:41:SJ cbx_altera_mult_add 2014:06:05:09:45:41:SJ cbx_altera_mult_add_rtl 2014:06:05:09:45:41:SJ cbx_altmult_accum 2014:06:05:09:45:41:SJ cbx_altmult_add 2014:06:05:09:45:41:SJ cbx_cycloneii 2014:06:05:09:45:41:SJ cbx_lpm_add_sub 2014:06:05:09:45:41:SJ cbx_lpm_mult 2014:06:05:09:45:41:SJ cbx_mgl 2014:06:05:10:17:12:SJ cbx_padd 2014:06:05:09:45:41:SJ cbx_parallel_add 2014:06:05:09:45:41:SJ cbx_stratix 2014:06:05:09:45:41:SJ cbx_stratixii 2014:06:05:09:45:41:SJ cbx_util_mgl 2014:06:05:09:45:41:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, the Altera Quartus II License Agreement,
//  the Altera MegaCore Function License Agreement, or other 
//  applicable license agreement, including, without limitation, 
//  that your use is for the sole purpose of programming logic 
//  devices manufactured by Altera and sold by Altera or its 
//  authorized distributors.  Please refer to the applicable 
//  agreement for further details.



//synthesis_resources = dsp_18bit 4 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  clearbox_version
	( 
	clock0,
	coefsel0,
	coefsel1,
	coefsel2,
	coefsel3,
	dataa,
	datab,
	datac,
	result) /* synthesis synthesis_clearbox=1 */;
	input   clock0;
	input   [2:0]  coefsel0;
	input   [2:0]  coefsel1;
	input   [2:0]  coefsel2;
	input   [2:0]  coefsel3;
	input   [7:0]  dataa;
	input   [7:0]  datab;
	input   [21:0]  datac;
	output   [15:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   clock0;
	tri0   [7:0]  dataa;
	tri0   [7:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [15:0]   wire_mac_mult1_dataout;
	wire  [15:0]   wire_mac_mult2_dataout;
	wire  [15:0]   wire_mac_mult3_dataout;
	wire  [15:0]   wire_mac_mult4_dataout;
	wire  [71:0]   wire_mac_out5_dataout;
	wire accum_sload;
	wire aclr0;
	wire  [7:0]  dataa_bus;
	wire  [7:0]  datab_bus;
	wire ena0;

	stratixiii_mac_mult   mac_mult1
	( 
	.aclr({{3{1'b0}}, aclr0}),
	.clk({{3{1'b1}}, clock0}),
	.dataa({{8{1'b0}}}),
	.datab({{8{1'b0}}}),
	.dataout(wire_mac_mult1_dataout),
	.ena({{3{1'b1}}, ena0}),
	.scanouta(),
	.signa(1'b0),
	.signb(1'b0)
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		mac_mult1.dataa_clear = "0",
		mac_mult1.dataa_clock = "0",
		mac_mult1.dataa_width = 8,
		mac_mult1.datab_clear = "0",
		mac_mult1.datab_clock = "0",
		mac_mult1.datab_width = 8,
		mac_mult1.lpm_type = "stratixiii_mac_mult";
	stratixiii_mac_mult   mac_mult2
	( 
	.aclr({{3{1'b0}}, aclr0}),
	.clk({{3{1'b1}}, clock0}),
	.dataa({{8{1'b0}}}),
	.datab({{8{1'b0}}}),
	.dataout(wire_mac_mult2_dataout),
	.ena({{3{1'b1}}, ena0}),
	.scanouta(),
	.signa(1'b0),
	.signb(1'b0)
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		mac_mult2.dataa_clear = "0",
		mac_mult2.dataa_clock = "0",
		mac_mult2.dataa_width = 8,
		mac_mult2.datab_clear = "0",
		mac_mult2.datab_clock = "0",
		mac_mult2.datab_width = 8,
		mac_mult2.lpm_type = "stratixiii_mac_mult";
	stratixiii_mac_mult   mac_mult3
	( 
	.aclr({{3{1'b0}}, aclr0}),
	.clk({{3{1'b1}}, clock0}),
	.dataa({{8{1'b0}}}),
	.datab({{8{1'b0}}}),
	.dataout(wire_mac_mult3_dataout),
	.ena({{3{1'b1}}, ena0}),
	.scanouta(),
	.signa(1'b0),
	.signb(1'b0)
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		mac_mult3.dataa_clear = "0",
		mac_mult3.dataa_clock = "0",
		mac_mult3.dataa_width = 8,
		mac_mult3.datab_clear = "0",
		mac_mult3.datab_clock = "0",
		mac_mult3.datab_width = 8,
		mac_mult3.lpm_type = "stratixiii_mac_mult";
	stratixiii_mac_mult   mac_mult4
	( 
	.aclr({{3{1'b0}}, aclr0}),
	.clk({{3{1'b1}}, clock0}),
	.dataa({dataa_bus}),
	.datab({datab_bus}),
	.dataout(wire_mac_mult4_dataout),
	.ena({{3{1'b1}}, ena0}),
	.scanouta(),
	.signa(1'b0),
	.signb(1'b0)
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		mac_mult4.dataa_clear = "0",
		mac_mult4.dataa_clock = "0",
		mac_mult4.dataa_width = 8,
		mac_mult4.datab_clear = "0",
		mac_mult4.datab_clock = "0",
		mac_mult4.datab_width = 8,
		mac_mult4.lpm_type = "stratixiii_mac_mult";
	stratixiii_mac_out   mac_out5
	( 
	.aclr({{3{1'b0}}, aclr0}),
	.clk({{3{1'b1}}, clock0}),
	.dataa({wire_mac_mult1_dataout[15:0]}),
	.datab({wire_mac_mult2_dataout[15:0]}),
	.datac({wire_mac_mult3_dataout[15:0]}),
	.datad({wire_mac_mult4_dataout[15:0]}),
	.dataout(wire_mac_out5_dataout),
	.dftout(),
	.ena({{3{1'b1}}, ena0}),
	.loopbackout(),
	.overflow(),
	.round(1'b0),
	.saturate(1'b0),
	.saturatechainoutoverflow(),
	.signa(1'b0),
	.signb(1'b0),
	.zeroacc(accum_sload)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.chainin({1{1'b0}}),
	.rotate(1'b0),
	.roundchainout(1'b0),
	.saturatechainout(1'b0),
	.shiftright(1'b0),
	.zerochainout(1'b0),
	.zeroloopback(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		mac_out5.acc_adder_operation = "add",
		mac_out5.dataa_width = 16,
		mac_out5.datab_width = 16,
		mac_out5.datac_width = 16,
		mac_out5.datad_width = 16,
		mac_out5.dataout_width = 72,
		mac_out5.first_adder0_clear = "0",
		mac_out5.first_adder0_clock = "0",
		mac_out5.first_adder0_mode = "add",
		mac_out5.first_adder1_clear = "0",
		mac_out5.first_adder1_clock = "0",
		mac_out5.first_adder1_mode = "add",
		mac_out5.operation_mode = "accumulator",
		mac_out5.output_clear = "0",
		mac_out5.output_clock = "0",
		mac_out5.round_mode = "nearest_integer",
		mac_out5.round_width = 44,
		mac_out5.saturate_mode = "asymmetric",
		mac_out5.saturate_width = 14,
		mac_out5.lpm_type = "stratixiii_mac_out";
	assign
		accum_sload = 1'b0,
		aclr0 = 1'b0,
		dataa_bus = {dataa},
		datab_bus = {datab},
		ena0 = 1'b1,
		result = {wire_mac_out5_dataout[15:0]};
endmodule //clearbox_version
//VALID FILE
