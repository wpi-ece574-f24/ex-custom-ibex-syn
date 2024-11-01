
# XM-Sim Command File
# TOOL:	xmsim	22.09-s011
#

set tcl_prompt1 {puts -nonewline "xcelium> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 1
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 1
set tcl_all64 false
set tcl_runerror_exit false
set assert_report_incompletes 0
set show_force 1
set force_reset_by_reinvoke 0
set tcl_relaxed_literal 0
set probe_exclude_patterns {}
set probe_packed_limit 4k
set probe_unpacked_limit 16k
set assert_internal_msg no
set svseed 1
set assert_reporting_mode 0
set vcd_compact_mode 0
alias . run
alias quit exit
database -open -shm -into waves.shm waves -default
probe -create -database waves tb.dut.u_ibex_demo_system.u_top.alert_major_bus_o tb.dut.u_ibex_demo_system.u_top.alert_major_internal_o tb.dut.u_ibex_demo_system.u_top.alert_minor_o tb.dut.u_ibex_demo_system.u_top.boot_addr_i tb.dut.u_ibex_demo_system.u_top.clk tb.dut.u_ibex_demo_system.u_top.clk_i tb.dut.u_ibex_demo_system.u_top.clock_en tb.dut.u_ibex_demo_system.u_top.core_alert_major_bus tb.dut.u_ibex_demo_system.u_top.core_alert_major_internal tb.dut.u_ibex_demo_system.u_top.core_alert_minor tb.dut.u_ibex_demo_system.u_top.core_busy_d tb.dut.u_ibex_demo_system.u_top.core_busy_q tb.dut.u_ibex_demo_system.u_top.core_sleep_o tb.dut.u_ibex_demo_system.u_top.crash_dump_o tb.dut.u_ibex_demo_system.u_top.data_addr_o tb.dut.u_ibex_demo_system.u_top.data_be_o tb.dut.u_ibex_demo_system.u_top.data_err_i tb.dut.u_ibex_demo_system.u_top.data_gnt_i tb.dut.u_ibex_demo_system.u_top.data_rdata_core tb.dut.u_ibex_demo_system.u_top.data_rdata_i tb.dut.u_ibex_demo_system.u_top.data_rdata_intg_i tb.dut.u_ibex_demo_system.u_top.data_req_o tb.dut.u_ibex_demo_system.u_top.data_rvalid_i tb.dut.u_ibex_demo_system.u_top.data_wdata_core tb.dut.u_ibex_demo_system.u_top.data_wdata_intg_o tb.dut.u_ibex_demo_system.u_top.data_wdata_o tb.dut.u_ibex_demo_system.u_top.data_we_o tb.dut.u_ibex_demo_system.u_top.debug_req_i tb.dut.u_ibex_demo_system.u_top.double_fault_seen_o tb.dut.u_ibex_demo_system.u_top.dummy_instr_id tb.dut.u_ibex_demo_system.u_top.dummy_instr_wb tb.dut.u_ibex_demo_system.u_top.fetch_enable_buf tb.dut.u_ibex_demo_system.u_top.fetch_enable_i tb.dut.u_ibex_demo_system.u_top.hart_id_i tb.dut.u_ibex_demo_system.u_top.ic_data_addr tb.dut.u_ibex_demo_system.u_top.ic_data_rdata tb.dut.u_ibex_demo_system.u_top.ic_data_req tb.dut.u_ibex_demo_system.u_top.ic_data_wdata tb.dut.u_ibex_demo_system.u_top.ic_data_write tb.dut.u_ibex_demo_system.u_top.ic_scr_key_req tb.dut.u_ibex_demo_system.u_top.ic_tag_addr tb.dut.u_ibex_demo_system.u_top.ic_tag_rdata tb.dut.u_ibex_demo_system.u_top.ic_tag_req tb.dut.u_ibex_demo_system.u_top.ic_tag_wdata tb.dut.u_ibex_demo_system.u_top.ic_tag_write tb.dut.u_ibex_demo_system.u_top.instr_addr_o tb.dut.u_ibex_demo_system.u_top.instr_err_i tb.dut.u_ibex_demo_system.u_top.instr_gnt_i tb.dut.u_ibex_demo_system.u_top.instr_rdata_core tb.dut.u_ibex_demo_system.u_top.instr_rdata_i tb.dut.u_ibex_demo_system.u_top.instr_rdata_intg_i tb.dut.u_ibex_demo_system.u_top.instr_req_o tb.dut.u_ibex_demo_system.u_top.instr_rvalid_i tb.dut.u_ibex_demo_system.u_top.irq_external_i tb.dut.u_ibex_demo_system.u_top.irq_fast_i tb.dut.u_ibex_demo_system.u_top.irq_nm_i tb.dut.u_ibex_demo_system.u_top.irq_pending tb.dut.u_ibex_demo_system.u_top.irq_software_i tb.dut.u_ibex_demo_system.u_top.irq_timer_i tb.dut.u_ibex_demo_system.u_top.lockstep_alert_major_bus tb.dut.u_ibex_demo_system.u_top.lockstep_alert_major_internal tb.dut.u_ibex_demo_system.u_top.lockstep_alert_minor tb.dut.u_ibex_demo_system.u_top.ram_cfg_i tb.dut.u_ibex_demo_system.u_top.rf_alert_major_internal tb.dut.u_ibex_demo_system.u_top.rf_raddr_a tb.dut.u_ibex_demo_system.u_top.rf_raddr_b tb.dut.u_ibex_demo_system.u_top.rf_rdata_a_ecc tb.dut.u_ibex_demo_system.u_top.rf_rdata_a_ecc_buf tb.dut.u_ibex_demo_system.u_top.rf_rdata_b_ecc tb.dut.u_ibex_demo_system.u_top.rf_rdata_b_ecc_buf tb.dut.u_ibex_demo_system.u_top.rf_waddr_wb tb.dut.u_ibex_demo_system.u_top.rf_wdata_wb_ecc tb.dut.u_ibex_demo_system.u_top.rf_we_wb tb.dut.u_ibex_demo_system.u_top.rst_ni tb.dut.u_ibex_demo_system.u_top.scan_rst_ni tb.dut.u_ibex_demo_system.u_top.scramble_key_i tb.dut.u_ibex_demo_system.u_top.scramble_key_q tb.dut.u_ibex_demo_system.u_top.scramble_key_valid_d tb.dut.u_ibex_demo_system.u_top.scramble_key_valid_i tb.dut.u_ibex_demo_system.u_top.scramble_key_valid_q tb.dut.u_ibex_demo_system.u_top.scramble_nonce_i tb.dut.u_ibex_demo_system.u_top.scramble_nonce_q tb.dut.u_ibex_demo_system.u_top.scramble_req_d tb.dut.u_ibex_demo_system.u_top.scramble_req_o tb.dut.u_ibex_demo_system.u_top.scramble_req_q tb.dut.u_ibex_demo_system.u_top.test_en_i
probe -create -database waves tb.dut.u_ibex_demo_system.u_myreg._sv2v_0 tb.dut.u_ibex_demo_system.u_myreg.clk_i tb.dut.u_ibex_demo_system.u_myreg.device_addr_i tb.dut.u_ibex_demo_system.u_myreg.device_be_i tb.dut.u_ibex_demo_system.u_myreg.device_rdata_o tb.dut.u_ibex_demo_system.u_myreg.device_req_i tb.dut.u_ibex_demo_system.u_myreg.device_rvalid_o tb.dut.u_ibex_demo_system.u_myreg.device_wdata_i tb.dut.u_ibex_demo_system.u_myreg.device_we_i tb.dut.u_ibex_demo_system.u_myreg.reg1_data tb.dut.u_ibex_demo_system.u_myreg.reg1_rd tb.dut.u_ibex_demo_system.u_myreg.reg1_wr tb.dut.u_ibex_demo_system.u_myreg.reg2_data tb.dut.u_ibex_demo_system.u_myreg.reg2_rd tb.dut.u_ibex_demo_system.u_myreg.reg2_wr tb.dut.u_ibex_demo_system.u_myreg.reg_addr tb.dut.u_ibex_demo_system.u_myreg.rst_ni tb.dut.u_ibex_demo_system.u_myreg.unused_device_addr

simvision -input /home/pschaumont/ex-custom-ibex-syn/sim/.simvision/13678_pschaumont__autosave.tcl.svcf
