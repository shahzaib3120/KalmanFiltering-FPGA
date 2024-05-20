# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name P_init_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename P_init_V \
    op interface \
    ports { P_init_V_address0 { O 4 vector } P_init_V_ce0 { O 1 bit } P_init_V_q0 { I 32 vector } P_init_V_address1 { O 4 vector } P_init_V_ce1 { O 1 bit } P_init_V_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_init_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name hostmem \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_hostmem \
    op interface \
    ports { m_axi_hostmem_AWVALID { O 1 bit } m_axi_hostmem_AWREADY { I 1 bit } m_axi_hostmem_AWADDR { O 64 vector } m_axi_hostmem_AWID { O 1 vector } m_axi_hostmem_AWLEN { O 32 vector } m_axi_hostmem_AWSIZE { O 3 vector } m_axi_hostmem_AWBURST { O 2 vector } m_axi_hostmem_AWLOCK { O 2 vector } m_axi_hostmem_AWCACHE { O 4 vector } m_axi_hostmem_AWPROT { O 3 vector } m_axi_hostmem_AWQOS { O 4 vector } m_axi_hostmem_AWREGION { O 4 vector } m_axi_hostmem_AWUSER { O 1 vector } m_axi_hostmem_WVALID { O 1 bit } m_axi_hostmem_WREADY { I 1 bit } m_axi_hostmem_WDATA { O 32 vector } m_axi_hostmem_WSTRB { O 4 vector } m_axi_hostmem_WLAST { O 1 bit } m_axi_hostmem_WID { O 1 vector } m_axi_hostmem_WUSER { O 1 vector } m_axi_hostmem_ARVALID { O 1 bit } m_axi_hostmem_ARREADY { I 1 bit } m_axi_hostmem_ARADDR { O 64 vector } m_axi_hostmem_ARID { O 1 vector } m_axi_hostmem_ARLEN { O 32 vector } m_axi_hostmem_ARSIZE { O 3 vector } m_axi_hostmem_ARBURST { O 2 vector } m_axi_hostmem_ARLOCK { O 2 vector } m_axi_hostmem_ARCACHE { O 4 vector } m_axi_hostmem_ARPROT { O 3 vector } m_axi_hostmem_ARQOS { O 4 vector } m_axi_hostmem_ARREGION { O 4 vector } m_axi_hostmem_ARUSER { O 1 vector } m_axi_hostmem_RVALID { I 1 bit } m_axi_hostmem_RREADY { O 1 bit } m_axi_hostmem_RDATA { I 32 vector } m_axi_hostmem_RLAST { I 1 bit } m_axi_hostmem_RID { I 1 vector } m_axi_hostmem_RFIFONUM { I 9 vector } m_axi_hostmem_RUSER { I 1 vector } m_axi_hostmem_RRESP { I 2 vector } m_axi_hostmem_BVALID { I 1 bit } m_axi_hostmem_BREADY { O 1 bit } m_axi_hostmem_BRESP { I 2 vector } m_axi_hostmem_BID { I 1 vector } m_axi_hostmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name x_init_V_0_load_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_0_load_2_reload \
    op interface \
    ports { x_init_V_0_load_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name x_init_V_1_load_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_1_load_2_reload \
    op interface \
    ports { x_init_V_1_load_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name x_init_V_2_load_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_2_load_2_reload \
    op interface \
    ports { x_init_V_2_load_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name x_init_V_3_load_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_3_load_2_reload \
    op interface \
    ports { x_init_V_3_load_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name sext_ln151_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln151_1 \
    op interface \
    ports { sext_ln151_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name sext_ln151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln151 \
    op interface \
    ports { sext_ln151 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName kalman_filter_top_flow_control_loop_pipe_sequential_init_U
set CompName kalman_filter_top_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix kalman_filter_top_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


