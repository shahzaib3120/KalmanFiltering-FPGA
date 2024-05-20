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
    id 47 \
    name P_prior_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename P_prior_V \
    op interface \
    ports { P_prior_V_address0 { O 4 vector } P_prior_V_ce0 { O 1 bit } P_prior_V_q0 { I 32 vector } P_prior_V_address1 { O 4 vector } P_prior_V_ce1 { O 1 bit } P_prior_V_q1 { I 32 vector } P_prior_V_address2 { O 4 vector } P_prior_V_ce2 { O 1 bit } P_prior_V_q2 { I 32 vector } P_prior_V_address3 { O 4 vector } P_prior_V_ce3 { O 1 bit } P_prior_V_q3 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_prior_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name H \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename H \
    op interface \
    ports { H_address0 { O 3 vector } H_ce0 { O 1 bit } H_q0 { I 17 vector } H_address1 { O 3 vector } H_ce1 { O 1 bit } H_q1 { I 17 vector } H_address2 { O 3 vector } H_ce2 { O 1 bit } H_q2 { I 17 vector } H_address3 { O 3 vector } H_ce3 { O 1 bit } H_q3 { I 17 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'H'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name S_V_1_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_S_V_1_1_1_out \
    op interface \
    ports { S_V_1_1_1_out { O 32 vector } S_V_1_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name S_V_1_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_S_V_1_0_1_out \
    op interface \
    ports { S_V_1_0_1_out { O 32 vector } S_V_1_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name S_V_0_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_S_V_0_1_1_out \
    op interface \
    ports { S_V_0_1_1_out { O 32 vector } S_V_0_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name S_V_0_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_S_V_0_0_1_out \
    op interface \
    ports { S_V_0_0_1_out { O 32 vector } S_V_0_0_1_out_ap_vld { O 1 bit } } \
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


