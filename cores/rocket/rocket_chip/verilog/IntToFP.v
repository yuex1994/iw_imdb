module IntToFP( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212870.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212871.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212872.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212873.4]
  input         io_in_bits_wflags, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212873.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212873.4]
  input  [1:0]  io_in_bits_typ, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212873.4]
  input  [31:0] io_in_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212873.4]
  output [32:0] io_out_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212873.4]
  output [4:0]  io_out_bits_exc // @[:freechips.rocketchip.system.DefaultRV32Config.fir@212873.4]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  INToRecFN_io_signedIn; // @[FPU.scala 500:23:freechips.rocketchip.system.DefaultRV32Config.fir@213007.6]
  wire [31:0] INToRecFN_io_in; // @[FPU.scala 500:23:freechips.rocketchip.system.DefaultRV32Config.fir@213007.6]
  wire [2:0] INToRecFN_io_roundingMode; // @[FPU.scala 500:23:freechips.rocketchip.system.DefaultRV32Config.fir@213007.6]
  wire [32:0] INToRecFN_io_out; // @[FPU.scala 500:23:freechips.rocketchip.system.DefaultRV32Config.fir@213007.6]
  wire [4:0] INToRecFN_io_exceptionFlags; // @[FPU.scala 500:23:freechips.rocketchip.system.DefaultRV32Config.fir@213007.6]
  reg  inPipe_valid; // @[Valid.scala 117:22:freechips.rocketchip.system.DefaultRV32Config.fir@212878.4]
  reg  inPipe_bits_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212880.4]
  reg [2:0] inPipe_bits_rm; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212880.4]
  reg [1:0] inPipe_bits_typ; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212880.4]
  reg [31:0] inPipe_bits_in1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@212880.4]
  wire  _T_5; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@212915.4]
  wire  _T_6; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.DefaultRV32Config.fir@212916.4]
  wire [4:0] _T_30; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212940.4]
  wire [4:0] _T_31; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212941.4]
  wire [4:0] _T_32; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212942.4]
  wire [4:0] _T_33; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212943.4]
  wire [4:0] _T_34; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212944.4]
  wire [4:0] _T_35; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212945.4]
  wire [4:0] _T_36; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212946.4]
  wire [4:0] _T_37; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212947.4]
  wire [4:0] _T_38; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212948.4]
  wire [4:0] _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212949.4]
  wire [4:0] _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212950.4]
  wire [4:0] _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212951.4]
  wire [4:0] _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212952.4]
  wire [4:0] _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212953.4]
  wire [4:0] _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212954.4]
  wire [4:0] _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212955.4]
  wire [4:0] _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212956.4]
  wire [4:0] _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212957.4]
  wire [4:0] _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212958.4]
  wire [4:0] _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212959.4]
  wire [4:0] _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212960.4]
  wire [4:0] _T_51; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212961.4]
  wire [53:0] _GEN_23; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@212962.4]
  wire [53:0] _T_52; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@212962.4]
  wire [22:0] _T_54; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.DefaultRV32Config.fir@212964.4]
  wire [8:0] _GEN_24; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@212965.4]
  wire [8:0] _T_55; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@212965.4]
  wire [8:0] _T_56; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.DefaultRV32Config.fir@212966.4]
  wire [1:0] _T_57; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.DefaultRV32Config.fir@212967.4]
  wire [7:0] _GEN_25; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@212968.4]
  wire [7:0] _T_58; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@212968.4]
  wire [8:0] _GEN_26; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@212969.4]
  wire [8:0] _T_60; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@212970.4]
  wire  _T_61; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.DefaultRV32Config.fir@212971.4]
  wire  _T_63; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.DefaultRV32Config.fir@212973.4]
  wire  _T_65; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.DefaultRV32Config.fir@212976.4]
  wire  _T_66; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.DefaultRV32Config.fir@212977.4]
  wire [9:0] _T_69; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.DefaultRV32Config.fir@212984.4]
  wire  _T_70; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.DefaultRV32Config.fir@212986.4]
  wire [22:0] _T_71; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.DefaultRV32Config.fir@212987.4]
  wire [24:0] _T_73; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212989.4]
  wire [2:0] _T_75; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.DefaultRV32Config.fir@212992.4]
  wire [2:0] _GEN_27; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@212994.4]
  wire [2:0] _T_77; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@212994.4]
  wire [32:0] _T_82; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212999.4]
  reg [32:0] _T_88_data; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213020.4]
  reg [4:0] _T_88_exc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@213020.4]
  INToRecFN INToRecFN ( // @[FPU.scala 500:23:freechips.rocketchip.system.DefaultRV32Config.fir@213007.6]
    .io_signedIn(INToRecFN_io_signedIn),
    .io_in(INToRecFN_io_in),
    .io_roundingMode(INToRecFN_io_roundingMode),
    .io_out(INToRecFN_io_out),
    .io_exceptionFlags(INToRecFN_io_exceptionFlags)
  );
  assign _T_5 = inPipe_bits_in1[30:23] == 8'h0; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@212915.4]
  assign _T_6 = inPipe_bits_in1[22:0] == 23'h0; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.DefaultRV32Config.fir@212916.4]
  assign _T_30 = inPipe_bits_in1[1] ? 5'h15 : 5'h16; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212940.4]
  assign _T_31 = inPipe_bits_in1[2] ? 5'h14 : _T_30; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212941.4]
  assign _T_32 = inPipe_bits_in1[3] ? 5'h13 : _T_31; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212942.4]
  assign _T_33 = inPipe_bits_in1[4] ? 5'h12 : _T_32; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212943.4]
  assign _T_34 = inPipe_bits_in1[5] ? 5'h11 : _T_33; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212944.4]
  assign _T_35 = inPipe_bits_in1[6] ? 5'h10 : _T_34; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212945.4]
  assign _T_36 = inPipe_bits_in1[7] ? 5'hf : _T_35; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212946.4]
  assign _T_37 = inPipe_bits_in1[8] ? 5'he : _T_36; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212947.4]
  assign _T_38 = inPipe_bits_in1[9] ? 5'hd : _T_37; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212948.4]
  assign _T_39 = inPipe_bits_in1[10] ? 5'hc : _T_38; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212949.4]
  assign _T_40 = inPipe_bits_in1[11] ? 5'hb : _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212950.4]
  assign _T_41 = inPipe_bits_in1[12] ? 5'ha : _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212951.4]
  assign _T_42 = inPipe_bits_in1[13] ? 5'h9 : _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212952.4]
  assign _T_43 = inPipe_bits_in1[14] ? 5'h8 : _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212953.4]
  assign _T_44 = inPipe_bits_in1[15] ? 5'h7 : _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212954.4]
  assign _T_45 = inPipe_bits_in1[16] ? 5'h6 : _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212955.4]
  assign _T_46 = inPipe_bits_in1[17] ? 5'h5 : _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212956.4]
  assign _T_47 = inPipe_bits_in1[18] ? 5'h4 : _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212957.4]
  assign _T_48 = inPipe_bits_in1[19] ? 5'h3 : _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212958.4]
  assign _T_49 = inPipe_bits_in1[20] ? 5'h2 : _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212959.4]
  assign _T_50 = inPipe_bits_in1[21] ? 5'h1 : _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212960.4]
  assign _T_51 = inPipe_bits_in1[22] ? 5'h0 : _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@212961.4]
  assign _GEN_23 = {{31'd0}, inPipe_bits_in1[22:0]}; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@212962.4]
  assign _T_52 = _GEN_23 << _T_51; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@212962.4]
  assign _T_54 = {_T_52[21:0], 1'h0}; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.DefaultRV32Config.fir@212964.4]
  assign _GEN_24 = {{4'd0}, _T_51}; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@212965.4]
  assign _T_55 = _GEN_24 ^ 9'h1ff; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@212965.4]
  assign _T_56 = _T_5 ? _T_55 : {{1'd0}, inPipe_bits_in1[30:23]}; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.DefaultRV32Config.fir@212966.4]
  assign _T_57 = _T_5 ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.DefaultRV32Config.fir@212967.4]
  assign _GEN_25 = {{6'd0}, _T_57}; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@212968.4]
  assign _T_58 = 8'h80 | _GEN_25; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@212968.4]
  assign _GEN_26 = {{1'd0}, _T_58}; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@212969.4]
  assign _T_60 = _T_56 + _GEN_26; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@212970.4]
  assign _T_61 = _T_5 & _T_6; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.DefaultRV32Config.fir@212971.4]
  assign _T_63 = _T_60[8:7] == 2'h3; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.DefaultRV32Config.fir@212973.4]
  assign _T_65 = ~_T_6; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.DefaultRV32Config.fir@212976.4]
  assign _T_66 = _T_63 & _T_65; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.DefaultRV32Config.fir@212977.4]
  assign _T_69 = {1'b0,$signed(_T_60)}; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.DefaultRV32Config.fir@212984.4]
  assign _T_70 = ~_T_61; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.DefaultRV32Config.fir@212986.4]
  assign _T_71 = _T_5 ? _T_54 : inPipe_bits_in1[22:0]; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.DefaultRV32Config.fir@212987.4]
  assign _T_73 = {1'h0,_T_70,_T_71}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212989.4]
  assign _T_75 = _T_61 ? 3'h0 : _T_69[8:6]; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.DefaultRV32Config.fir@212992.4]
  assign _GEN_27 = {{2'd0}, _T_66}; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@212994.4]
  assign _T_77 = _T_75 | _GEN_27; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@212994.4]
  assign _T_82 = {inPipe_bits_in1[31],_T_77,_T_69[5:0],_T_73[22:0]}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@212999.4]
  assign io_out_bits_data = _T_88_data; // @[FPU.scala 514:10:freechips.rocketchip.system.DefaultRV32Config.fir@213029.4]
  assign io_out_bits_exc = _T_88_exc; // @[FPU.scala 514:10:freechips.rocketchip.system.DefaultRV32Config.fir@213029.4]
  assign INToRecFN_io_signedIn = ~inPipe_bits_typ[0]; // @[FPU.scala 501:23:freechips.rocketchip.system.DefaultRV32Config.fir@213011.6]
  assign INToRecFN_io_in = inPipe_bits_in1; // @[FPU.scala 502:17:freechips.rocketchip.system.DefaultRV32Config.fir@213012.6]
  assign INToRecFN_io_roundingMode = inPipe_bits_rm; // @[FPU.scala 503:27:freechips.rocketchip.system.DefaultRV32Config.fir@213013.6]
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
  inPipe_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  inPipe_bits_wflags = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  inPipe_bits_rm = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  inPipe_bits_typ = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  inPipe_bits_in1 = _RAND_4[31:0];
  _RAND_5 = {2{`RANDOM}};
  _T_88_data = _RAND_5[32:0];
  _RAND_6 = {1{`RANDOM}};
  _T_88_exc = _RAND_6[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      inPipe_valid <= 1'h0;
    end else begin
      inPipe_valid <= io_in_valid;
    end
    if (io_in_valid) begin
      inPipe_bits_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      inPipe_bits_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      inPipe_bits_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      inPipe_bits_in1 <= io_in_bits_in1;
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        _T_88_data <= INToRecFN_io_out;
      end else begin
        _T_88_data <= _T_82;
      end
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        _T_88_exc <= INToRecFN_io_exceptionFlags;
      end else begin
        _T_88_exc <= 5'h0;
      end
    end
  end
endmodule
