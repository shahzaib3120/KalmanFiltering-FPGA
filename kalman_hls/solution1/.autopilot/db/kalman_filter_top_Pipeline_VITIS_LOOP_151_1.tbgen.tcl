set moduleName kalman_filter_top_Pipeline_VITIS_LOOP_151_1
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
set C_modelName {kalman_filter_top_Pipeline_VITIS_LOOP_151_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ hostmem int 32 regular {axi_master 1}  }
	{ x_init_V_0_load_2_reload int 32 regular  }
	{ x_init_V_1_load_2_reload int 32 regular  }
	{ x_init_V_2_load_2_reload int 32 regular  }
	{ x_init_V_3_load_2_reload int 32 regular  }
	{ sext_ln151_1 int 62 regular  }
	{ sext_ln151 int 62 regular  }
	{ P_init_V int 32 regular {array 16 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hostmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x","offset": { "type": "dynamic","port_name": "x","bundle": "CONTROL_BUS"},"direction": "WRITEONLY"},{"cName": "P","offset": { "type": "dynamic","port_name": "P","bundle": "CONTROL_BUS"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "x_init_V_0_load_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_init_V_1_load_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_init_V_2_load_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_init_V_3_load_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln151_1", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln151", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "P_init_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_hostmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_hostmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_hostmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_hostmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_hostmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_hostmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_hostmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_hostmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_hostmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_hostmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ x_init_V_0_load_2_reload sc_in sc_lv 32 signal 1 } 
	{ x_init_V_1_load_2_reload sc_in sc_lv 32 signal 2 } 
	{ x_init_V_2_load_2_reload sc_in sc_lv 32 signal 3 } 
	{ x_init_V_3_load_2_reload sc_in sc_lv 32 signal 4 } 
	{ sext_ln151_1 sc_in sc_lv 62 signal 5 } 
	{ sext_ln151 sc_in sc_lv 62 signal 6 } 
	{ P_init_V_address0 sc_out sc_lv 4 signal 7 } 
	{ P_init_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ P_init_V_q0 sc_in sc_lv 32 signal 7 } 
	{ P_init_V_address1 sc_out sc_lv 4 signal 7 } 
	{ P_init_V_ce1 sc_out sc_logic 1 signal 7 } 
	{ P_init_V_q1 sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_hostmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_hostmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_hostmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hostmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_hostmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWID" }} , 
 	{ "name": "m_axi_hostmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_hostmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_hostmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_hostmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_hostmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_hostmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_hostmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_hostmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_hostmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_hostmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_hostmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_hostmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_hostmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_hostmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_hostmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "WID" }} , 
 	{ "name": "m_axi_hostmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_hostmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_hostmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_hostmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hostmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_hostmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "ARID" }} , 
 	{ "name": "m_axi_hostmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_hostmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_hostmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_hostmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_hostmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_hostmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_hostmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_hostmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_hostmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_hostmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_hostmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_hostmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_hostmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_hostmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RID" }} , 
 	{ "name": "m_axi_hostmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "hostmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_hostmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_hostmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_hostmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_hostmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_hostmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_hostmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BID" }} , 
 	{ "name": "m_axi_hostmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BUSER" }} , 
 	{ "name": "x_init_V_0_load_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_0_load_2_reload", "role": "default" }} , 
 	{ "name": "x_init_V_1_load_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_1_load_2_reload", "role": "default" }} , 
 	{ "name": "x_init_V_2_load_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_2_load_2_reload", "role": "default" }} , 
 	{ "name": "x_init_V_3_load_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_init_V_3_load_2_reload", "role": "default" }} , 
 	{ "name": "sext_ln151_1", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln151_1", "role": "default" }} , 
 	{ "name": "sext_ln151", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln151", "role": "default" }} , 
 	{ "name": "P_init_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P_init_V", "role": "address0" }} , 
 	{ "name": "P_init_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_init_V", "role": "ce0" }} , 
 	{ "name": "P_init_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_init_V", "role": "q0" }} , 
 	{ "name": "P_init_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "P_init_V", "role": "address1" }} , 
 	{ "name": "P_init_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_init_V", "role": "ce1" }} , 
 	{ "name": "P_init_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_init_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "kalman_filter_top_Pipeline_VITIS_LOOP_151_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "hostmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "hostmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "hostmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "x_init_V_0_load_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_init_V_1_load_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_init_V_2_load_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_init_V_3_load_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln151_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln151", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_init_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U89", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_top_Pipeline_VITIS_LOOP_151_1 {
		hostmem {Type O LastRead 7 FirstWrite 2}
		x_init_V_0_load_2_reload {Type I LastRead 0 FirstWrite -1}
		x_init_V_1_load_2_reload {Type I LastRead 0 FirstWrite -1}
		x_init_V_2_load_2_reload {Type I LastRead 0 FirstWrite -1}
		x_init_V_3_load_2_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln151_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln151 {Type I LastRead 0 FirstWrite -1}
		P_init_V {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28", "Max" : "28"}
	, {"Name" : "Interval", "Min" : "28", "Max" : "28"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_hostmem_AWVALID VALID 1 1 }  { m_axi_hostmem_AWREADY READY 0 1 }  { m_axi_hostmem_AWADDR ADDR 1 64 }  { m_axi_hostmem_AWID ID 1 1 }  { m_axi_hostmem_AWLEN SIZE 1 32 }  { m_axi_hostmem_AWSIZE BURST 1 3 }  { m_axi_hostmem_AWBURST LOCK 1 2 }  { m_axi_hostmem_AWLOCK CACHE 1 2 }  { m_axi_hostmem_AWCACHE PROT 1 4 }  { m_axi_hostmem_AWPROT QOS 1 3 }  { m_axi_hostmem_AWQOS REGION 1 4 }  { m_axi_hostmem_AWREGION USER 1 4 }  { m_axi_hostmem_AWUSER DATA 1 1 }  { m_axi_hostmem_WVALID VALID 1 1 }  { m_axi_hostmem_WREADY READY 0 1 }  { m_axi_hostmem_WDATA FIFONUM 1 32 }  { m_axi_hostmem_WSTRB STRB 1 4 }  { m_axi_hostmem_WLAST LAST 1 1 }  { m_axi_hostmem_WID ID 1 1 }  { m_axi_hostmem_WUSER DATA 1 1 }  { m_axi_hostmem_ARVALID VALID 1 1 }  { m_axi_hostmem_ARREADY READY 0 1 }  { m_axi_hostmem_ARADDR ADDR 1 64 }  { m_axi_hostmem_ARID ID 1 1 }  { m_axi_hostmem_ARLEN SIZE 1 32 }  { m_axi_hostmem_ARSIZE BURST 1 3 }  { m_axi_hostmem_ARBURST LOCK 1 2 }  { m_axi_hostmem_ARLOCK CACHE 1 2 }  { m_axi_hostmem_ARCACHE PROT 1 4 }  { m_axi_hostmem_ARPROT QOS 1 3 }  { m_axi_hostmem_ARQOS REGION 1 4 }  { m_axi_hostmem_ARREGION USER 1 4 }  { m_axi_hostmem_ARUSER DATA 1 1 }  { m_axi_hostmem_RVALID VALID 0 1 }  { m_axi_hostmem_RREADY READY 1 1 }  { m_axi_hostmem_RDATA FIFONUM 0 32 }  { m_axi_hostmem_RLAST LAST 0 1 }  { m_axi_hostmem_RID ID 0 1 }  { m_axi_hostmem_RFIFONUM LEN 0 9 }  { m_axi_hostmem_RUSER DATA 0 1 }  { m_axi_hostmem_RRESP RESP 0 2 }  { m_axi_hostmem_BVALID VALID 0 1 }  { m_axi_hostmem_BREADY READY 1 1 }  { m_axi_hostmem_BRESP RESP 0 2 }  { m_axi_hostmem_BID ID 0 1 }  { m_axi_hostmem_BUSER DATA 0 1 } } }
	x_init_V_0_load_2_reload { ap_none {  { x_init_V_0_load_2_reload in_data 0 32 } } }
	x_init_V_1_load_2_reload { ap_none {  { x_init_V_1_load_2_reload in_data 0 32 } } }
	x_init_V_2_load_2_reload { ap_none {  { x_init_V_2_load_2_reload in_data 0 32 } } }
	x_init_V_3_load_2_reload { ap_none {  { x_init_V_3_load_2_reload in_data 0 32 } } }
	sext_ln151_1 { ap_none {  { sext_ln151_1 in_data 0 62 } } }
	sext_ln151 { ap_none {  { sext_ln151 in_data 0 62 } } }
	P_init_V { ap_memory {  { P_init_V_address0 mem_address 1 4 }  { P_init_V_ce0 mem_ce 1 1 }  { P_init_V_q0 mem_dout 0 32 }  { P_init_V_address1 MemPortADDR2 1 4 }  { P_init_V_ce1 MemPortCE2 1 1 }  { P_init_V_q1 MemPortDOUT2 0 32 } } }
}
