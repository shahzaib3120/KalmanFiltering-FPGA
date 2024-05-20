set moduleName kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20
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
set C_modelName {kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20}
set C_modelType { void 0 }
set C_modelArgList {
	{ K_V int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ temp_V int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ H int 17 regular {array 8 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "K_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "H", "interface" : "memory", "bitwidth" : 17, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ K_V_address0 sc_out sc_lv 3 signal 0 } 
	{ K_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ K_V_q0 sc_in sc_lv 32 signal 0 } 
	{ K_V_address1 sc_out sc_lv 3 signal 0 } 
	{ K_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ K_V_q1 sc_in sc_lv 32 signal 0 } 
	{ temp_V_address0 sc_out sc_lv 4 signal 1 } 
	{ temp_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ temp_V_we0 sc_out sc_logic 1 signal 1 } 
	{ temp_V_d0 sc_out sc_lv 32 signal 1 } 
	{ H_address0 sc_out sc_lv 3 signal 2 } 
	{ H_ce0 sc_out sc_logic 1 signal 2 } 
	{ H_q0 sc_in sc_lv 17 signal 2 } 
	{ H_address1 sc_out sc_lv 3 signal 2 } 
	{ H_ce1 sc_out sc_logic 1 signal 2 } 
	{ H_q1 sc_in sc_lv 17 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "K_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "K_V", "role": "address0" }} , 
 	{ "name": "K_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_V", "role": "ce0" }} , 
 	{ "name": "K_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_V", "role": "q0" }} , 
 	{ "name": "K_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "K_V", "role": "address1" }} , 
 	{ "name": "K_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "K_V", "role": "ce1" }} , 
 	{ "name": "K_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_V", "role": "q1" }} , 
 	{ "name": "temp_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "temp_V", "role": "address0" }} , 
 	{ "name": "temp_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_V", "role": "ce0" }} , 
 	{ "name": "temp_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "temp_V", "role": "we0" }} , 
 	{ "name": "temp_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_V", "role": "d0" }} , 
 	{ "name": "H_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "H", "role": "address0" }} , 
 	{ "name": "H_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "ce0" }} , 
 	{ "name": "H_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "H", "role": "q0" }} , 
 	{ "name": "H_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "H", "role": "address1" }} , 
 	{ "name": "H_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "H", "role": "ce1" }} , 
 	{ "name": "H_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "H", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "K_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "temp_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "H", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_89_19_VITIS_LOOP_90_20", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_32s_48_2_1_U80", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_32s_48_2_1_U81", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20 {
		K_V {Type I LastRead 1 FirstWrite -1}
		temp_V {Type O LastRead -1 FirstWrite 4}
		H {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "21"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	K_V { ap_memory {  { K_V_address0 mem_address 1 3 }  { K_V_ce0 mem_ce 1 1 }  { K_V_q0 mem_dout 0 32 }  { K_V_address1 MemPortADDR2 1 3 }  { K_V_ce1 MemPortCE2 1 1 }  { K_V_q1 MemPortDOUT2 0 32 } } }
	temp_V { ap_memory {  { temp_V_address0 mem_address 1 4 }  { temp_V_ce0 mem_ce 1 1 }  { temp_V_we0 mem_we 1 1 }  { temp_V_d0 mem_din 1 32 } } }
	H { ap_memory {  { H_address0 mem_address 1 3 }  { H_ce0 mem_ce 1 1 }  { H_q0 mem_dout 0 17 }  { H_address1 MemPortADDR2 1 3 }  { H_ce1 MemPortCE2 1 1 }  { H_q1 MemPortDOUT2 0 17 } } }
}
