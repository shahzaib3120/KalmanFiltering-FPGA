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
    id 69 \
    name K_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename K_V \
    op interface \
    ports { K_V_address0 { O 3 vector } K_V_ce0 { O 1 bit } K_V_q0 { I 32 vector } K_V_address1 { O 3 vector } K_V_ce1 { O 1 bit } K_V_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'K_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name x_init_V_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_3_load \
    op interface \
    ports { x_init_V_3_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name x_init_V_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_2_load \
    op interface \
    ports { x_init_V_2_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name x_init_V_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_1_load \
    op interface \
    ports { x_init_V_1_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name x_init_V_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_0_load \
    op interface \
    ports { x_init_V_0_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name sext_ln1273_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln1273_9 \
    op interface \
    ports { sext_ln1273_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name y_V_1_0257_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_V_1_0257_cast \
    op interface \
    ports { y_V_1_0257_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name x_init_V_3_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_3_load_2_out \
    op interface \
    ports { x_init_V_3_load_2_out { O 32 vector } x_init_V_3_load_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name x_init_V_2_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_2_load_2_out \
    op interface \
    ports { x_init_V_2_load_2_out { O 32 vector } x_init_V_2_load_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name x_init_V_1_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_1_load_2_out \
    op interface \
    ports { x_init_V_1_load_2_out { O 32 vector } x_init_V_1_load_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name x_init_V_0_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_0_load_2_out \
    op interface \
    ports { x_init_V_0_load_2_out { O 32 vector } x_init_V_0_load_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name x_init_V_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_0 \
    op interface \
    ports { x_init_V_0_i { I 32 vector } x_init_V_0_o { O 32 vector } x_init_V_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name x_init_V_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_1 \
    op interface \
    ports { x_init_V_1_i { I 32 vector } x_init_V_1_o { O 32 vector } x_init_V_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name x_init_V_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_2 \
    op interface \
    ports { x_init_V_2_i { I 32 vector } x_init_V_2_o { O 32 vector } x_init_V_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name x_init_V_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_x_init_V_3 \
    op interface \
    ports { x_init_V_3_i { I 32 vector } x_init_V_3_o { O 32 vector } x_init_V_3_o_ap_vld { O 1 bit } } \
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


