module ExampleRocketSystem( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228045.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228046.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228047.4]
  input         mem_axi4_0_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output        mem_axi4_0_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [3:0]  mem_axi4_0_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [31:0] mem_axi4_0_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [7:0]  mem_axi4_0_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [2:0]  mem_axi4_0_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [1:0]  mem_axi4_0_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output        mem_axi4_0_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [3:0]  mem_axi4_0_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [2:0]  mem_axi4_0_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [3:0]  mem_axi4_0_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input         mem_axi4_0_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output        mem_axi4_0_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [31:0] mem_axi4_0_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [3:0]  mem_axi4_0_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output        mem_axi4_0_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output        mem_axi4_0_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input         mem_axi4_0_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input  [3:0]  mem_axi4_0_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input  [1:0]  mem_axi4_0_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input         mem_axi4_0_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output        mem_axi4_0_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [3:0]  mem_axi4_0_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [31:0] mem_axi4_0_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [7:0]  mem_axi4_0_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [2:0]  mem_axi4_0_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [1:0]  mem_axi4_0_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output        mem_axi4_0_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [3:0]  mem_axi4_0_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [2:0]  mem_axi4_0_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output [3:0]  mem_axi4_0_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  output        mem_axi4_0_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input         mem_axi4_0_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input  [3:0]  mem_axi4_0_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input  [31:0] mem_axi4_0_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input  [1:0]  mem_axi4_0_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input         mem_axi4_0_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228049.4]
  input         mmio_axi4_0_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output        mmio_axi4_0_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [3:0]  mmio_axi4_0_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [30:0] mmio_axi4_0_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [7:0]  mmio_axi4_0_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [2:0]  mmio_axi4_0_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [1:0]  mmio_axi4_0_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output        mmio_axi4_0_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [3:0]  mmio_axi4_0_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [2:0]  mmio_axi4_0_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [3:0]  mmio_axi4_0_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  input         mmio_axi4_0_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output        mmio_axi4_0_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [31:0] mmio_axi4_0_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [3:0]  mmio_axi4_0_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output        mmio_axi4_0_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output        mmio_axi4_0_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  input         mmio_axi4_0_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  input  [3:0]  mmio_axi4_0_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  input  [1:0]  mmio_axi4_0_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  input         mmio_axi4_0_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output        mmio_axi4_0_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [3:0]  mmio_axi4_0_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [30:0] mmio_axi4_0_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [7:0]  mmio_axi4_0_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [2:0]  mmio_axi4_0_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [1:0]  mmio_axi4_0_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output        mmio_axi4_0_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [3:0]  mmio_axi4_0_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [2:0]  mmio_axi4_0_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output [3:0]  mmio_axi4_0_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output        mmio_axi4_0_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  input         mmio_axi4_0_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  input  [3:0]  mmio_axi4_0_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  input  [31:0] mmio_axi4_0_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  input  [1:0]  mmio_axi4_0_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  input         mmio_axi4_0_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228050.4]
  output        l2_frontend_bus_axi4_0_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input         l2_frontend_bus_axi4_0_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [7:0]  l2_frontend_bus_axi4_0_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [31:0] l2_frontend_bus_axi4_0_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [7:0]  l2_frontend_bus_axi4_0_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [2:0]  l2_frontend_bus_axi4_0_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [1:0]  l2_frontend_bus_axi4_0_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input         l2_frontend_bus_axi4_0_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [3:0]  l2_frontend_bus_axi4_0_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [2:0]  l2_frontend_bus_axi4_0_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [3:0]  l2_frontend_bus_axi4_0_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  output        l2_frontend_bus_axi4_0_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input         l2_frontend_bus_axi4_0_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [63:0] l2_frontend_bus_axi4_0_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [7:0]  l2_frontend_bus_axi4_0_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input         l2_frontend_bus_axi4_0_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input         l2_frontend_bus_axi4_0_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  output        l2_frontend_bus_axi4_0_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  output [7:0]  l2_frontend_bus_axi4_0_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  output [1:0]  l2_frontend_bus_axi4_0_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  output        l2_frontend_bus_axi4_0_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input         l2_frontend_bus_axi4_0_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [7:0]  l2_frontend_bus_axi4_0_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [31:0] l2_frontend_bus_axi4_0_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [7:0]  l2_frontend_bus_axi4_0_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [2:0]  l2_frontend_bus_axi4_0_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [1:0]  l2_frontend_bus_axi4_0_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input         l2_frontend_bus_axi4_0_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [3:0]  l2_frontend_bus_axi4_0_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [2:0]  l2_frontend_bus_axi4_0_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input  [3:0]  l2_frontend_bus_axi4_0_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input         l2_frontend_bus_axi4_0_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  output        l2_frontend_bus_axi4_0_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  output [7:0]  l2_frontend_bus_axi4_0_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  output [63:0] l2_frontend_bus_axi4_0_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  output [1:0]  l2_frontend_bus_axi4_0_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  output        l2_frontend_bus_axi4_0_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228051.4]
  input         resetctrl_hartIsInReset_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228053.4]
  input         debug_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  input         debug_reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  output        debug_clockeddmi_dmi_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  input         debug_clockeddmi_dmi_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  input  [6:0]  debug_clockeddmi_dmi_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  input  [31:0] debug_clockeddmi_dmi_req_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  input  [1:0]  debug_clockeddmi_dmi_req_bits_op, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  input         debug_clockeddmi_dmi_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  output        debug_clockeddmi_dmi_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  output [31:0] debug_clockeddmi_dmi_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  output [1:0]  debug_clockeddmi_dmi_resp_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  input         debug_clockeddmi_dmiClock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  input         debug_clockeddmi_dmiReset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  output        debug_ndreset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  output        debug_dmactive, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  input         debug_dmactiveAck, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228054.4]
  input  [1:0]  interrupts // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228055.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  int_bus_auto_int_in_0; // @[InterruptBus.scala 13:27:freechips.rocketchip.system.DefaultRV32Config.fir@228067.4]
  wire  int_bus_auto_int_in_1; // @[InterruptBus.scala 13:27:freechips.rocketchip.system.DefaultRV32Config.fir@228067.4]
  wire  int_bus_auto_int_out_0; // @[InterruptBus.scala 13:27:freechips.rocketchip.system.DefaultRV32Config.fir@228067.4]
  wire  int_bus_auto_int_out_1; // @[InterruptBus.scala 13:27:freechips.rocketchip.system.DefaultRV32Config.fir@228067.4]
  wire  dummyClockGroupSourceNode_clock; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_reset; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_5_clock; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_5_reset; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_4_clock; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_4_reset; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_3_clock; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_3_reset; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_2_clock; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_2_reset; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_1_clock; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_1_reset; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_0_clock; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  dummyClockGroupSourceNode_auto_out_member_0_reset; // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [30:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [7:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [30:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [7:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_source; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_address; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_mask; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_address; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_source; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_address; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_source; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_sink; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_denied; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_bits_sink; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [4:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [4:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [4:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [4:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [27:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [3:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [4:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_clock; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_reset; // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
  wire  subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_clock; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228083.4]
  wire  subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_reset; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228083.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [31:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [2:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [1:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [3:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [2:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [63:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [1:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [31:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [2:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [1:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [3:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [2:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [63:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [1:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_clock; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_reset; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_ready; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_valid; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [2:0] subsystem_fbus_auto_bus_xing_out_a_bits_opcode; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [2:0] subsystem_fbus_auto_bus_xing_out_a_bits_param; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_a_bits_size; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_a_bits_source; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [31:0] subsystem_fbus_auto_bus_xing_out_a_bits_address; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_bufferable; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_modifiable; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_readalloc; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_writealloc; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_privileged; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_secure; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_fetch; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_a_bits_mask; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [31:0] subsystem_fbus_auto_bus_xing_out_a_bits_data; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_corrupt; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_d_ready; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_d_valid; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [2:0] subsystem_fbus_auto_bus_xing_out_d_bits_opcode; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [1:0] subsystem_fbus_auto_bus_xing_out_d_bits_param; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_d_bits_size; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_d_bits_source; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [1:0] subsystem_fbus_auto_bus_xing_out_d_bits_sink; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_d_bits_denied; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire [31:0] subsystem_fbus_auto_bus_xing_out_d_bits_data; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_fbus_auto_bus_xing_out_d_bits_corrupt; // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_param; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [9:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [16:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [3:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [9:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [31:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_param; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [9:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [11:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [3:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [31:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_data; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_opcode; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [9:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [31:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_param; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [9:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [25:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [3:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [31:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_data; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_opcode; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [9:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [31:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_param; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [9:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [27:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [3:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [31:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_data; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_corrupt; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_opcode; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [1:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [9:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [31:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_clock; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_reset; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_clock; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_reset; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_clock; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_reset; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_bus_xing_in_a_ready; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_bus_xing_in_a_valid; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_a_bits_opcode; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_a_bits_param; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [3:0] subsystem_cbus_auto_bus_xing_in_a_bits_size; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [4:0] subsystem_cbus_auto_bus_xing_in_a_bits_source; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [27:0] subsystem_cbus_auto_bus_xing_in_a_bits_address; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [3:0] subsystem_cbus_auto_bus_xing_in_a_bits_mask; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [31:0] subsystem_cbus_auto_bus_xing_in_a_bits_data; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_bus_xing_in_a_bits_corrupt; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_bus_xing_in_d_ready; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_bus_xing_in_d_valid; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_d_bits_opcode; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [1:0] subsystem_cbus_auto_bus_xing_in_d_bits_param; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [3:0] subsystem_cbus_auto_bus_xing_in_d_bits_size; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [4:0] subsystem_cbus_auto_bus_xing_in_d_bits_source; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_bus_xing_in_d_bits_sink; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_bus_xing_in_d_bits_denied; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire [31:0] subsystem_cbus_auto_bus_xing_in_d_bits_data; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_cbus_auto_bus_xing_in_d_bits_corrupt; // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [31:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [7:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [31:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [31:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [7:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [31:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_a_ready; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_a_valid; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [2:0] subsystem_mbus_auto_fixer_in_a_bits_opcode; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [2:0] subsystem_mbus_auto_fixer_in_a_bits_param; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [2:0] subsystem_mbus_auto_fixer_in_a_bits_size; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [1:0] subsystem_mbus_auto_fixer_in_a_bits_source; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [31:0] subsystem_mbus_auto_fixer_in_a_bits_address; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_bufferable; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_modifiable; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_readalloc; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_writealloc; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_privileged; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_secure; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_fetch; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [3:0] subsystem_mbus_auto_fixer_in_a_bits_mask; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [31:0] subsystem_mbus_auto_fixer_in_a_bits_data; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_a_bits_corrupt; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_d_ready; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_d_valid; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [2:0] subsystem_mbus_auto_fixer_in_d_bits_opcode; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [2:0] subsystem_mbus_auto_fixer_in_d_bits_size; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [1:0] subsystem_mbus_auto_fixer_in_d_bits_source; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_d_bits_denied; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire [31:0] subsystem_mbus_auto_fixer_in_d_bits_data; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_fixer_in_d_bits_corrupt; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_clock; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_reset; // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [1:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [31:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [3:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [31:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [1:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [31:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_ready; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_valid; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_opcode; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_param; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_size; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [4:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_source; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_address; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_privileged; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_secure; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_fetch; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [3:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_mask; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_data; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_corrupt; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_b_ready; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_b_valid; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [1:0] subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_param; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_address; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_c_ready; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_c_valid; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_opcode; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_param; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_size; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [4:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_source; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_address; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_data; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_corrupt; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_ready; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_valid; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_opcode; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [1:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_param; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_size; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [4:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_source; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [1:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_sink; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_denied; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_data; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_corrupt; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_e_valid; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire [1:0] subsystem_l2_wrapper_auto_coherent_jbar_in_e_bits_sink; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_clock; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_reset; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_clock; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_reset; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_clock; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_reset; // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
  wire  plic_clock; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  plic_reset; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  plic_auto_int_in_0; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  plic_auto_int_in_1; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  plic_auto_int_out_1_0; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  plic_auto_int_out_0_0; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  plic_auto_in_a_ready; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  plic_auto_in_a_valid; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [2:0] plic_auto_in_a_bits_opcode; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [2:0] plic_auto_in_a_bits_param; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [1:0] plic_auto_in_a_bits_size; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [9:0] plic_auto_in_a_bits_source; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [27:0] plic_auto_in_a_bits_address; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [3:0] plic_auto_in_a_bits_mask; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [31:0] plic_auto_in_a_bits_data; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  plic_auto_in_a_bits_corrupt; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  plic_auto_in_d_ready; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  plic_auto_in_d_valid; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [2:0] plic_auto_in_d_bits_opcode; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [1:0] plic_auto_in_d_bits_size; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [9:0] plic_auto_in_d_bits_source; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire [31:0] plic_auto_in_d_bits_data; // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
  wire  clint_clock; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire  clint_reset; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire  clint_auto_int_out_0; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire  clint_auto_int_out_1; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire  clint_auto_in_a_ready; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire  clint_auto_in_a_valid; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [2:0] clint_auto_in_a_bits_opcode; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [2:0] clint_auto_in_a_bits_param; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [1:0] clint_auto_in_a_bits_size; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [9:0] clint_auto_in_a_bits_source; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [25:0] clint_auto_in_a_bits_address; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [3:0] clint_auto_in_a_bits_mask; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [31:0] clint_auto_in_a_bits_data; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire  clint_auto_in_a_bits_corrupt; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire  clint_auto_in_d_ready; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire  clint_auto_in_d_valid; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [2:0] clint_auto_in_d_bits_opcode; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [1:0] clint_auto_in_d_bits_size; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [9:0] clint_auto_in_d_bits_source; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire [31:0] clint_auto_in_d_bits_data; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire  clint_io_rtcTick; // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
  wire  debug_1_auto_dmInner_dmInner_tl_in_a_ready; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_auto_dmInner_dmInner_tl_in_a_valid; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [2:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_opcode; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [2:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_param; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [1:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_size; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [9:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_source; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [11:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_address; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [3:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_mask; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [31:0] debug_1_auto_dmInner_dmInner_tl_in_a_bits_data; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_auto_dmInner_dmInner_tl_in_a_bits_corrupt; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_auto_dmInner_dmInner_tl_in_d_ready; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_auto_dmInner_dmInner_tl_in_d_valid; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [2:0] debug_1_auto_dmInner_dmInner_tl_in_d_bits_opcode; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [1:0] debug_1_auto_dmInner_dmInner_tl_in_d_bits_size; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [9:0] debug_1_auto_dmInner_dmInner_tl_in_d_bits_source; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [31:0] debug_1_auto_dmInner_dmInner_tl_in_d_bits_data; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_auto_dmOuter_intsource_out_sync_0; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_debug_clock; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_debug_reset; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_ctrl_ndreset; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_ctrl_dmactive; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_ctrl_dmactiveAck; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_dmi_dmi_req_ready; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_dmi_dmi_req_valid; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [6:0] debug_1_io_dmi_dmi_req_bits_addr; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [31:0] debug_1_io_dmi_dmi_req_bits_data; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [1:0] debug_1_io_dmi_dmi_req_bits_op; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_dmi_dmi_resp_ready; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_dmi_dmi_resp_valid; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [31:0] debug_1_io_dmi_dmi_resp_bits_data; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire [1:0] debug_1_io_dmi_dmi_resp_bits_resp; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_dmi_dmiClock; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_dmi_dmiReset; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  debug_1_io_hartIsInReset_0; // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
  wire  tile_clock; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_reset; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_intsink_in_sync_0; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_int_in_xing_in_2_sync_0; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_int_in_xing_in_1_sync_0; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_int_in_xing_in_0_sync_0; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_int_in_xing_in_0_sync_1; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_a_ready; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_a_valid; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [2:0] tile_auto_tl_master_xing_out_a_bits_opcode; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [2:0] tile_auto_tl_master_xing_out_a_bits_param; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [3:0] tile_auto_tl_master_xing_out_a_bits_size; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [1:0] tile_auto_tl_master_xing_out_a_bits_source; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [31:0] tile_auto_tl_master_xing_out_a_bits_address; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [3:0] tile_auto_tl_master_xing_out_a_bits_mask; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [31:0] tile_auto_tl_master_xing_out_a_bits_data; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_a_bits_corrupt; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_b_ready; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_b_valid; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [1:0] tile_auto_tl_master_xing_out_b_bits_param; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [31:0] tile_auto_tl_master_xing_out_b_bits_address; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_c_ready; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_c_valid; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [2:0] tile_auto_tl_master_xing_out_c_bits_opcode; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [2:0] tile_auto_tl_master_xing_out_c_bits_param; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [3:0] tile_auto_tl_master_xing_out_c_bits_size; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [1:0] tile_auto_tl_master_xing_out_c_bits_source; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [31:0] tile_auto_tl_master_xing_out_c_bits_address; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [31:0] tile_auto_tl_master_xing_out_c_bits_data; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_c_bits_corrupt; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_d_ready; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_d_valid; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [2:0] tile_auto_tl_master_xing_out_d_bits_opcode; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [1:0] tile_auto_tl_master_xing_out_d_bits_param; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [3:0] tile_auto_tl_master_xing_out_d_bits_size; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [1:0] tile_auto_tl_master_xing_out_d_bits_source; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [1:0] tile_auto_tl_master_xing_out_d_bits_sink; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_d_bits_denied; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [31:0] tile_auto_tl_master_xing_out_d_bits_data; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_d_bits_corrupt; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  tile_auto_tl_master_xing_out_e_valid; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire [1:0] tile_auto_tl_master_xing_out_e_bits_sink; // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
  wire  intsource_clock; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228150.4]
  wire  intsource_reset; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228150.4]
  wire  intsource_auto_in_0; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228150.4]
  wire  intsource_auto_in_1; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228150.4]
  wire  intsource_auto_out_sync_0; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228150.4]
  wire  intsource_auto_out_sync_1; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228150.4]
  wire  intsource_1_clock; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228156.4]
  wire  intsource_1_reset; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228156.4]
  wire  intsource_1_auto_in_0; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228156.4]
  wire  intsource_1_auto_out_sync_0; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228156.4]
  wire  intsource_2_clock; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228162.4]
  wire  intsource_2_reset; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228162.4]
  wire  intsource_2_auto_in_0; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228162.4]
  wire  intsource_2_auto_out_sync_0; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228162.4]
  wire  asyncXing_clock; // @[InterruptBus.scala 16:31:freechips.rocketchip.system.DefaultRV32Config.fir@228174.4]
  wire  asyncXing_auto_int_in_0; // @[InterruptBus.scala 16:31:freechips.rocketchip.system.DefaultRV32Config.fir@228174.4]
  wire  asyncXing_auto_int_in_1; // @[InterruptBus.scala 16:31:freechips.rocketchip.system.DefaultRV32Config.fir@228174.4]
  wire  asyncXing_auto_int_out_0; // @[InterruptBus.scala 16:31:freechips.rocketchip.system.DefaultRV32Config.fir@228174.4]
  wire  asyncXing_auto_int_out_1; // @[InterruptBus.scala 16:31:freechips.rocketchip.system.DefaultRV32Config.fir@228174.4]
  wire  bootrom_clock; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire  bootrom_reset; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire  bootrom_auto_in_a_ready; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire  bootrom_auto_in_a_valid; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire [2:0] bootrom_auto_in_a_bits_opcode; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire [2:0] bootrom_auto_in_a_bits_param; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire [1:0] bootrom_auto_in_a_bits_size; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire [9:0] bootrom_auto_in_a_bits_source; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire [16:0] bootrom_auto_in_a_bits_address; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire [3:0] bootrom_auto_in_a_bits_mask; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire  bootrom_auto_in_a_bits_corrupt; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire  bootrom_auto_in_d_ready; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire  bootrom_auto_in_d_valid; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire [1:0] bootrom_auto_in_d_bits_size; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire [9:0] bootrom_auto_in_d_bits_source; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  wire [31:0] bootrom_auto_in_d_bits_data; // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
  reg [6:0] _T_17; // @[Counter.scala 29:33:freechips.rocketchip.system.DefaultRV32Config.fir@228271.4]
  wire  int_rtc_tick; // @[Counter.scala 38:24:freechips.rocketchip.system.DefaultRV32Config.fir@228275.6]
  wire [6:0] _T_20; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@228277.6]
  IntXbar int_bus ( // @[InterruptBus.scala 13:27:freechips.rocketchip.system.DefaultRV32Config.fir@228067.4]
    .auto_int_in_0(int_bus_auto_int_in_0),
    .auto_int_in_1(int_bus_auto_int_in_1),
    .auto_int_out_0(int_bus_auto_int_out_0),
    .auto_int_out_1(int_bus_auto_int_out_1)
  );
  SimpleClockGroupSource dummyClockGroupSourceNode ( // @[ClockGroup.scala 72:81:freechips.rocketchip.system.DefaultRV32Config.fir@228073.4]
    .clock(dummyClockGroupSourceNode_clock),
    .reset(dummyClockGroupSourceNode_reset),
    .auto_out_member_5_clock(dummyClockGroupSourceNode_auto_out_member_5_clock),
    .auto_out_member_5_reset(dummyClockGroupSourceNode_auto_out_member_5_reset),
    .auto_out_member_4_clock(dummyClockGroupSourceNode_auto_out_member_4_clock),
    .auto_out_member_4_reset(dummyClockGroupSourceNode_auto_out_member_4_reset),
    .auto_out_member_3_clock(dummyClockGroupSourceNode_auto_out_member_3_clock),
    .auto_out_member_3_reset(dummyClockGroupSourceNode_auto_out_member_3_reset),
    .auto_out_member_2_clock(dummyClockGroupSourceNode_auto_out_member_2_clock),
    .auto_out_member_2_reset(dummyClockGroupSourceNode_auto_out_member_2_reset),
    .auto_out_member_1_clock(dummyClockGroupSourceNode_auto_out_member_1_clock),
    .auto_out_member_1_reset(dummyClockGroupSourceNode_auto_out_member_1_reset),
    .auto_out_member_0_clock(dummyClockGroupSourceNode_auto_out_member_0_clock),
    .auto_out_member_0_reset(dummyClockGroupSourceNode_auto_out_member_0_reset)
  );
  SystemBus subsystem_sbus ( // @[SystemBus.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@228079.4]
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last(subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last),
    .auto_coupler_from_tile_tl_master_xing_in_a_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_ready),
    .auto_coupler_from_tile_tl_master_xing_in_a_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_valid),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_param(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_size(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_size),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_source(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_source),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_address(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_address),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_mask(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_mask),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_data(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_data),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt),
    .auto_coupler_from_tile_tl_master_xing_in_b_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_ready),
    .auto_coupler_from_tile_tl_master_xing_in_b_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_valid),
    .auto_coupler_from_tile_tl_master_xing_in_b_bits_param(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_b_bits_address(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_address),
    .auto_coupler_from_tile_tl_master_xing_in_c_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_ready),
    .auto_coupler_from_tile_tl_master_xing_in_c_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_valid),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_param(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_size(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_size),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_source(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_source),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_address(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_address),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_data(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_data),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt),
    .auto_coupler_from_tile_tl_master_xing_in_d_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_ready),
    .auto_coupler_from_tile_tl_master_xing_in_d_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_valid),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_param(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_size(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_size),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_source(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_source),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_sink(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_sink),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_denied(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_denied),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_data(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_data),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt),
    .auto_coupler_from_tile_tl_master_xing_in_e_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_valid),
    .auto_coupler_from_tile_tl_master_xing_in_e_bits_sink(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_bits_sink),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink(subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt(subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt(subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt),
    .auto_subsystem_sbus_clock_groups_in_member_5_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_clock),
    .auto_subsystem_sbus_clock_groups_in_member_5_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_reset),
    .auto_subsystem_sbus_clock_groups_in_member_4_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_clock),
    .auto_subsystem_sbus_clock_groups_in_member_4_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_reset),
    .auto_subsystem_sbus_clock_groups_in_member_3_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_clock),
    .auto_subsystem_sbus_clock_groups_in_member_3_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_reset),
    .auto_subsystem_sbus_clock_groups_in_member_2_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_clock),
    .auto_subsystem_sbus_clock_groups_in_member_2_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_reset),
    .auto_subsystem_sbus_clock_groups_in_member_1_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_clock),
    .auto_subsystem_sbus_clock_groups_in_member_1_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_reset),
    .auto_subsystem_sbus_clock_groups_in_member_0_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_clock),
    .auto_subsystem_sbus_clock_groups_in_member_0_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_reset),
    .auto_subsystem_sbus_clock_groups_out_2_member_1_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_clock),
    .auto_subsystem_sbus_clock_groups_out_2_member_1_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_reset),
    .auto_subsystem_sbus_clock_groups_out_2_member_0_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_clock),
    .auto_subsystem_sbus_clock_groups_out_2_member_0_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_reset),
    .auto_subsystem_sbus_clock_groups_out_1_member_0_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_clock),
    .auto_subsystem_sbus_clock_groups_out_1_member_0_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_reset),
    .auto_subsystem_sbus_clock_groups_out_0_member_1_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_clock),
    .auto_subsystem_sbus_clock_groups_out_0_member_1_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_reset),
    .auto_subsystem_sbus_clock_groups_out_0_member_0_clock(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_clock),
    .auto_subsystem_sbus_clock_groups_out_0_member_0_reset(subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_reset)
  );
  PeripheryBus subsystem_pbus ( // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228083.4]
    .auto_subsystem_pbus_clock_groups_in_member_0_clock(subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_clock),
    .auto_subsystem_pbus_clock_groups_in_member_0_reset(subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_reset)
  );
  FrontBus subsystem_fbus ( // @[FrontBus.scala 22:26:freechips.rocketchip.system.DefaultRV32Config.fir@228087.4]
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last(subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last),
    .auto_subsystem_fbus_clock_groups_in_member_0_clock(subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_clock),
    .auto_subsystem_fbus_clock_groups_in_member_0_reset(subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_reset),
    .auto_bus_xing_out_a_ready(subsystem_fbus_auto_bus_xing_out_a_ready),
    .auto_bus_xing_out_a_valid(subsystem_fbus_auto_bus_xing_out_a_valid),
    .auto_bus_xing_out_a_bits_opcode(subsystem_fbus_auto_bus_xing_out_a_bits_opcode),
    .auto_bus_xing_out_a_bits_param(subsystem_fbus_auto_bus_xing_out_a_bits_param),
    .auto_bus_xing_out_a_bits_size(subsystem_fbus_auto_bus_xing_out_a_bits_size),
    .auto_bus_xing_out_a_bits_source(subsystem_fbus_auto_bus_xing_out_a_bits_source),
    .auto_bus_xing_out_a_bits_address(subsystem_fbus_auto_bus_xing_out_a_bits_address),
    .auto_bus_xing_out_a_bits_user_amba_prot_bufferable(subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_bufferable),
    .auto_bus_xing_out_a_bits_user_amba_prot_modifiable(subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_modifiable),
    .auto_bus_xing_out_a_bits_user_amba_prot_readalloc(subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_readalloc),
    .auto_bus_xing_out_a_bits_user_amba_prot_writealloc(subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_writealloc),
    .auto_bus_xing_out_a_bits_user_amba_prot_privileged(subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_privileged),
    .auto_bus_xing_out_a_bits_user_amba_prot_secure(subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_secure),
    .auto_bus_xing_out_a_bits_user_amba_prot_fetch(subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_fetch),
    .auto_bus_xing_out_a_bits_mask(subsystem_fbus_auto_bus_xing_out_a_bits_mask),
    .auto_bus_xing_out_a_bits_data(subsystem_fbus_auto_bus_xing_out_a_bits_data),
    .auto_bus_xing_out_a_bits_corrupt(subsystem_fbus_auto_bus_xing_out_a_bits_corrupt),
    .auto_bus_xing_out_d_ready(subsystem_fbus_auto_bus_xing_out_d_ready),
    .auto_bus_xing_out_d_valid(subsystem_fbus_auto_bus_xing_out_d_valid),
    .auto_bus_xing_out_d_bits_opcode(subsystem_fbus_auto_bus_xing_out_d_bits_opcode),
    .auto_bus_xing_out_d_bits_param(subsystem_fbus_auto_bus_xing_out_d_bits_param),
    .auto_bus_xing_out_d_bits_size(subsystem_fbus_auto_bus_xing_out_d_bits_size),
    .auto_bus_xing_out_d_bits_source(subsystem_fbus_auto_bus_xing_out_d_bits_source),
    .auto_bus_xing_out_d_bits_sink(subsystem_fbus_auto_bus_xing_out_d_bits_sink),
    .auto_bus_xing_out_d_bits_denied(subsystem_fbus_auto_bus_xing_out_d_bits_denied),
    .auto_bus_xing_out_d_bits_data(subsystem_fbus_auto_bus_xing_out_d_bits_data),
    .auto_bus_xing_out_d_bits_corrupt(subsystem_fbus_auto_bus_xing_out_d_bits_corrupt)
  );
  PeripheryBus_1 subsystem_cbus ( // @[PeripheryBus.scala 32:26:freechips.rocketchip.system.DefaultRV32Config.fir@228091.4]
    .auto_coupler_to_bootrom_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_ready),
    .auto_coupler_to_bootrom_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_valid),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_param(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_param),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_size),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_source(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_source),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_address(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_address),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_mask),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt),
    .auto_coupler_to_bootrom_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_ready),
    .auto_coupler_to_bootrom_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_valid),
    .auto_coupler_to_bootrom_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_size),
    .auto_coupler_to_bootrom_fragmenter_out_d_bits_source(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_source),
    .auto_coupler_to_bootrom_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_data),
    .auto_coupler_to_debug_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_ready),
    .auto_coupler_to_debug_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_valid),
    .auto_coupler_to_debug_fragmenter_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_opcode),
    .auto_coupler_to_debug_fragmenter_out_a_bits_param(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_param),
    .auto_coupler_to_debug_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_size),
    .auto_coupler_to_debug_fragmenter_out_a_bits_source(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_source),
    .auto_coupler_to_debug_fragmenter_out_a_bits_address(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_address),
    .auto_coupler_to_debug_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_mask),
    .auto_coupler_to_debug_fragmenter_out_a_bits_data(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_data),
    .auto_coupler_to_debug_fragmenter_out_a_bits_corrupt(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_corrupt),
    .auto_coupler_to_debug_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_ready),
    .auto_coupler_to_debug_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_valid),
    .auto_coupler_to_debug_fragmenter_out_d_bits_opcode(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_opcode),
    .auto_coupler_to_debug_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_size),
    .auto_coupler_to_debug_fragmenter_out_d_bits_source(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_source),
    .auto_coupler_to_debug_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_data),
    .auto_coupler_to_clint_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_ready),
    .auto_coupler_to_clint_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_valid),
    .auto_coupler_to_clint_fragmenter_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_opcode),
    .auto_coupler_to_clint_fragmenter_out_a_bits_param(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_param),
    .auto_coupler_to_clint_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_size),
    .auto_coupler_to_clint_fragmenter_out_a_bits_source(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_source),
    .auto_coupler_to_clint_fragmenter_out_a_bits_address(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_address),
    .auto_coupler_to_clint_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_mask),
    .auto_coupler_to_clint_fragmenter_out_a_bits_data(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_data),
    .auto_coupler_to_clint_fragmenter_out_a_bits_corrupt(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_corrupt),
    .auto_coupler_to_clint_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_ready),
    .auto_coupler_to_clint_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_valid),
    .auto_coupler_to_clint_fragmenter_out_d_bits_opcode(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_opcode),
    .auto_coupler_to_clint_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_size),
    .auto_coupler_to_clint_fragmenter_out_d_bits_source(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_source),
    .auto_coupler_to_clint_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_data),
    .auto_coupler_to_plic_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_ready),
    .auto_coupler_to_plic_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_valid),
    .auto_coupler_to_plic_fragmenter_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_opcode),
    .auto_coupler_to_plic_fragmenter_out_a_bits_param(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_param),
    .auto_coupler_to_plic_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_size),
    .auto_coupler_to_plic_fragmenter_out_a_bits_source(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_source),
    .auto_coupler_to_plic_fragmenter_out_a_bits_address(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_address),
    .auto_coupler_to_plic_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_mask),
    .auto_coupler_to_plic_fragmenter_out_a_bits_data(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_data),
    .auto_coupler_to_plic_fragmenter_out_a_bits_corrupt(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_corrupt),
    .auto_coupler_to_plic_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_ready),
    .auto_coupler_to_plic_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_valid),
    .auto_coupler_to_plic_fragmenter_out_d_bits_opcode(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_opcode),
    .auto_coupler_to_plic_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_size),
    .auto_coupler_to_plic_fragmenter_out_d_bits_source(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_source),
    .auto_coupler_to_plic_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_data),
    .auto_subsystem_cbus_clock_groups_in_member_1_clock(subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_clock),
    .auto_subsystem_cbus_clock_groups_in_member_1_reset(subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_reset),
    .auto_subsystem_cbus_clock_groups_in_member_0_clock(subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_clock),
    .auto_subsystem_cbus_clock_groups_in_member_0_reset(subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_reset),
    .auto_subsystem_cbus_clock_groups_out_member_0_clock(subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_clock),
    .auto_subsystem_cbus_clock_groups_out_member_0_reset(subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_reset),
    .auto_bus_xing_in_a_ready(subsystem_cbus_auto_bus_xing_in_a_ready),
    .auto_bus_xing_in_a_valid(subsystem_cbus_auto_bus_xing_in_a_valid),
    .auto_bus_xing_in_a_bits_opcode(subsystem_cbus_auto_bus_xing_in_a_bits_opcode),
    .auto_bus_xing_in_a_bits_param(subsystem_cbus_auto_bus_xing_in_a_bits_param),
    .auto_bus_xing_in_a_bits_size(subsystem_cbus_auto_bus_xing_in_a_bits_size),
    .auto_bus_xing_in_a_bits_source(subsystem_cbus_auto_bus_xing_in_a_bits_source),
    .auto_bus_xing_in_a_bits_address(subsystem_cbus_auto_bus_xing_in_a_bits_address),
    .auto_bus_xing_in_a_bits_mask(subsystem_cbus_auto_bus_xing_in_a_bits_mask),
    .auto_bus_xing_in_a_bits_data(subsystem_cbus_auto_bus_xing_in_a_bits_data),
    .auto_bus_xing_in_a_bits_corrupt(subsystem_cbus_auto_bus_xing_in_a_bits_corrupt),
    .auto_bus_xing_in_d_ready(subsystem_cbus_auto_bus_xing_in_d_ready),
    .auto_bus_xing_in_d_valid(subsystem_cbus_auto_bus_xing_in_d_valid),
    .auto_bus_xing_in_d_bits_opcode(subsystem_cbus_auto_bus_xing_in_d_bits_opcode),
    .auto_bus_xing_in_d_bits_param(subsystem_cbus_auto_bus_xing_in_d_bits_param),
    .auto_bus_xing_in_d_bits_size(subsystem_cbus_auto_bus_xing_in_d_bits_size),
    .auto_bus_xing_in_d_bits_source(subsystem_cbus_auto_bus_xing_in_d_bits_source),
    .auto_bus_xing_in_d_bits_sink(subsystem_cbus_auto_bus_xing_in_d_bits_sink),
    .auto_bus_xing_in_d_bits_denied(subsystem_cbus_auto_bus_xing_in_d_bits_denied),
    .auto_bus_xing_in_d_bits_data(subsystem_cbus_auto_bus_xing_in_d_bits_data),
    .auto_bus_xing_in_d_bits_corrupt(subsystem_cbus_auto_bus_xing_in_d_bits_corrupt)
  );
  MemoryBus subsystem_mbus ( // @[MemoryBus.scala 27:26:freechips.rocketchip.system.DefaultRV32Config.fir@228095.4]
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last(subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last),
    .auto_fixer_in_a_ready(subsystem_mbus_auto_fixer_in_a_ready),
    .auto_fixer_in_a_valid(subsystem_mbus_auto_fixer_in_a_valid),
    .auto_fixer_in_a_bits_opcode(subsystem_mbus_auto_fixer_in_a_bits_opcode),
    .auto_fixer_in_a_bits_param(subsystem_mbus_auto_fixer_in_a_bits_param),
    .auto_fixer_in_a_bits_size(subsystem_mbus_auto_fixer_in_a_bits_size),
    .auto_fixer_in_a_bits_source(subsystem_mbus_auto_fixer_in_a_bits_source),
    .auto_fixer_in_a_bits_address(subsystem_mbus_auto_fixer_in_a_bits_address),
    .auto_fixer_in_a_bits_user_amba_prot_bufferable(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_bufferable),
    .auto_fixer_in_a_bits_user_amba_prot_modifiable(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_modifiable),
    .auto_fixer_in_a_bits_user_amba_prot_readalloc(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_readalloc),
    .auto_fixer_in_a_bits_user_amba_prot_writealloc(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_writealloc),
    .auto_fixer_in_a_bits_user_amba_prot_privileged(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_privileged),
    .auto_fixer_in_a_bits_user_amba_prot_secure(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_secure),
    .auto_fixer_in_a_bits_user_amba_prot_fetch(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_fetch),
    .auto_fixer_in_a_bits_mask(subsystem_mbus_auto_fixer_in_a_bits_mask),
    .auto_fixer_in_a_bits_data(subsystem_mbus_auto_fixer_in_a_bits_data),
    .auto_fixer_in_a_bits_corrupt(subsystem_mbus_auto_fixer_in_a_bits_corrupt),
    .auto_fixer_in_d_ready(subsystem_mbus_auto_fixer_in_d_ready),
    .auto_fixer_in_d_valid(subsystem_mbus_auto_fixer_in_d_valid),
    .auto_fixer_in_d_bits_opcode(subsystem_mbus_auto_fixer_in_d_bits_opcode),
    .auto_fixer_in_d_bits_size(subsystem_mbus_auto_fixer_in_d_bits_size),
    .auto_fixer_in_d_bits_source(subsystem_mbus_auto_fixer_in_d_bits_source),
    .auto_fixer_in_d_bits_denied(subsystem_mbus_auto_fixer_in_d_bits_denied),
    .auto_fixer_in_d_bits_data(subsystem_mbus_auto_fixer_in_d_bits_data),
    .auto_fixer_in_d_bits_corrupt(subsystem_mbus_auto_fixer_in_d_bits_corrupt),
    .auto_subsystem_mbus_clock_groups_in_member_0_clock(subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_clock),
    .auto_subsystem_mbus_clock_groups_in_member_0_reset(subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_reset)
  );
  CoherenceManagerWrapper subsystem_l2_wrapper ( // @[BankedL2Params.scala 45:31:freechips.rocketchip.system.DefaultRV32Config.fir@228099.4]
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt(subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt),
    .auto_coherent_jbar_in_a_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_a_ready),
    .auto_coherent_jbar_in_a_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_a_valid),
    .auto_coherent_jbar_in_a_bits_opcode(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_opcode),
    .auto_coherent_jbar_in_a_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_param),
    .auto_coherent_jbar_in_a_bits_size(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_size),
    .auto_coherent_jbar_in_a_bits_source(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_source),
    .auto_coherent_jbar_in_a_bits_address(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_address),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_privileged(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_privileged),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_secure(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_secure),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_fetch(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_fetch),
    .auto_coherent_jbar_in_a_bits_mask(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_mask),
    .auto_coherent_jbar_in_a_bits_data(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_data),
    .auto_coherent_jbar_in_a_bits_corrupt(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_corrupt),
    .auto_coherent_jbar_in_b_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_b_ready),
    .auto_coherent_jbar_in_b_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_b_valid),
    .auto_coherent_jbar_in_b_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_param),
    .auto_coherent_jbar_in_b_bits_address(subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_address),
    .auto_coherent_jbar_in_c_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_c_ready),
    .auto_coherent_jbar_in_c_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_c_valid),
    .auto_coherent_jbar_in_c_bits_opcode(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_opcode),
    .auto_coherent_jbar_in_c_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_param),
    .auto_coherent_jbar_in_c_bits_size(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_size),
    .auto_coherent_jbar_in_c_bits_source(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_source),
    .auto_coherent_jbar_in_c_bits_address(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_address),
    .auto_coherent_jbar_in_c_bits_data(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_data),
    .auto_coherent_jbar_in_c_bits_corrupt(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_corrupt),
    .auto_coherent_jbar_in_d_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_d_ready),
    .auto_coherent_jbar_in_d_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_d_valid),
    .auto_coherent_jbar_in_d_bits_opcode(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_opcode),
    .auto_coherent_jbar_in_d_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_param),
    .auto_coherent_jbar_in_d_bits_size(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_size),
    .auto_coherent_jbar_in_d_bits_source(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_source),
    .auto_coherent_jbar_in_d_bits_sink(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_sink),
    .auto_coherent_jbar_in_d_bits_denied(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_denied),
    .auto_coherent_jbar_in_d_bits_data(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_data),
    .auto_coherent_jbar_in_d_bits_corrupt(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_corrupt),
    .auto_coherent_jbar_in_e_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_e_valid),
    .auto_coherent_jbar_in_e_bits_sink(subsystem_l2_wrapper_auto_coherent_jbar_in_e_bits_sink),
    .auto_subsystem_l2_clock_groups_in_member_1_clock(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_clock),
    .auto_subsystem_l2_clock_groups_in_member_1_reset(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_reset),
    .auto_subsystem_l2_clock_groups_in_member_0_clock(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_clock),
    .auto_subsystem_l2_clock_groups_in_member_0_reset(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_reset),
    .auto_subsystem_l2_clock_groups_out_member_0_clock(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_clock),
    .auto_subsystem_l2_clock_groups_out_member_0_reset(subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_reset)
  );
  TLPLIC plic ( // @[Plic.scala 352:26:freechips.rocketchip.system.DefaultRV32Config.fir@228121.4]
    .clock(plic_clock),
    .reset(plic_reset),
    .auto_int_in_0(plic_auto_int_in_0),
    .auto_int_in_1(plic_auto_int_in_1),
    .auto_int_out_1_0(plic_auto_int_out_1_0),
    .auto_int_out_0_0(plic_auto_int_out_0_0),
    .auto_in_a_ready(plic_auto_in_a_ready),
    .auto_in_a_valid(plic_auto_in_a_valid),
    .auto_in_a_bits_opcode(plic_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(plic_auto_in_a_bits_param),
    .auto_in_a_bits_size(plic_auto_in_a_bits_size),
    .auto_in_a_bits_source(plic_auto_in_a_bits_source),
    .auto_in_a_bits_address(plic_auto_in_a_bits_address),
    .auto_in_a_bits_mask(plic_auto_in_a_bits_mask),
    .auto_in_a_bits_data(plic_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(plic_auto_in_a_bits_corrupt),
    .auto_in_d_ready(plic_auto_in_d_ready),
    .auto_in_d_valid(plic_auto_in_d_valid),
    .auto_in_d_bits_opcode(plic_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(plic_auto_in_d_bits_size),
    .auto_in_d_bits_source(plic_auto_in_d_bits_source),
    .auto_in_d_bits_data(plic_auto_in_d_bits_data)
  );
  CLINT clint ( // @[CLINT.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@228127.4]
    .clock(clint_clock),
    .reset(clint_reset),
    .auto_int_out_0(clint_auto_int_out_0),
    .auto_int_out_1(clint_auto_int_out_1),
    .auto_in_a_ready(clint_auto_in_a_ready),
    .auto_in_a_valid(clint_auto_in_a_valid),
    .auto_in_a_bits_opcode(clint_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(clint_auto_in_a_bits_param),
    .auto_in_a_bits_size(clint_auto_in_a_bits_size),
    .auto_in_a_bits_source(clint_auto_in_a_bits_source),
    .auto_in_a_bits_address(clint_auto_in_a_bits_address),
    .auto_in_a_bits_mask(clint_auto_in_a_bits_mask),
    .auto_in_a_bits_data(clint_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(clint_auto_in_a_bits_corrupt),
    .auto_in_d_ready(clint_auto_in_d_ready),
    .auto_in_d_valid(clint_auto_in_d_valid),
    .auto_in_d_bits_opcode(clint_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(clint_auto_in_d_bits_size),
    .auto_in_d_bits_source(clint_auto_in_d_bits_source),
    .auto_in_d_bits_data(clint_auto_in_d_bits_data),
    .io_rtcTick(clint_io_rtcTick)
  );
  TLDebugModule debug_1 ( // @[Periphery.scala 80:27:freechips.rocketchip.system.DefaultRV32Config.fir@228140.4]
    .auto_dmInner_dmInner_tl_in_a_ready(debug_1_auto_dmInner_dmInner_tl_in_a_ready),
    .auto_dmInner_dmInner_tl_in_a_valid(debug_1_auto_dmInner_dmInner_tl_in_a_valid),
    .auto_dmInner_dmInner_tl_in_a_bits_opcode(debug_1_auto_dmInner_dmInner_tl_in_a_bits_opcode),
    .auto_dmInner_dmInner_tl_in_a_bits_param(debug_1_auto_dmInner_dmInner_tl_in_a_bits_param),
    .auto_dmInner_dmInner_tl_in_a_bits_size(debug_1_auto_dmInner_dmInner_tl_in_a_bits_size),
    .auto_dmInner_dmInner_tl_in_a_bits_source(debug_1_auto_dmInner_dmInner_tl_in_a_bits_source),
    .auto_dmInner_dmInner_tl_in_a_bits_address(debug_1_auto_dmInner_dmInner_tl_in_a_bits_address),
    .auto_dmInner_dmInner_tl_in_a_bits_mask(debug_1_auto_dmInner_dmInner_tl_in_a_bits_mask),
    .auto_dmInner_dmInner_tl_in_a_bits_data(debug_1_auto_dmInner_dmInner_tl_in_a_bits_data),
    .auto_dmInner_dmInner_tl_in_a_bits_corrupt(debug_1_auto_dmInner_dmInner_tl_in_a_bits_corrupt),
    .auto_dmInner_dmInner_tl_in_d_ready(debug_1_auto_dmInner_dmInner_tl_in_d_ready),
    .auto_dmInner_dmInner_tl_in_d_valid(debug_1_auto_dmInner_dmInner_tl_in_d_valid),
    .auto_dmInner_dmInner_tl_in_d_bits_opcode(debug_1_auto_dmInner_dmInner_tl_in_d_bits_opcode),
    .auto_dmInner_dmInner_tl_in_d_bits_size(debug_1_auto_dmInner_dmInner_tl_in_d_bits_size),
    .auto_dmInner_dmInner_tl_in_d_bits_source(debug_1_auto_dmInner_dmInner_tl_in_d_bits_source),
    .auto_dmInner_dmInner_tl_in_d_bits_data(debug_1_auto_dmInner_dmInner_tl_in_d_bits_data),
    .auto_dmOuter_intsource_out_sync_0(debug_1_auto_dmOuter_intsource_out_sync_0),
    .io_debug_clock(debug_1_io_debug_clock),
    .io_debug_reset(debug_1_io_debug_reset),
    .io_ctrl_ndreset(debug_1_io_ctrl_ndreset),
    .io_ctrl_dmactive(debug_1_io_ctrl_dmactive),
    .io_ctrl_dmactiveAck(debug_1_io_ctrl_dmactiveAck),
    .io_dmi_dmi_req_ready(debug_1_io_dmi_dmi_req_ready),
    .io_dmi_dmi_req_valid(debug_1_io_dmi_dmi_req_valid),
    .io_dmi_dmi_req_bits_addr(debug_1_io_dmi_dmi_req_bits_addr),
    .io_dmi_dmi_req_bits_data(debug_1_io_dmi_dmi_req_bits_data),
    .io_dmi_dmi_req_bits_op(debug_1_io_dmi_dmi_req_bits_op),
    .io_dmi_dmi_resp_ready(debug_1_io_dmi_dmi_resp_ready),
    .io_dmi_dmi_resp_valid(debug_1_io_dmi_dmi_resp_valid),
    .io_dmi_dmi_resp_bits_data(debug_1_io_dmi_dmi_resp_bits_data),
    .io_dmi_dmi_resp_bits_resp(debug_1_io_dmi_dmi_resp_bits_resp),
    .io_dmi_dmiClock(debug_1_io_dmi_dmiClock),
    .io_dmi_dmiReset(debug_1_io_dmi_dmiReset),
    .io_hartIsInReset_0(debug_1_io_hartIsInReset_0)
  );
  RocketTile tile ( // @[RocketSubsystem.scala 50:28:freechips.rocketchip.system.DefaultRV32Config.fir@228143.4]
    .clock(tile_clock),
    .reset(tile_reset),
    .auto_intsink_in_sync_0(tile_auto_intsink_in_sync_0),
    .auto_int_in_xing_in_2_sync_0(tile_auto_int_in_xing_in_2_sync_0),
    .auto_int_in_xing_in_1_sync_0(tile_auto_int_in_xing_in_1_sync_0),
    .auto_int_in_xing_in_0_sync_0(tile_auto_int_in_xing_in_0_sync_0),
    .auto_int_in_xing_in_0_sync_1(tile_auto_int_in_xing_in_0_sync_1),
    .auto_tl_master_xing_out_a_ready(tile_auto_tl_master_xing_out_a_ready),
    .auto_tl_master_xing_out_a_valid(tile_auto_tl_master_xing_out_a_valid),
    .auto_tl_master_xing_out_a_bits_opcode(tile_auto_tl_master_xing_out_a_bits_opcode),
    .auto_tl_master_xing_out_a_bits_param(tile_auto_tl_master_xing_out_a_bits_param),
    .auto_tl_master_xing_out_a_bits_size(tile_auto_tl_master_xing_out_a_bits_size),
    .auto_tl_master_xing_out_a_bits_source(tile_auto_tl_master_xing_out_a_bits_source),
    .auto_tl_master_xing_out_a_bits_address(tile_auto_tl_master_xing_out_a_bits_address),
    .auto_tl_master_xing_out_a_bits_mask(tile_auto_tl_master_xing_out_a_bits_mask),
    .auto_tl_master_xing_out_a_bits_data(tile_auto_tl_master_xing_out_a_bits_data),
    .auto_tl_master_xing_out_a_bits_corrupt(tile_auto_tl_master_xing_out_a_bits_corrupt),
    .auto_tl_master_xing_out_b_ready(tile_auto_tl_master_xing_out_b_ready),
    .auto_tl_master_xing_out_b_valid(tile_auto_tl_master_xing_out_b_valid),
    .auto_tl_master_xing_out_b_bits_param(tile_auto_tl_master_xing_out_b_bits_param),
    .auto_tl_master_xing_out_b_bits_address(tile_auto_tl_master_xing_out_b_bits_address),
    .auto_tl_master_xing_out_c_ready(tile_auto_tl_master_xing_out_c_ready),
    .auto_tl_master_xing_out_c_valid(tile_auto_tl_master_xing_out_c_valid),
    .auto_tl_master_xing_out_c_bits_opcode(tile_auto_tl_master_xing_out_c_bits_opcode),
    .auto_tl_master_xing_out_c_bits_param(tile_auto_tl_master_xing_out_c_bits_param),
    .auto_tl_master_xing_out_c_bits_size(tile_auto_tl_master_xing_out_c_bits_size),
    .auto_tl_master_xing_out_c_bits_source(tile_auto_tl_master_xing_out_c_bits_source),
    .auto_tl_master_xing_out_c_bits_address(tile_auto_tl_master_xing_out_c_bits_address),
    .auto_tl_master_xing_out_c_bits_data(tile_auto_tl_master_xing_out_c_bits_data),
    .auto_tl_master_xing_out_c_bits_corrupt(tile_auto_tl_master_xing_out_c_bits_corrupt),
    .auto_tl_master_xing_out_d_ready(tile_auto_tl_master_xing_out_d_ready),
    .auto_tl_master_xing_out_d_valid(tile_auto_tl_master_xing_out_d_valid),
    .auto_tl_master_xing_out_d_bits_opcode(tile_auto_tl_master_xing_out_d_bits_opcode),
    .auto_tl_master_xing_out_d_bits_param(tile_auto_tl_master_xing_out_d_bits_param),
    .auto_tl_master_xing_out_d_bits_size(tile_auto_tl_master_xing_out_d_bits_size),
    .auto_tl_master_xing_out_d_bits_source(tile_auto_tl_master_xing_out_d_bits_source),
    .auto_tl_master_xing_out_d_bits_sink(tile_auto_tl_master_xing_out_d_bits_sink),
    .auto_tl_master_xing_out_d_bits_denied(tile_auto_tl_master_xing_out_d_bits_denied),
    .auto_tl_master_xing_out_d_bits_data(tile_auto_tl_master_xing_out_d_bits_data),
    .auto_tl_master_xing_out_d_bits_corrupt(tile_auto_tl_master_xing_out_d_bits_corrupt),
    .auto_tl_master_xing_out_e_valid(tile_auto_tl_master_xing_out_e_valid),
    .auto_tl_master_xing_out_e_bits_sink(tile_auto_tl_master_xing_out_e_bits_sink)
  );
  IntSyncCrossingSource_2 intsource ( // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228150.4]
    .clock(intsource_clock),
    .reset(intsource_reset),
    .auto_in_0(intsource_auto_in_0),
    .auto_in_1(intsource_auto_in_1),
    .auto_out_sync_0(intsource_auto_out_sync_0),
    .auto_out_sync_1(intsource_auto_out_sync_1)
  );
  IntSyncCrossingSource_3 intsource_1 ( // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228156.4]
    .clock(intsource_1_clock),
    .reset(intsource_1_reset),
    .auto_in_0(intsource_1_auto_in_0),
    .auto_out_sync_0(intsource_1_auto_out_sync_0)
  );
  IntSyncCrossingSource_3 intsource_2 ( // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@228162.4]
    .clock(intsource_2_clock),
    .reset(intsource_2_reset),
    .auto_in_0(intsource_2_auto_in_0),
    .auto_out_sync_0(intsource_2_auto_out_sync_0)
  );
  IntXing asyncXing ( // @[InterruptBus.scala 16:31:freechips.rocketchip.system.DefaultRV32Config.fir@228174.4]
    .clock(asyncXing_clock),
    .auto_int_in_0(asyncXing_auto_int_in_0),
    .auto_int_in_1(asyncXing_auto_int_in_1),
    .auto_int_out_0(asyncXing_auto_int_out_0),
    .auto_int_out_1(asyncXing_auto_int_out_1)
  );
  TLROM bootrom ( // @[BootROM.scala 72:27:freechips.rocketchip.system.DefaultRV32Config.fir@228180.4]
    .clock(bootrom_clock),
    .reset(bootrom_reset),
    .auto_in_a_ready(bootrom_auto_in_a_ready),
    .auto_in_a_valid(bootrom_auto_in_a_valid),
    .auto_in_a_bits_opcode(bootrom_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(bootrom_auto_in_a_bits_param),
    .auto_in_a_bits_size(bootrom_auto_in_a_bits_size),
    .auto_in_a_bits_source(bootrom_auto_in_a_bits_source),
    .auto_in_a_bits_address(bootrom_auto_in_a_bits_address),
    .auto_in_a_bits_mask(bootrom_auto_in_a_bits_mask),
    .auto_in_a_bits_corrupt(bootrom_auto_in_a_bits_corrupt),
    .auto_in_d_ready(bootrom_auto_in_d_ready),
    .auto_in_d_valid(bootrom_auto_in_d_valid),
    .auto_in_d_bits_size(bootrom_auto_in_d_bits_size),
    .auto_in_d_bits_source(bootrom_auto_in_d_bits_source),
    .auto_in_d_bits_data(bootrom_auto_in_d_bits_data)
  );
  assign int_rtc_tick = _T_17 == 7'h63; // @[Counter.scala 38:24:freechips.rocketchip.system.DefaultRV32Config.fir@228275.6]
  assign _T_20 = _T_17 + 7'h1; // @[Counter.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@228277.6]
  assign mem_axi4_0_aw_valid = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_aw_bits_id = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_aw_bits_addr = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_aw_bits_len = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_aw_bits_size = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_aw_bits_burst = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_aw_bits_lock = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_aw_bits_cache = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_aw_bits_prot = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_aw_bits_qos = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_w_valid = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_w_bits_data = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_w_bits_strb = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_w_bits_last = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_b_ready = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_ar_valid = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_ar_bits_id = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_ar_bits_addr = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_ar_bits_len = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_ar_bits_size = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_ar_bits_burst = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_ar_bits_lock = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_ar_bits_cache = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_ar_bits_prot = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_ar_bits_qos = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mem_axi4_0_r_ready = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228253.4]
  assign mmio_axi4_0_aw_valid = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_aw_bits_id = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_aw_bits_addr = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_aw_bits_len = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_aw_bits_size = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_aw_bits_burst = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_aw_bits_lock = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_aw_bits_cache = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_aw_bits_prot = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_aw_bits_qos = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_w_valid = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_w_bits_data = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_w_bits_strb = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_w_bits_last = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_b_ready = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_ar_valid = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_ar_bits_id = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_ar_bits_addr = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_ar_bits_len = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_ar_bits_size = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_ar_bits_burst = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_ar_bits_lock = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_ar_bits_cache = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_ar_bits_prot = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_ar_bits_qos = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign mmio_axi4_0_r_ready = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready; // @[Nodes.scala 672:56:freechips.rocketchip.system.DefaultRV32Config.fir@228254.4]
  assign l2_frontend_bus_axi4_0_aw_ready = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign l2_frontend_bus_axi4_0_w_ready = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign l2_frontend_bus_axi4_0_b_valid = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign l2_frontend_bus_axi4_0_b_bits_id = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign l2_frontend_bus_axi4_0_b_bits_resp = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign l2_frontend_bus_axi4_0_ar_ready = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign l2_frontend_bus_axi4_0_r_valid = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign l2_frontend_bus_axi4_0_r_bits_id = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign l2_frontend_bus_axi4_0_r_bits_data = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign l2_frontend_bus_axi4_0_r_bits_resp = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign l2_frontend_bus_axi4_0_r_bits_last = subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last; // @[Nodes.scala 647:60:freechips.rocketchip.system.DefaultRV32Config.fir@228255.4]
  assign debug_clockeddmi_dmi_req_ready = debug_1_io_dmi_dmi_req_ready; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_clockeddmi_dmi_resp_valid = debug_1_io_dmi_dmi_resp_valid; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_clockeddmi_dmi_resp_bits_data = debug_1_io_dmi_dmi_resp_bits_data; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_clockeddmi_dmi_resp_bits_resp = debug_1_io_dmi_dmi_resp_bits_resp; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_ndreset = debug_1_io_ctrl_ndreset; // @[Periphery.scala 141:19:freechips.rocketchip.system.DefaultRV32Config.fir@228264.4]
  assign debug_dmactive = debug_1_io_ctrl_dmactive; // @[Periphery.scala 142:20:freechips.rocketchip.system.DefaultRV32Config.fir@228265.4]
  assign int_bus_auto_int_in_0 = asyncXing_auto_int_out_0; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228248.4]
  assign int_bus_auto_int_in_1 = asyncXing_auto_int_out_1; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228248.4]
  assign dummyClockGroupSourceNode_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228077.4]
  assign dummyClockGroupSourceNode_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228078.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready = mmio_axi4_0_aw_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready = mmio_axi4_0_w_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid = mmio_axi4_0_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id = mmio_axi4_0_b_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp = mmio_axi4_0_b_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready = mmio_axi4_0_ar_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid = mmio_axi4_0_r_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id = mmio_axi4_0_r_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data = mmio_axi4_0_r_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp = mmio_axi4_0_r_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last = mmio_axi4_0_r_bits_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228250.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_valid = tile_auto_tl_master_xing_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode = tile_auto_tl_master_xing_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_param = tile_auto_tl_master_xing_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_size = tile_auto_tl_master_xing_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_source = tile_auto_tl_master_xing_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_address = tile_auto_tl_master_xing_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_mask = tile_auto_tl_master_xing_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_data = tile_auto_tl_master_xing_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt = tile_auto_tl_master_xing_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_ready = tile_auto_tl_master_xing_out_b_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_valid = tile_auto_tl_master_xing_out_c_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode = tile_auto_tl_master_xing_out_c_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_param = tile_auto_tl_master_xing_out_c_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_size = tile_auto_tl_master_xing_out_c_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_source = tile_auto_tl_master_xing_out_c_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_address = tile_auto_tl_master_xing_out_c_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_data = tile_auto_tl_master_xing_out_c_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_corrupt = tile_auto_tl_master_xing_out_c_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_ready = tile_auto_tl_master_xing_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_valid = tile_auto_tl_master_xing_out_e_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_bits_sink = tile_auto_tl_master_xing_out_e_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready = subsystem_l2_wrapper_auto_coherent_jbar_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid = subsystem_l2_wrapper_auto_coherent_jbar_in_b_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param = subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address = subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready = subsystem_l2_wrapper_auto_coherent_jbar_in_c_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid = subsystem_l2_wrapper_auto_coherent_jbar_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt = subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid = subsystem_fbus_auto_bus_xing_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode = subsystem_fbus_auto_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param = subsystem_fbus_auto_bus_xing_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size = subsystem_fbus_auto_bus_xing_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source = subsystem_fbus_auto_bus_xing_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address = subsystem_fbus_auto_bus_xing_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable = subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable = subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc = subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc = subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged = subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure = subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch = subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask = subsystem_fbus_auto_bus_xing_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data = subsystem_fbus_auto_bus_xing_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt = subsystem_fbus_auto_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready = subsystem_fbus_auto_bus_xing_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready = subsystem_cbus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid = subsystem_cbus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode = subsystem_cbus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param = subsystem_cbus_auto_bus_xing_in_d_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size = subsystem_cbus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source = subsystem_cbus_auto_bus_xing_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink = subsystem_cbus_auto_bus_xing_in_d_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied = subsystem_cbus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data = subsystem_cbus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt = subsystem_cbus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_clock = dummyClockGroupSourceNode_auto_out_member_5_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_5_reset = dummyClockGroupSourceNode_auto_out_member_5_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_clock = dummyClockGroupSourceNode_auto_out_member_4_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_4_reset = dummyClockGroupSourceNode_auto_out_member_4_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_clock = dummyClockGroupSourceNode_auto_out_member_3_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_3_reset = dummyClockGroupSourceNode_auto_out_member_3_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_clock = dummyClockGroupSourceNode_auto_out_member_2_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_2_reset = dummyClockGroupSourceNode_auto_out_member_2_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_clock = dummyClockGroupSourceNode_auto_out_member_1_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_1_reset = dummyClockGroupSourceNode_auto_out_member_1_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_clock = dummyClockGroupSourceNode_auto_out_member_0_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_0_reset = dummyClockGroupSourceNode_auto_out_member_0_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228216.4]
  assign subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_clock = subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_clock; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228220.4]
  assign subsystem_pbus_auto_subsystem_pbus_clock_groups_in_member_0_reset = subsystem_cbus_auto_subsystem_cbus_clock_groups_out_member_0_reset; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228220.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid = l2_frontend_bus_axi4_0_aw_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id = l2_frontend_bus_axi4_0_aw_bits_id; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr = l2_frontend_bus_axi4_0_aw_bits_addr; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len = l2_frontend_bus_axi4_0_aw_bits_len; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size = l2_frontend_bus_axi4_0_aw_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst = l2_frontend_bus_axi4_0_aw_bits_burst; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache = l2_frontend_bus_axi4_0_aw_bits_cache; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot = l2_frontend_bus_axi4_0_aw_bits_prot; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid = l2_frontend_bus_axi4_0_w_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data = l2_frontend_bus_axi4_0_w_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb = l2_frontend_bus_axi4_0_w_bits_strb; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last = l2_frontend_bus_axi4_0_w_bits_last; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready = l2_frontend_bus_axi4_0_b_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid = l2_frontend_bus_axi4_0_ar_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id = l2_frontend_bus_axi4_0_ar_bits_id; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr = l2_frontend_bus_axi4_0_ar_bits_addr; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len = l2_frontend_bus_axi4_0_ar_bits_len; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size = l2_frontend_bus_axi4_0_ar_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst = l2_frontend_bus_axi4_0_ar_bits_burst; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache = l2_frontend_bus_axi4_0_ar_bits_cache; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot = l2_frontend_bus_axi4_0_ar_bits_prot; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready = l2_frontend_bus_axi4_0_r_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228251.4]
  assign subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_clock = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228218.4]
  assign subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_0_reset = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_0_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228218.4]
  assign subsystem_fbus_auto_bus_xing_out_a_ready = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_fbus_auto_bus_xing_out_d_valid = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_opcode = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_param = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_size = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_source = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_sink = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_denied = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_data = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_corrupt = subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228223.4]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_ready = bootrom_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_valid = bootrom_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_size = bootrom_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_source = bootrom_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_data = bootrom_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_ready = debug_1_auto_dmInner_dmInner_tl_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_valid = debug_1_auto_dmInner_dmInner_tl_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_opcode = debug_1_auto_dmInner_dmInner_tl_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_size = debug_1_auto_dmInner_dmInner_tl_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_source = debug_1_auto_dmInner_dmInner_tl_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_data = debug_1_auto_dmInner_dmInner_tl_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_ready = clint_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_valid = clint_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_opcode = clint_auto_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_size = clint_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_source = clint_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_data = clint_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_ready = plic_auto_in_a_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_valid = plic_auto_in_d_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_opcode = plic_auto_in_d_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_size = plic_auto_in_d_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_source = plic_auto_in_d_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_data = plic_auto_in_d_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_clock = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228217.4]
  assign subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_1_reset = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_1_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228217.4]
  assign subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_clock = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228217.4]
  assign subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_0_reset = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_0_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228217.4]
  assign subsystem_cbus_auto_bus_xing_in_a_valid = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_opcode = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_param = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_size = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_source = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_address = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_mask = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_data = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_corrupt = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_cbus_auto_bus_xing_in_d_ready = subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228222.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready = mem_axi4_0_aw_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready = mem_axi4_0_w_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid = mem_axi4_0_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id = mem_axi4_0_b_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp = mem_axi4_0_b_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready = mem_axi4_0_ar_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid = mem_axi4_0_r_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id = mem_axi4_0_r_bits_id; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data = mem_axi4_0_r_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp = mem_axi4_0_r_bits_resp; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last = mem_axi4_0_r_bits_last; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228249.4]
  assign subsystem_mbus_auto_fixer_in_a_valid = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_opcode = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_param = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_size = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_source = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_address = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_bufferable = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_modifiable = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_readalloc = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_writealloc = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_privileged = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_secure = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_fetch = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_mask = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_data = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_a_bits_corrupt = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_fixer_in_d_ready = subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_clock = subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_clock; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228221.4]
  assign subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_0_reset = subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_0_reset; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228221.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready = subsystem_mbus_auto_fixer_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid = subsystem_mbus_auto_fixer_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode = subsystem_mbus_auto_fixer_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size = subsystem_mbus_auto_fixer_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source = subsystem_mbus_auto_fixer_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied = subsystem_mbus_auto_fixer_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data = subsystem_mbus_auto_fixer_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt = subsystem_mbus_auto_fixer_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228225.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_valid = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_opcode = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_param = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_size = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_source = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_address = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_privileged = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_secure = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_fetch = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_mask = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_data = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_corrupt = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_b_ready = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_valid = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_opcode = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_param = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_size = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_source = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_address = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_data = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_corrupt = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_d_ready = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_e_valid = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_e_bits_sink = subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228224.4]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_clock = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228219.4]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_1_reset = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_1_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228219.4]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_clock = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_clock; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228219.4]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_0_reset = subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_0_reset; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228219.4]
  assign plic_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228125.4]
  assign plic_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228126.4]
  assign plic_auto_int_in_0 = int_bus_auto_int_out_0; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228215.4]
  assign plic_auto_int_in_1 = int_bus_auto_int_out_1; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228215.4]
  assign plic_auto_in_a_valid = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign plic_auto_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign plic_auto_in_a_bits_param = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign plic_auto_in_a_bits_size = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign plic_auto_in_a_bits_source = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign plic_auto_in_a_bits_address = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign plic_auto_in_a_bits_mask = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign plic_auto_in_a_bits_data = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign plic_auto_in_a_bits_corrupt = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign plic_auto_in_d_ready = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228231.4]
  assign clint_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228132.4]
  assign clint_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228133.4]
  assign clint_auto_in_a_valid = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign clint_auto_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign clint_auto_in_a_bits_param = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign clint_auto_in_a_bits_size = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign clint_auto_in_a_bits_source = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign clint_auto_in_a_bits_address = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign clint_auto_in_a_bits_mask = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign clint_auto_in_a_bits_data = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign clint_auto_in_a_bits_corrupt = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign clint_auto_in_d_ready = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228233.4]
  assign clint_io_rtcTick = _T_17 == 7'h63; // @[RTC.scala 24:29:freechips.rocketchip.system.DefaultRV32Config.fir@228284.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_valid = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_param = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_size = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_source = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_address = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_mask = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_data = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_data; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_a_bits_corrupt = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign debug_1_auto_dmInner_dmInner_tl_in_d_ready = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228236.4]
  assign debug_1_io_debug_clock = debug_clock; // @[Periphery.scala 139:38:freechips.rocketchip.system.DefaultRV32Config.fir@228263.4]
  assign debug_1_io_debug_reset = debug_reset; // @[Periphery.scala 138:38:freechips.rocketchip.system.DefaultRV32Config.fir@228262.4]
  assign debug_1_io_ctrl_dmactiveAck = debug_dmactiveAck; // @[Periphery.scala 143:43:freechips.rocketchip.system.DefaultRV32Config.fir@228266.4]
  assign debug_1_io_dmi_dmi_req_valid = debug_clockeddmi_dmi_req_valid; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_1_io_dmi_dmi_req_bits_addr = debug_clockeddmi_dmi_req_bits_addr; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_1_io_dmi_dmi_req_bits_data = debug_clockeddmi_dmi_req_bits_data; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_1_io_dmi_dmi_req_bits_op = debug_clockeddmi_dmi_req_bits_op; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_1_io_dmi_dmi_resp_ready = debug_clockeddmi_dmi_resp_ready; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_1_io_dmi_dmiClock = debug_clockeddmi_dmiClock; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_1_io_dmi_dmiReset = debug_clockeddmi_dmiReset; // @[Periphery.scala 126:68:freechips.rocketchip.system.DefaultRV32Config.fir@228261.4]
  assign debug_1_io_hartIsInReset_0 = resetctrl_hartIsInReset_0; // @[Periphery.scala 109:40:freechips.rocketchip.system.DefaultRV32Config.fir@228260.4]
  assign tile_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228148.4]
  assign tile_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228149.4]
  assign tile_auto_intsink_in_sync_0 = debug_1_auto_dmOuter_intsource_out_sync_0; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228235.4]
  assign tile_auto_int_in_xing_in_2_sync_0 = intsource_2_auto_out_sync_0; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228245.4]
  assign tile_auto_int_in_xing_in_1_sync_0 = intsource_1_auto_out_sync_0; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228243.4]
  assign tile_auto_int_in_xing_in_0_sync_0 = intsource_auto_out_sync_0; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228241.4]
  assign tile_auto_int_in_xing_in_0_sync_1 = intsource_auto_out_sync_1; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228241.4]
  assign tile_auto_tl_master_xing_out_a_ready = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_b_valid = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_b_bits_param = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_b_bits_address = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_address; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_c_ready = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_ready; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_d_valid = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_valid; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_d_bits_opcode = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_d_bits_param = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_param; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_d_bits_size = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_size; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_d_bits_source = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_source; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_d_bits_sink = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_sink; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_d_bits_denied = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_denied; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_d_bits_data = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_data; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign tile_auto_tl_master_xing_out_d_bits_corrupt = subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt; // @[LazyModule.scala 290:16:freechips.rocketchip.system.DefaultRV32Config.fir@228240.4]
  assign intsource_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228154.4]
  assign intsource_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228155.4]
  assign intsource_auto_in_0 = clint_auto_int_out_0; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228232.4]
  assign intsource_auto_in_1 = clint_auto_int_out_1; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228232.4]
  assign intsource_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228160.4]
  assign intsource_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228161.4]
  assign intsource_1_auto_in_0 = plic_auto_int_out_0_0; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228229.4]
  assign intsource_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228166.4]
  assign intsource_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228167.4]
  assign intsource_2_auto_in_0 = plic_auto_int_out_1_0; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228230.4]
  assign asyncXing_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228178.4]
  assign asyncXing_auto_int_in_0 = interrupts[0]; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228247.4]
  assign asyncXing_auto_int_in_1 = interrupts[1]; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228247.4]
  assign bootrom_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228184.4]
  assign bootrom_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@228185.4]
  assign bootrom_auto_in_a_valid = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_valid; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign bootrom_auto_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign bootrom_auto_in_a_bits_param = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_param; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign bootrom_auto_in_a_bits_size = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_size; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign bootrom_auto_in_a_bits_source = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_source; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign bootrom_auto_in_a_bits_address = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_address; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign bootrom_auto_in_a_bits_mask = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_mask; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign bootrom_auto_in_a_bits_corrupt = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
  assign bootrom_auto_in_d_ready = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_ready; // @[LazyModule.scala 292:16:freechips.rocketchip.system.DefaultRV32Config.fir@228252.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_17 = _RAND_0[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_17 <= 7'h0;
    end else if (int_rtc_tick) begin
      _T_17 <= 7'h0;
    end else begin
      _T_17 <= _T_20;
    end
  end
endmodule
