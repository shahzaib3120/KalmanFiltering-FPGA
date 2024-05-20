set moduleName kalman_filter_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ hostmem int 32 regular {axi_master 1}  }
	{ z int 32 regular {axi_slave 0}  }
	{ x int 64 regular {axi_slave 0}  }
	{ P int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hostmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x","offset": { "type": "dynamic","port_name": "x","bundle": "CONTROL_BUS"},"direction": "WRITEONLY"},{"cName": "P","offset": { "type": "dynamic","port_name": "P","bundle": "CONTROL_BUS"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "z", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "x", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":35}} , 
 	{ "Name" : "P", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":36}, "offset_end" : {"in":47}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_hostmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_hostmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_hostmem_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_hostmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_hostmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_hostmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"kalman_filter_top","role":"start","value":"0","valid_bit":"0"},{"name":"kalman_filter_top","role":"continue","value":"0","valid_bit":"4"},{"name":"kalman_filter_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"z","role":"data","value":"16"},{"name":"x","role":"data","value":"24"},{"name":"P","role":"data","value":"36"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"kalman_filter_top","role":"start","value":"0","valid_bit":"0"},{"name":"kalman_filter_top","role":"done","value":"0","valid_bit":"1"},{"name":"kalman_filter_top","role":"idle","value":"0","valid_bit":"2"},{"name":"kalman_filter_top","role":"ready","value":"0","valid_bit":"3"},{"name":"kalman_filter_top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_hostmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_hostmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_hostmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hostmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_hostmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "AWID" }} , 
 	{ "name": "m_axi_hostmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hostmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_hostmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hostmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_hostmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_hostmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_hostmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_hostmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_hostmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_hostmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BID" }} , 
 	{ "name": "m_axi_hostmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "14", "24", "27", "29", "31", "35", "38", "42", "44", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58"],
		"CDFG" : "kalman_filter_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "229", "EstimateLatencyMax" : "229",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hostmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_151_1_fu_293", "Port" : "hostmem", "Inst_start_state" : "70", "Inst_end_state" : "71"}]},
			{"Name" : "z", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_44_8_fu_219", "Port" : "z", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_init_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_82_17_fu_254", "Port" : "x_init_V_0", "Inst_start_state" : "64", "Inst_end_state" : "65"}]},
			{"Name" : "x_init_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_82_17_fu_254", "Port" : "x_init_V_1", "Inst_start_state" : "64", "Inst_end_state" : "65"}]},
			{"Name" : "x_init_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_82_17_fu_254", "Port" : "x_init_V_2", "Inst_start_state" : "64", "Inst_end_state" : "65"}]},
			{"Name" : "x_init_V_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_82_17_fu_254", "Port" : "x_init_V_3", "Inst_start_state" : "64", "Inst_end_state" : "65"}]},
			{"Name" : "P_init_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_98_22_VITIS_LOOP_99_23_fu_285", "Port" : "P_init_V", "Inst_start_state" : "68", "Inst_end_state" : "69"},
					{"ID" : "44", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_151_1_fu_293", "Port" : "P_init_V", "Inst_start_state" : "70", "Inst_end_state" : "71"},
					{"ID" : "14", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204", "Port" : "P_init_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "Q", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7_fu_212", "Port" : "Q", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "H", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20_fu_277", "Port" : "H", "Inst_start_state" : "66", "Inst_end_state" : "67"},
					{"ID" : "27", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_44_8_fu_219", "Port" : "H", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "29", "SubInstance" : "grp_kalman_filter_top_Pipeline_VITIS_LOOP_52_10_VITIS_LOOP_53_11_fu_233", "Port" : "H", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P_init_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.H_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.P_prior_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_20_1_fu_192", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "kalman_filter_top_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln1273", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1273_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1273_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln20", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_prior_V_3_0255_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_prior_V_2_0254_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_prior_V_1_0253_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_prior_V_0_0252_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_20_1_fu_192.mux_42_32_1_1_U1", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_20_1_fu_192.mux_42_32_1_1_U2", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_20_1_fu_192.mux_42_32_1_1_U3", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_20_1_fu_192.mul_32s_32ns_48_2_1_U6", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_20_1_fu_192.mux_42_32_1_1_U7", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_20_1_fu_192.mul_32s_32ns_48_2_1_U8", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_20_1_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_prior_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "P_init_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_3_VITIS_LOOP_28_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204.mux_42_32_1_1_U19", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204.mux_42_32_1_1_U20", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204.mul_32s_32ns_48_2_1_U21", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204.mul_32s_32ns_48_2_1_U22", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204.mux_42_32_1_1_U23", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204.mux_42_32_1_1_U24", "Parent" : "14"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204.mul_32s_32ns_48_2_1_U25", "Parent" : "14"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204.mul_32s_32ns_48_2_1_U26", "Parent" : "14"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4_fu_204.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7_fu_212", "Parent" : "0", "Child" : ["25", "26"],
		"CDFG" : "kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_prior_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Q", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_36_6_VITIS_LOOP_37_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7_fu_212.Q_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7_fu_212.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_44_8_fu_219", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "kalman_filter_top_Pipeline_VITIS_LOOP_44_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1348", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1348_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1348_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1348_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_V_1_0257_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "y_V_0_0256_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "H", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_44_8_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_52_10_VITIS_LOOP_53_11_fu_233", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "kalman_filter_top_Pipeline_VITIS_LOOP_52_10_VITIS_LOOP_53_11",
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
			{"Name" : "P_prior_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "S_V_1_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_V_1_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_V_0_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "S_V_0_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "H", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_10_VITIS_LOOP_53_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_52_10_VITIS_LOOP_53_11_fu_233.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14_fu_244", "Parent" : "0", "Child" : ["32", "33", "34"],
		"CDFG" : "kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_prior_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "S_inv_V_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_inv_V_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_inv_V_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "S_inv_V_1_0", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_71_13_VITIS_LOOP_72_14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14_fu_244.mul_48s_32s_64_5_1_U53", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14_fu_244.mul_48s_32s_64_5_1_U54", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14_fu_244.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_82_17_fu_254", "Parent" : "0", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_82_17_fu_254.mux_42_32_1_1_U64", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_82_17_fu_254.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20_fu_277", "Parent" : "0", "Child" : ["39", "40", "41"],
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20_fu_277.mul_17ns_32s_48_2_1_U80", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20_fu_277.mul_17ns_32s_48_2_1_U81", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_98_22_VITIS_LOOP_99_23_fu_285", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "kalman_filter_top_Pipeline_VITIS_LOOP_98_22_VITIS_LOOP_99_23",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_prior_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "temp_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P_init_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_22_VITIS_LOOP_99_23", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_98_22_VITIS_LOOP_99_23_fu_285.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_151_1_fu_293", "Parent" : "0", "Child" : ["45", "46"],
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
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_151_1_fu_293.mux_42_32_1_1_U89", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_kalman_filter_top_Pipeline_VITIS_LOOP_151_1_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hostmem_m_axi_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_2_1_U98", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_48_2_1_U99", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_48ns_32s_32_52_seq_1_U100", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_49ns_32s_32_53_seq_1_U101", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_49ns_32s_32_53_seq_1_U102", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_48ns_32s_32_52_seq_1_U103", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_48_2_1_U104", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_48_2_1_U105", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_48_2_1_U106", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_17ns_48_2_1_U107", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_top {
		hostmem {Type O LastRead 7 FirstWrite 2}
		z {Type I LastRead 2 FirstWrite -1}
		x {Type I LastRead 69 FirstWrite -1}
		P {Type I LastRead 69 FirstWrite -1}
		x_init_V_0 {Type IO LastRead -1 FirstWrite -1}
		x_init_V_1 {Type IO LastRead -1 FirstWrite -1}
		x_init_V_2 {Type IO LastRead -1 FirstWrite -1}
		x_init_V_3 {Type IO LastRead -1 FirstWrite -1}
		P_init_V {Type IO LastRead -1 FirstWrite -1}
		Q {Type I LastRead -1 FirstWrite -1}
		H {Type I LastRead -1 FirstWrite -1}}
	kalman_filter_top_Pipeline_VITIS_LOOP_20_1 {
		sext_ln1273 {Type I LastRead 0 FirstWrite -1}
		sext_ln1273_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln1273_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln20 {Type I LastRead 0 FirstWrite -1}
		x_prior_V_3_0255_out {Type O LastRead -1 FirstWrite 3}
		x_prior_V_2_0254_out {Type O LastRead -1 FirstWrite 3}
		x_prior_V_1_0253_out {Type O LastRead -1 FirstWrite 3}
		x_prior_V_0_0252_out {Type O LastRead -1 FirstWrite 3}}
	kalman_filter_top_Pipeline_VITIS_LOOP_27_3_VITIS_LOOP_28_4 {
		P_prior_V {Type O LastRead -1 FirstWrite 6}
		P_init_V {Type I LastRead 2 FirstWrite -1}}
	kalman_filter_top_Pipeline_VITIS_LOOP_36_6_VITIS_LOOP_37_7 {
		P_prior_V {Type IO LastRead 0 FirstWrite 1}
		Q {Type I LastRead -1 FirstWrite -1}}
	kalman_filter_top_Pipeline_VITIS_LOOP_44_8 {
		z {Type I LastRead 2 FirstWrite -1}
		sext_ln1348 {Type I LastRead 0 FirstWrite -1}
		sext_ln1348_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln1348_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln1348_3 {Type I LastRead 0 FirstWrite -1}
		y_V_1_0257_out {Type O LastRead -1 FirstWrite 4}
		y_V_0_0256_out {Type O LastRead -1 FirstWrite 4}
		H {Type I LastRead 2 FirstWrite -1}}
	kalman_filter_top_Pipeline_VITIS_LOOP_52_10_VITIS_LOOP_53_11 {
		P_prior_V {Type I LastRead 1 FirstWrite -1}
		S_V_1_1_1_out {Type O LastRead -1 FirstWrite 4}
		S_V_1_0_1_out {Type O LastRead -1 FirstWrite 4}
		S_V_0_1_1_out {Type O LastRead -1 FirstWrite 4}
		S_V_0_0_1_out {Type O LastRead -1 FirstWrite 4}
		H {Type I LastRead 2 FirstWrite -1}}
	kalman_filter_top_Pipeline_VITIS_LOOP_71_13_VITIS_LOOP_72_14 {
		P_prior_V {Type I LastRead 1 FirstWrite -1}
		K_V {Type O LastRead -1 FirstWrite 7}
		S_inv_V_0_1 {Type I LastRead 0 FirstWrite -1}
		S_inv_V_0_0 {Type I LastRead 0 FirstWrite -1}
		S_inv_V_1_1 {Type I LastRead 0 FirstWrite -1}
		S_inv_V_1_0 {Type I LastRead 0 FirstWrite -1}}
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
		x_init_V_3 {Type IO LastRead 4 FirstWrite 5}}
	kalman_filter_top_Pipeline_VITIS_LOOP_89_19_VITIS_LOOP_90_20 {
		K_V {Type I LastRead 1 FirstWrite -1}
		temp_V {Type O LastRead -1 FirstWrite 4}
		H {Type I LastRead 1 FirstWrite -1}}
	kalman_filter_top_Pipeline_VITIS_LOOP_98_22_VITIS_LOOP_99_23 {
		P_prior_V {Type I LastRead 0 FirstWrite -1}
		temp_V {Type I LastRead 0 FirstWrite -1}
		P_init_V {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "229", "Max" : "229"}
	, {"Name" : "Interval", "Min" : "230", "Max" : "230"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hostmem { m_axi {  { m_axi_hostmem_AWVALID VALID 1 1 }  { m_axi_hostmem_AWREADY READY 0 1 }  { m_axi_hostmem_AWADDR ADDR 1 64 }  { m_axi_hostmem_AWID ID 1 1 }  { m_axi_hostmem_AWLEN SIZE 1 8 }  { m_axi_hostmem_AWSIZE BURST 1 3 }  { m_axi_hostmem_AWBURST LOCK 1 2 }  { m_axi_hostmem_AWLOCK CACHE 1 2 }  { m_axi_hostmem_AWCACHE PROT 1 4 }  { m_axi_hostmem_AWPROT QOS 1 3 }  { m_axi_hostmem_AWQOS REGION 1 4 }  { m_axi_hostmem_AWREGION USER 1 4 }  { m_axi_hostmem_AWUSER DATA 1 1 }  { m_axi_hostmem_WVALID VALID 1 1 }  { m_axi_hostmem_WREADY READY 0 1 }  { m_axi_hostmem_WDATA FIFONUM 1 32 }  { m_axi_hostmem_WSTRB STRB 1 4 }  { m_axi_hostmem_WLAST LAST 1 1 }  { m_axi_hostmem_WID ID 1 1 }  { m_axi_hostmem_WUSER DATA 1 1 }  { m_axi_hostmem_ARVALID VALID 1 1 }  { m_axi_hostmem_ARREADY READY 0 1 }  { m_axi_hostmem_ARADDR ADDR 1 64 }  { m_axi_hostmem_ARID ID 1 1 }  { m_axi_hostmem_ARLEN SIZE 1 8 }  { m_axi_hostmem_ARSIZE BURST 1 3 }  { m_axi_hostmem_ARBURST LOCK 1 2 }  { m_axi_hostmem_ARLOCK CACHE 1 2 }  { m_axi_hostmem_ARCACHE PROT 1 4 }  { m_axi_hostmem_ARPROT QOS 1 3 }  { m_axi_hostmem_ARQOS REGION 1 4 }  { m_axi_hostmem_ARREGION USER 1 4 }  { m_axi_hostmem_ARUSER DATA 1 1 }  { m_axi_hostmem_RVALID VALID 0 1 }  { m_axi_hostmem_RREADY READY 1 1 }  { m_axi_hostmem_RDATA FIFONUM 0 32 }  { m_axi_hostmem_RLAST LAST 0 1 }  { m_axi_hostmem_RID ID 0 1 }  { m_axi_hostmem_RUSER DATA 0 1 }  { m_axi_hostmem_RRESP RESP 0 2 }  { m_axi_hostmem_BVALID VALID 0 1 }  { m_axi_hostmem_BREADY READY 1 1 }  { m_axi_hostmem_BRESP RESP 0 2 }  { m_axi_hostmem_BID ID 0 1 }  { m_axi_hostmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict hostmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ hostmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ hostmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
