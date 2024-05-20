# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CONTROL_BUS {
z { 
	dir I
	width 32
	depth 2
	mode ap_memory
	offset 16
	offset_end 23
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
x { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 24
	offset_end 35
}
P { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 36
	offset_end 47
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CONTROL_BUS $port_CONTROL_BUS


