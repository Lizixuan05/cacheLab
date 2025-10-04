create_project -force lab5 ./project -part xc7a100ticsg324-1L

# Add conventional sources
add_files -scan_for_includes ../rtl

# Add IPs
add_files -quiet [glob -nocomplain ../rtl/xilinx_ip/*.xci]

# Add simulation files
add_files -fileset sim_1 ../testbench

# Add constraints
add_files -fileset constrs_1 -quiet ./constraints

set_property -name "top" -value "tb_top" -objects  [get_filesets sim_1]
set_property -name "xsim.simulate.log_all_signals" -value "1" -objects [get_filesets sim_1]
