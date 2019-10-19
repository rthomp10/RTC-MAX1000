# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: RTC.tcl
# Generated on: Sat Oct 19 13:23:55 2019

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "RTC"]} {
		puts "Project RTC is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists RTC]} {
		project_open -revision light_switch RTC
	} else {
		project_new -revision light_switch RTC
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "MAX 10"
	set_global_assignment -name DEVICE 10M08SAU169C8G
	set_global_assignment -name TOP_LEVEL_ENTITY timer
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 18.1.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "09:59:49  OCTOBER 19, 2019"
	set_global_assignment -name LAST_QUARTUS_VERSION "18.1.0 Lite Edition"
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name SDC_FILE ../MAX1000_restraints.sdc
	set_global_assignment -name VERILOG_FILE light_count.v
	set_global_assignment -name QIP_FILE clk.qip
	set_global_assignment -name BDF_FILE timer.bdf
	set_global_assignment -name QIP_FILE time_count.qip
	set_global_assignment -name VCCA_USER_VOLTAGE 3.3V
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 3.3V
	set_global_assignment -name FLOW_ENABLE_POWER_ANALYZER ON
	set_global_assignment -name POWER_DEFAULT_INPUT_IO_TOGGLE_RATE "12.5 %"
	set_global_assignment -name ENABLE_OCT_DONE ON
	set_global_assignment -name USE_CONFIGURATION_DEVICE ON
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name QIP_FILE RTC_counter_switch.qip
	set_location_assignment PIN_A8 -to LED[0]
	set_location_assignment PIN_A9 -to LED[1]
	set_location_assignment PIN_A11 -to LED[2]
	set_location_assignment PIN_A10 -to LED[3]
	set_location_assignment PIN_B10 -to LED[4]
	set_location_assignment PIN_C9 -to LED[5]
	set_location_assignment PIN_C10 -to LED[6]
	set_location_assignment PIN_D8 -to LED[7]
	set_location_assignment PIN_H6 -to CLK12M
	set_location_assignment PIN_E6 -to USER_BTN
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Including default assignments
	set_global_assignment -name TIMING_ANALYZER_MULTICORNER_ANALYSIS ON -family "MAX 10"
	set_global_assignment -name TIMING_ANALYZER_REPORT_WORST_CASE_TIMING_PATHS OFF -family "MAX 10"
	set_global_assignment -name TIMING_ANALYZER_CCPP_TRADEOFF_TOLERANCE 0 -family "MAX 10"
	set_global_assignment -name TDC_CCPP_TRADEOFF_TOLERANCE 0 -family "MAX 10"
	set_global_assignment -name TIMING_ANALYZER_DO_CCPP_REMOVAL ON -family "MAX 10"
	set_global_assignment -name DISABLE_LEGACY_TIMING_ANALYZER OFF -family "MAX 10"
	set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON -family "MAX 10"
	set_global_assignment -name SYNCHRONIZATION_REGISTER_CHAIN_LENGTH 2 -family "MAX 10"
	set_global_assignment -name SYNTH_RESOURCE_AWARE_INFERENCE_FOR_BLOCK_RAM ON -family "MAX 10"
	set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS" -family "MAX 10"
	set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON -family "MAX 10"
	set_global_assignment -name AUTO_DELAY_CHAINS ON -family "MAX 10"

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
