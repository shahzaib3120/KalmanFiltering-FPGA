set moduleName kalman_filter_top_Pipeline_VITIS_LOOP_82_17
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_top_Pipeline_VITIS_LOOP_82_17}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_init_V_3_load int 32 regular  }
	{ x_init_V_2_load int 32 regular  }
	{ x_init_V_1_load int 32 regular  }
	{ x_init_V_0_load int 32 regular  }
	{ K_V int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ sext_ln1273_9 int 32 regular  }
	{ y_V_1_0257_cast int 32 regular  }
	{ x_init_V_3_load_2_out int 32 regular {pointer 1}  }
	{ x_init_V_2_load_2_out int 32 regular {pointer 1}  }
	{ x_init_V_1_load_2_out int 32 regular {pointer 1}  }
	{ x_init_V_0_load_2_out int 32 regular {pointer 1}  }
	{ x_init_V_0 int 32 regular {pointer 2} {global 2}  }
	{ x_init_V_1 int 32 regular {pointer 2} {global 2}  }
	{ x_init_V_2 int 32 regular {pointer 2} {global 2}  }
	{ x_init_V_3 int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_init_V_3_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_init_V_2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_init_V_1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_init_V_0_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1273_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_V_1_0257_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_init_V_3_load_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_init_V_2_load_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_init_V_1_load_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_init_V_0_load_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_init_V_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "x_init_V_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "x_init_V_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "x_init_V_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_init_V_3_load sc_in sc_lv 32 signal 0 } 
	{ x_init_V_2_load sc_in sc_lv 32 signal 1 } 
	{ x_init_V_1_load sc_in sc_lv 32 signal 2 } 
	{ x_init_V_0_load sc_in sc_lv 32 signal 3 } 
	{ K_V_address0 sc_out sc_lv 3 signal 4 } 
	{ K_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ K_V_q0 sc_in sc_lv 32 signal 4 } 
	{ K_V_address1 sc_out sc_lv 3 signal 4 } 
	{ K_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ K_V_q1 sc_in sc_lv 32 signal 4 } 
	{ sext_ln1273_9 sc_in sc_lv 32 signal 5 } 
	{ y_V_1_0257_cast sc_in sc_lv 32 signal 6 } 
	{ x_init_V_3_load_2_out sc_out sc_lv 32 signal 7 } 
	{ x_init_V_3_load_2_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ x_init_V_2_load_2_out sc_out sc_lv 32 signal 8 } 
	{ x_init_V_2_load_2_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ x_init_V_1_load_2_out sc_out sc_lv 32 signal 9 } 
	{ x_init_V_1_load_2_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ x_init_V_0_load_2_out sc_out sc_lv 32 signal 10 } 
	{ x_init_V_0_load_2_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ x_init_V_0_i sc_in sc_lv 32 signal 11 } 
	{ x_init_V_0_o sc_out sc_lv 32 signal 11 } 
	{ x_init_V_0_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ x_init_V_1_i sc_in sc_lv 32 signal 12 } 
	{ x_init_V_1_o sc_out sc_lv 32 signal 12 } 
	{ x_init_V_1_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ x_init_V_2_i sc_in sc_lv 32 signal 13 } 
	{ x_init_V_2_o sc_out sc_lv 32 signal 13 } 
	{ x_init_V_2_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ x_init_V_3_i sc_in sc_lv 32 signal 14 } 
	{ x_init_V_3_o sc_out sc_lv 32 signal 14 } 
	{ x_init_V_3_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ grp_fu_363_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_363_p_din1 sc_out sc_lv 33 signal -1 } 
	{ grp_fu_363_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_363_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_377_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_377_p_din1 sc_out sc_lv 33 signal -1 } 
	{ grp_fu_377_p_dout0 sc_in sc_lv 48 signal -1 } 
	{ grp_fu_377_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_init_V_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_3_load", "role": "default" }} , 
 	{ "name": "x_init_V_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_2_load", "role": "default" }} , 
 	{ "name": "x_init_V_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_1_load", "role": "default" }} , 
 	{ "name": "x_init_V_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_0_load", "role": "default" }} , 
 	{ "name": "K_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "K_V", "role": "address0" }} , 
 	{ "name": "K_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_V", "role": "ce0" }} , 
 	{ "name": "K_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_V", "role": "q0" }} , 
 	{ "name": "K_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "K_V", "role": "address1" }} , 
 	{ "name": "K_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_V", "role": "ce1" }} , 
 	{ "name": "K_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_V", "role": "q1" }} , 
 	{ "name": "sext_ln1273_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln1273_9", "role": "default" }} , 
 	{ "name": "y_V_1_0257_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_V_1_0257_cast", "role": "default" }} , 
 	{ "name": "x_init_V_3_load_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_3_load_2_out", "role": "default" }} , 
 	{ "name": "x_init_V_3_load_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_init_V_3_load_2_out", "role": "ap_vld" }} , 
 	{ "name": "x_init_V_2_load_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_2_load_2_out", "role": "default" }} , 
 	{ "name": "x_init_V_2_load_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_init_V_2_load_2_out", "role": "ap_vld" }} , 
 	{ "name": "x_init_V_1_load_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_1_load_2_out", "role": "default" }} , 
 	{ "name": "x_init_V_1_load_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_init_V_1_load_2_out", "role": "ap_vld" }} , 
 	{ "name": "x_init_V_0_load_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_0_load_2_out", "role": "default" }} , 
 	{ "name": "x_init_V_0_load_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_init_V_0_load_2_out", "role": "ap_vld" }} , 
 	{ "name": "x_init_V_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_0", "role": "i" }} , 
 	{ "name": "x_init_V_0_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_0", "role": "o" }} , 
 	{ "name": "x_init_V_0_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_init_V_0", "role": "o_ap_vld" }} , 
 	{ "name": "x_init_V_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_1", "role": "i" }} , 
 	{ "name": "x_init_V_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_1", "role": "o" }} , 
 	{ "name": "x_init_V_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_init_V_1", "role": "o_ap_vld" }} , 
 	{ "name": "x_init_V_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_2", "role": "i" }} , 
 	{ "name": "x_init_V_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_2", "role": "o" }} , 
 	{ "name": "x_init_V_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_init_V_2", "role": "o_ap_vld" }} , 
 	{ "name": "x_init_V_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_3", "role": "i" }} , 
 	{ "name": "x_init_V_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_3", "role": "o" }} , 
 	{ "name": "x_init_V_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_init_V_3", "role": "o_ap_vld" }} , 
 	{ "name": "grp_fu_363_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_363_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_363_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "grp_fu_363_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_363_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_363_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_363_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_363_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_377_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_377_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_377_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "grp_fu_377_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_377_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "grp_fu_377_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_377_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_377_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "kalman_filter_top_Pipeline_VITIS_LOOP_82_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_init_V_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_init_V_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_init_V_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_init_V_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1273_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_V_1_0257_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_init_V_3_load_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_init_V_2_load_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_init_V_1_load_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_init_V_0_load_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_init_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "x_init_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "x_init_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "x_init_V_3", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_82_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U64", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_top_Pipeline_VITIS_LOOP_82_17 {
		x_init_V_3_load {Type I LastRead 0 FirstWrite -1}
		x_init_V_2_load {Type I LastRead 0 FirstWrite -1}
		x_init_V_1_load {Type I LastRead 0 FirstWrite -1}
		x_init_V_0_load {Type I LastRead 0 FirstWrite -1}
		K_V {Type I LastRead 1 FirstWrite -1}
		sext_ln1273_9 {Type I LastRead 0 FirstWrite -1}
		y_V_1_0257_cast {Type I LastRead 0 FirstWrite -1}
		x_init_V_3_load_2_out {Type O LastRead -1 FirstWrite 4}
		x_init_V_2_load_2_out {Type O LastRead -1 FirstWrite 4}
		x_init_V_1_load_2_out {Type O LastRead -1 FirstWrite 4}
		x_init_V_0_load_2_out {Type O LastRead -1 FirstWrite 4}
		x_init_V_0 {Type IO LastRead 4 FirstWrite 5}
		x_init_V_1 {Type IO LastRead 4 FirstWrite 5}
		x_init_V_2 {Type IO LastRead 4 FirstWrite 5}
		x_init_V_3 {Type IO LastRead 4 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x_init_V_3_load { ap_none {  { x_init_V_3_load in_data 0 32 } } }
	x_init_V_2_load { ap_none {  { x_init_V_2_load in_data 0 32 } } }
	x_init_V_1_load { ap_none {  { x_init_V_1_load in_data 0 32 } } }
	x_init_V_0_load { ap_none {  { x_init_V_0_load in_data 0 32 } } }
	K_V { ap_memory {  { K_V_address0 mem_address 1 3 }  { K_V_ce0 mem_ce 1 1 }  { K_V_q0 mem_dout 0 32 }  { K_V_address1 MemPortADDR2 1 3 }  { K_V_ce1 MemPortCE2 1 1 }  { K_V_q1 MemPortDOUT2 0 32 } } }
	sext_ln1273_9 { ap_none {  { sext_ln1273_9 in_data 0 32 } } }
	y_V_1_0257_cast { ap_none {  { y_V_1_0257_cast in_data 0 32 } } }
	x_init_V_3_load_2_out { ap_vld {  { x_init_V_3_load_2_out out_data 1 32 }  { x_init_V_3_load_2_out_ap_vld out_vld 1 1 } } }
	x_init_V_2_load_2_out { ap_vld {  { x_init_V_2_load_2_out out_data 1 32 }  { x_init_V_2_load_2_out_ap_vld out_vld 1 1 } } }
	x_init_V_1_load_2_out { ap_vld {  { x_init_V_1_load_2_out out_data 1 32 }  { x_init_V_1_load_2_out_ap_vld out_vld 1 1 } } }
	x_init_V_0_load_2_out { ap_vld {  { x_init_V_0_load_2_out out_data 1 32 }  { x_init_V_0_load_2_out_ap_vld out_vld 1 1 } } }
	x_init_V_0 { ap_ovld {  { x_init_V_0_i in_data 0 32 }  { x_init_V_0_o out_data 1 32 }  { x_init_V_0_o_ap_vld out_vld 1 1 } } }
	x_init_V_1 { ap_ovld {  { x_init_V_1_i in_data 0 32 }  { x_init_V_1_o out_data 1 32 }  { x_init_V_1_o_ap_vld out_vld 1 1 } } }
	x_init_V_2 { ap_ovld {  { x_init_V_2_i in_data 0 32 }  { x_init_V_2_o out_data 1 32 }  { x_init_V_2_o_ap_vld out_vld 1 1 } } }
	x_init_V_3 { ap_ovld {  { x_init_V_3_i in_data 0 32 }  { x_init_V_3_o out_data 1 32 }  { x_init_V_3_o_ap_vld out_vld 1 1 } } }
}
