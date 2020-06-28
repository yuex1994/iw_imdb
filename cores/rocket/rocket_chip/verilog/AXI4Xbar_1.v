module AXI4Xbar_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232321.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232322.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232323.4]
  output        auto_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [3:0]  auto_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [11:0] auto_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [7:0]  auto_in_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [2:0]  auto_in_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [1:0]  auto_in_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [31:0] auto_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [3:0]  auto_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [3:0]  auto_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [1:0]  auto_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [3:0]  auto_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [11:0] auto_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [7:0]  auto_in_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [2:0]  auto_in_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [1:0]  auto_in_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [3:0]  auto_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [31:0] auto_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [1:0]  auto_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [3:0]  auto_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [11:0] auto_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [7:0]  auto_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [2:0]  auto_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [1:0]  auto_out_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [31:0] auto_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [3:0]  auto_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [3:0]  auto_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [1:0]  auto_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [3:0]  auto_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [11:0] auto_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [7:0]  auto_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [2:0]  auto_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output [1:0]  auto_out_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  output        auto_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [3:0]  auto_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [31:0] auto_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input  [1:0]  auto_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
  input         auto_out_r_bits_last // @[:freechips.rocketchip.system.DefaultRV32Config.fir@232324.4]
);
  wire  _T_44; // @[Xbar.scala 260:60:freechips.rocketchip.system.DefaultRV32Config.fir@232524.4]
  wire  _T_50; // @[Xbar.scala 262:23:freechips.rocketchip.system.DefaultRV32Config.fir@232534.4]
  wire  _T_52; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232536.4]
  wire  _T_53; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232537.4]
  wire  _T_65; // @[Xbar.scala 260:60:freechips.rocketchip.system.DefaultRV32Config.fir@232578.4]
  wire  _T_71; // @[Xbar.scala 262:23:freechips.rocketchip.system.DefaultRV32Config.fir@232588.4]
  wire  _T_73; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232590.4]
  wire  _T_74; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232591.4]
  wire  _T_88; // @[Xbar.scala 260:60:freechips.rocketchip.system.DefaultRV32Config.fir@232638.4]
  wire  _T_94; // @[Xbar.scala 262:23:freechips.rocketchip.system.DefaultRV32Config.fir@232648.4]
  wire  _T_96; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232650.4]
  wire  _T_97; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232651.4]
  wire  _T_109; // @[Xbar.scala 260:60:freechips.rocketchip.system.DefaultRV32Config.fir@232686.4]
  wire  _T_115; // @[Xbar.scala 262:23:freechips.rocketchip.system.DefaultRV32Config.fir@232696.4]
  wire  _T_117; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232698.4]
  wire  _T_118; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232699.4]
  assign _T_44 = ~auto_in_aw_valid; // @[Xbar.scala 260:60:freechips.rocketchip.system.DefaultRV32Config.fir@232524.4]
  assign _T_50 = _T_44 | auto_in_aw_valid; // @[Xbar.scala 262:23:freechips.rocketchip.system.DefaultRV32Config.fir@232534.4]
  assign _T_52 = _T_50 | reset; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232536.4]
  assign _T_53 = ~_T_52; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232537.4]
  assign _T_65 = ~auto_in_ar_valid; // @[Xbar.scala 260:60:freechips.rocketchip.system.DefaultRV32Config.fir@232578.4]
  assign _T_71 = _T_65 | auto_in_ar_valid; // @[Xbar.scala 262:23:freechips.rocketchip.system.DefaultRV32Config.fir@232588.4]
  assign _T_73 = _T_71 | reset; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232590.4]
  assign _T_74 = ~_T_73; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232591.4]
  assign _T_88 = ~auto_out_r_valid; // @[Xbar.scala 260:60:freechips.rocketchip.system.DefaultRV32Config.fir@232638.4]
  assign _T_94 = _T_88 | auto_out_r_valid; // @[Xbar.scala 262:23:freechips.rocketchip.system.DefaultRV32Config.fir@232648.4]
  assign _T_96 = _T_94 | reset; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232650.4]
  assign _T_97 = ~_T_96; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232651.4]
  assign _T_109 = ~auto_out_b_valid; // @[Xbar.scala 260:60:freechips.rocketchip.system.DefaultRV32Config.fir@232686.4]
  assign _T_115 = _T_109 | auto_out_b_valid; // @[Xbar.scala 262:23:freechips.rocketchip.system.DefaultRV32Config.fir@232696.4]
  assign _T_117 = _T_115 | reset; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232698.4]
  assign _T_118 = ~_T_117; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232699.4]
  assign auto_in_aw_ready = auto_out_aw_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_in_w_ready = auto_out_w_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_in_b_valid = auto_out_b_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_in_ar_ready = auto_out_ar_ready; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_in_r_valid = auto_out_r_valid; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[LazyModule.scala 303:16:freechips.rocketchip.system.DefaultRV32Config.fir@232334.4]
  assign auto_out_aw_valid = auto_in_aw_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_w_valid = auto_in_w_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_b_ready = auto_in_b_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_ar_valid = auto_in_ar_valid; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  assign auto_out_r_ready = auto_in_r_ready; // @[LazyModule.scala 305:12:freechips.rocketchip.system.DefaultRV32Config.fir@232333.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_53) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232539.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_53) begin
          $fatal; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232540.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_74) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232593.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_74) begin
          $fatal; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232594.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_97) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232653.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_97) begin
          $fatal; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232654.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_118) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Xbar.scala:262 assert (!anyValid || winner.reduce(_||_))\n"); // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232701.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_118) begin
          $fatal; // @[Xbar.scala 262:12:freechips.rocketchip.system.DefaultRV32Config.fir@232702.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
