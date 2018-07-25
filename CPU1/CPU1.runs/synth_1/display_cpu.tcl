# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
  set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Labtools 27-147} -limit 4294967295
create_project -in_memory -part xc7a35tcpg236-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_verilog -library xil_defaultlib {
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/RegisterFile.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/PC.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/Mux.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/InsMEM.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/Extend.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/DataMEM.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/ControlUnit.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/ALU.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/s_cpu.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/key_fangdou.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/display.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/counter4.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/clock_div.v
  C:/Xilinx/Vivado/CPU1/CPU1.srcs/sources_1/new/display_cpu.v
}
read_xdc C:/Xilinx/Vivado/CPU1/CPU1.srcs/constrs_1/new/display_cpu.xdc
set_property used_in_implementation false [get_files C:/Xilinx/Vivado/CPU1/CPU1.srcs/constrs_1/new/display_cpu.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Xilinx/Vivado/CPU1/CPU1.cache/wt [current_project]
set_property parent.project_dir C:/Xilinx/Vivado/CPU1 [current_project]
catch { write_hwdef -file display_cpu.hwdef }
synth_design -top display_cpu -part xc7a35tcpg236-1
write_checkpoint display_cpu.dcp
report_utilization -file display_cpu_utilization_synth.rpt -pb display_cpu_utilization_synth.pb
