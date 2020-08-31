module RVCExpander( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215557.2]
  input  [31:0] io_in, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215560.4]
  output [31:0] io_out_bits, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215560.4]
  output [4:0]  io_out_rd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215560.4]
  output [4:0]  io_out_rs1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215560.4]
  output [4:0]  io_out_rs2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215560.4]
  output [4:0]  io_out_rs3 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@215560.4]
);
  assign io_out_bits = io_in; // @[RVC.scala 168:10:freechips.rocketchip.system.DefaultRV32Config.fir@215577.4]
  assign io_out_rd = io_in[11:7]; // @[RVC.scala 168:10:freechips.rocketchip.system.DefaultRV32Config.fir@215576.4]
  assign io_out_rs1 = io_in[19:15]; // @[RVC.scala 168:10:freechips.rocketchip.system.DefaultRV32Config.fir@215575.4]
  assign io_out_rs2 = io_in[24:20]; // @[RVC.scala 168:10:freechips.rocketchip.system.DefaultRV32Config.fir@215574.4]
  assign io_out_rs3 = io_in[31:27]; // @[RVC.scala 168:10:freechips.rocketchip.system.DefaultRV32Config.fir@215573.4]
endmodule
