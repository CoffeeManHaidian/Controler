
################################################################
# This is a generated script based on design: loopback_debug_bd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source loopback_debug_bd_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# min_optical_loopback_debug_top

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k325tffg900-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name loopback_debug_bd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_NUM_OF_PROBES {15} \
   CONFIG.C_PROBE0_WIDTH {1} \
   CONFIG.C_PROBE10_WIDTH {32} \
   CONFIG.C_PROBE11_WIDTH {1} \
   CONFIG.C_PROBE12_WIDTH {32} \
   CONFIG.C_PROBE13_WIDTH {1} \
   CONFIG.C_PROBE14_WIDTH {64} \
   CONFIG.C_PROBE1_WIDTH {32} \
   CONFIG.C_PROBE2_WIDTH {32} \
   CONFIG.C_PROBE3_WIDTH {32} \
   CONFIG.C_PROBE4_WIDTH {32} \
   CONFIG.C_PROBE5_WIDTH {32} \
   CONFIG.C_PROBE6_WIDTH {32} \
   CONFIG.C_PROBE7_WIDTH {32} \
   CONFIG.C_PROBE8_WIDTH {32} \
   CONFIG.C_PROBE9_WIDTH {32} \
 ] $ila_0

  # Create instance: min_optical_loopback_debug_top_0, and set properties
  set block_name min_optical_loopback_debug_top
  set block_cell_name min_optical_loopback_debug_top_0
  if { [catch {set min_optical_loopback_debug_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $min_optical_loopback_debug_top_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_NUM_PROBE_IN {0} \
   CONFIG.C_NUM_PROBE_OUT {3} \
   CONFIG.C_PROBE_OUT0_WIDTH {1} \
   CONFIG.C_PROBE_OUT1_WIDTH {32} \
   CONFIG.C_PROBE_OUT2_WIDTH {32} \
 ] $vio_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_0

  # Create port connections
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins ila_0/clk] [get_bd_pins min_optical_loopback_debug_top_0/clk] [get_bd_pins vio_0/clk]
  connect_bd_net -net min_optical_loopback_debug_top_0_crc_error_count [get_bd_pins ila_0/probe7] [get_bd_pins min_optical_loopback_debug_top_0/crc_error_count]
  connect_bd_net -net min_optical_loopback_debug_top_0_format_error_count [get_bd_pins ila_0/probe8] [get_bd_pins min_optical_loopback_debug_top_0/format_error_count]
  connect_bd_net -net min_optical_loopback_debug_top_0_gtx_tx_data [get_bd_pins ila_0/probe12] [get_bd_pins min_optical_loopback_debug_top_0/gtx_tx_data]
  connect_bd_net -net min_optical_loopback_debug_top_0_gtx_tx_valid [get_bd_pins ila_0/probe11] [get_bd_pins min_optical_loopback_debug_top_0/gtx_tx_valid]
  connect_bd_net -net min_optical_loopback_debug_top_0_gtx_tx_word_count [get_bd_pins ila_0/probe5] [get_bd_pins min_optical_loopback_debug_top_0/gtx_tx_word_count]
  connect_bd_net -net min_optical_loopback_debug_top_0_last_rx_seq [get_bd_pins ila_0/probe10] [get_bd_pins min_optical_loopback_debug_top_0/last_rx_seq]
  connect_bd_net -net min_optical_loopback_debug_top_0_match_count [get_bd_pins ila_0/probe9] [get_bd_pins min_optical_loopback_debug_top_0/match_count]
  connect_bd_net -net min_optical_loopback_debug_top_0_optical_tx_data [get_bd_pins ila_0/probe14] [get_bd_pins min_optical_loopback_debug_top_0/optical_tx_data]
  connect_bd_net -net min_optical_loopback_debug_top_0_optical_tx_valid [get_bd_pins ila_0/probe13] [get_bd_pins min_optical_loopback_debug_top_0/optical_tx_valid]
  connect_bd_net -net min_optical_loopback_debug_top_0_rx_frame_count [get_bd_pins ila_0/probe6] [get_bd_pins min_optical_loopback_debug_top_0/rx_frame_count]
  connect_bd_net -net min_optical_loopback_debug_top_0_status_reg [get_bd_pins ila_0/probe3] [get_bd_pins min_optical_loopback_debug_top_0/status_reg]
  connect_bd_net -net min_optical_loopback_debug_top_0_tx_frame_count [get_bd_pins ila_0/probe4] [get_bd_pins min_optical_loopback_debug_top_0/tx_frame_count]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins ila_0/probe0] [get_bd_pins min_optical_loopback_debug_top_0/pcie_wr_en] [get_bd_pins vio_0/probe_out0]
  connect_bd_net -net vio_0_probe_out1 [get_bd_pins ila_0/probe1] [get_bd_pins min_optical_loopback_debug_top_0/pcie_wr_addr] [get_bd_pins vio_0/probe_out1]
  connect_bd_net -net vio_0_probe_out2 [get_bd_pins ila_0/probe2] [get_bd_pins min_optical_loopback_debug_top_0/pcie_wr_data] [get_bd_pins vio_0/probe_out2]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins min_optical_loopback_debug_top_0/rst] [get_bd_pins xlconstant_0/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


