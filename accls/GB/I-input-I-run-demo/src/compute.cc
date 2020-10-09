#include "GBHigh.h"
void GBHigh::compute() {
  if (decode_GBHigh_Write()) {
    GB_pc ++;
    decode_GBHigh_Write_update();
    GBHigh_arg_0_TVALID = GBHigh_arg_0_TVALID_next;
    GBHigh_arg_1_TREADY = GBHigh_arg_1_TREADY_next;
    GBHigh_cur_pic = GBHigh_cur_pic_next;
  }
  if (decode_GBHigh_Read()) {
    GB_pc ++;
    decode_GBHigh_Read_update();
    GBHigh_arg_0_TVALID = GBHigh_arg_0_TVALID_next;
    GBHigh_gbit = GBHigh_gbit_next;
  }
  init_Propagate();
  while (1) {
    int schedule_counter = 0;
    if (decode_Propagate_prop0()) {
      decode_Propagate_prop0_update();
      GBHigh_arg_0_TVALID = GBHigh_arg_0_TVALID_next;
      GBHigh_arg_1_TREADY = GBHigh_arg_1_TREADY_next;
      Propagate_pre_pix = Propagate_pre_pix_next;
      for (std::map<uint9_t, uint8_t>::iterator it = GBHigh_ram0_next.update_map.begin(); it != GBHigh_ram0_next.update_map.end(); it++) {
        GBHigh_ram0[static_cast<uint32_t> (it->first)] = it->second;
      }
      for (std::map<uint9_t, uint8_t>::iterator it = GBHigh_ram1_next.update_map.begin(); it != GBHigh_ram1_next.update_map.end(); it++) {
        GBHigh_ram1[static_cast<uint32_t> (it->first)] = it->second;
      }
      for (std::map<uint9_t, uint8_t>::iterator it = GBHigh_ram2_next.update_map.begin(); it != GBHigh_ram2_next.update_map.end(); it++) {
        GBHigh_ram2[static_cast<uint32_t> (it->first)] = it->second;
      }
      for (std::map<uint9_t, uint8_t>::iterator it = GBHigh_ram3_next.update_map.begin(); it != GBHigh_ram3_next.update_map.end(); it++) {
        GBHigh_ram3[static_cast<uint32_t> (it->first)] = it->second;
      }
      for (std::map<uint9_t, uint8_t>::iterator it = GBHigh_ram4_next.update_map.begin(); it != GBHigh_ram4_next.update_map.end(); it++) {
        GBHigh_ram4[static_cast<uint32_t> (it->first)] = it->second;
      }
      for (std::map<uint9_t, uint8_t>::iterator it = GBHigh_ram5_next.update_map.begin(); it != GBHigh_ram5_next.update_map.end(); it++) {
        GBHigh_ram5[static_cast<uint32_t> (it->first)] = it->second;
      }
      for (std::map<uint9_t, uint8_t>::iterator it = GBHigh_ram6_next.update_map.begin(); it != GBHigh_ram6_next.update_map.end(); it++) {
        GBHigh_ram6[static_cast<uint32_t> (it->first)] = it->second;
      }
      for (std::map<uint9_t, uint8_t>::iterator it = GBHigh_ram7_next.update_map.begin(); it != GBHigh_ram7_next.update_map.end(); it++) {
        GBHigh_ram7[static_cast<uint32_t> (it->first)] = it->second;
      }
      GBHigh_ram_w = GBHigh_ram_w_next;
      GBHigh_ram_x = GBHigh_ram_x_next;
      GBHigh_ram_y = GBHigh_ram_y_next;
      GBHigh_st_ready = GBHigh_st_ready_next;
      GBHigh_stencil8 = GBHigh_stencil8_next;
      schedule_counter++;
    }
    if (decode_Propagate_prop1()) {
      decode_Propagate_prop1_update();
      GBHigh_arg_0_TDATA = GBHigh_arg_0_TDATA_next;
      GBHigh_arg_0_TVALID = GBHigh_arg_0_TVALID_next;
      GBHigh_arg_1_TREADY = GBHigh_arg_1_TREADY_next;
      Propagate_proc_in = Propagate_proc_in_next;
      GBHigh_st_ready = GBHigh_st_ready_next;
      GBHigh_stencil0 = GBHigh_stencil0_next;
      GBHigh_stencil1 = GBHigh_stencil1_next;
      GBHigh_stencil2 = GBHigh_stencil2_next;
      GBHigh_stencil3 = GBHigh_stencil3_next;
      GBHigh_stencil4 = GBHigh_stencil4_next;
      GBHigh_stencil5 = GBHigh_stencil5_next;
      GBHigh_stencil6 = GBHigh_stencil6_next;
      GBHigh_stencil7 = GBHigh_stencil7_next;
      schedule_counter++;
    }
    if (schedule_counter == 0) 
      break;
  }
 #ifdef TANDEM_VERIFICATION
if ((tandem_f_ptr >= 0) && (tandem_f_ptr < 2)) {
  (this->*(tandem_f[tandem_f_ptr]))(v);
}
else {
  throw GBHighException("Ran unspecified function!");
}
#endif
};
