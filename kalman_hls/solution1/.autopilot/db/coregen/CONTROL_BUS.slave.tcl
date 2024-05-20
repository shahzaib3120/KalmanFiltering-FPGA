dict set slaves CONTROL_BUS {ports {z {type i_ap_memory width 32} x {type i_ap_none width 64} P {type i_ap_none width 64} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {z {width 32}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
