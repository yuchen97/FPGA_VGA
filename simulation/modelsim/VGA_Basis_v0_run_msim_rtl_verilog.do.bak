transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Buffer/FPGA_BUFFER/VGA_Basis_v0 {E:/Buffer/FPGA_BUFFER/VGA_Basis_v0/VGA_Basis_v0.v}
vlog -vlog01compat -work work +incdir+E:/Buffer/FPGA_BUFFER/VGA_Basis_v0 {E:/Buffer/FPGA_BUFFER/VGA_Basis_v0/IP.v}
vlog -vlog01compat -work work +incdir+E:/Buffer/FPGA_BUFFER/VGA_Basis_v0 {E:/Buffer/FPGA_BUFFER/VGA_Basis_v0/VGA_Driver.v}
vlog -vlog01compat -work work +incdir+E:/Buffer/FPGA_BUFFER/VGA_Basis_v0/db {E:/Buffer/FPGA_BUFFER/VGA_Basis_v0/db/ip_altpll.v}

vlog -vlog01compat -work work +incdir+E:/Buffer/FPGA_BUFFER/VGA_Basis_v0/simulation/modelsim {E:/Buffer/FPGA_BUFFER/VGA_Basis_v0/simulation/modelsim/VGA_Basis_v0.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  VGA_Basis_v0_vlg_tst

add wave *
view structure
view signals
run -all
