##########################################################
source strategy.tcl

if {0<$argc} {
  set ::nonprj::strategy [lindex $argv 0]
  if {-1==[lsearch -exact $::nonprj::strategy_names $::nonprj::strategy]} {
    exit
  }
} else {
  set ::nonprj::strategy {Vivado_Implementation_Defaults}
}
##########################################################

##########################################################
if {"None"==$::nonprj::strategy} {
  if {1<$argc} {
    if {1==[lindex $argv 1]&&0==[file exists project_1]} {
      source project.tcl
      close_project
    }
    if {2<$argc} {
      if {1==[lindex $argv 2]} {
        open_project project_1/project_1.xpr
        update_compile_order -fileset sources_1
        open_bd_design [get_files -regexp .*design_1.bd]
        validate_bd_design
        save_bd_design
        reset_run synth_1
        launch_runs synth_1 -jobs [exec cat ../SYNTHJOBS]
        wait_on_run synth_1
        close_project
      }
    }
  }
}
##########################################################

##########################################################
if {"None"!=$::nonprj::strategy} {
  set i 1
  while {[file exists [set ::nonprj::prj_dir nonproject_${i}_${::nonprj::strategy}]]} {incr i}
  file mkdir $::nonprj::prj_dir
  cd $::nonprj::prj_dir
}
##########################################################

##########################################################
if {"None"!=$::nonprj::strategy} {
  set ::nonprj::part xck26-sfvc784-2LV-c
  create_project -in_memory -part $::nonprj::part

  set_property source_mgmt_mode All [current_project]

  set ::nonprj::ipdir ../../src/ip
  set_property IP_REPO_PATHS $::nonprj::ipdir [current_project] 

  set ::nonprj::board_part {xilinx.com:kv260_som:part0:1.4}
  set_property BOARD_PART $::nonprj::board_part [current_project]

  set ::nonprj::board_connections {som240_1_connector xilinx.com:kv260_carrier:som240_1_connector:1.3}
  set_property BOARD_CONNECTIONS $::nonprj::board_connections [current_project]

  read_xdc ../../src/xdc/io.xdc
  read_xdc ../../src/xdc/debug.xdc

  read_bd ../../src/bd/design_1/design_1.bd 
  read_verilog ../../src/bd/design_1/hdl/design_1_wrapper.v
  read_vhdl ../../src/hdl/top.vhd
}
##########################################################

##########################################################
if {"None"!=$::nonprj::strategy} {
  synth_design -top top
  if {3<$argc&&1==[lindex $argv 3]} {
    write_checkpoint -force synth
  }
  report_timing_summary -file synth_timing_summary.rpt
  report_methodology -file synth_methodology.rpt
  report_route_status -file synth_route_status.rpt
  report_utilization -file synth_utilization.rpt
  report_cdc -file synth_cdc.rpt
}
##########################################################

##########################################################
for {set i 0} {$i<[llength [dict keys [dict get $::nonprj::strategies $::nonprj::strategy]]]} {incr i} {
  set ::nonprj::keyVal [dict get $::nonprj::strategies $::nonprj::strategy $i]
  set ::nonprj::cmd [lindex $::nonprj::keyVal 0]
  set ::nonprj::args [lindex $::nonprj::keyVal 1]
  $::nonprj::cmd {*}$::nonprj::args
  if {"place_design"==$::nonprj::cmd} {
    if {3<$argc&&1==[lindex $argv 3]} {
      write_checkpoint -force ${i}_${::nonprj::cmd}
    }
  } elseif {"phys_opt_design"==$::nonprj::cmd} {
    if {3<$argc&&1==[lindex $argv 3]} {
      write_checkpoint -force ${i}_${::nonprj::cmd}
    }
    report_timing_summary -file ${i}_${::nonprj::cmd}_timing_summary.rpt
    report_methodology -file ${i}_${::nonprj::cmd}_methodology.rpt
    report_route_status -file ${i}_${::nonprj::cmd}_route_status.rpt
    report_utilization -file ${i}_${::nonprj::cmd}_utilization.rpt
    report_cdc -file ${i}_${::nonprj::cmd}_cdc.rpt
  } elseif {"route_design"==$::nonprj::cmd} {
    if {3<$argc&&1==[lindex $argv 3]} {
      write_checkpoint -force ${i}_${::nonprj::cmd}
    }
    report_timing_summary -file ${i}_${::nonprj::cmd}_timing_summary.rpt
    report_methodology -file ${i}_${::nonprj::cmd}_methodology.rpt
    report_route_status -file ${i}_${::nonprj::cmd}_route_status.rpt
    report_utilization -file ${i}_${::nonprj::cmd}_utilization.rpt
    report_cdc -file ${i}_${::nonprj::cmd}_cdc.rpt
  }
}
set ::nonprj::keyVal {}
set ::nonprj::cmd {}
set ::nonprj::args {}
##########################################################

##########################################################
if {"None"!=$::nonprj::strategy} {
  report_timing_summary -file impl_timing_summary.rpt
  report_methodology -file impl_methodology.rpt
  report_route_status -file impl_route_status.rpt
  report_utilization -file impl_utilization.rpt
  report_cdc -file impl_cdc.rpt
  report_io -file impl_io.rpt
  report_drc -file impl_drc.rpt
}
##########################################################

##########################################################
if {"None"!=$::nonprj::strategy} {
  write_bitstream -force top.bit
  write_debug_probes -force top.ltx
  write_hw_platform -fixed -include_bit -force top.xsa
  if {4<$argc&&1==[lindex $argv 4]} {
    file copy -force top.xsa ../
    file copy -force top.ltx ../
    file copy -force top.bit ../
  }
}
##########################################################
