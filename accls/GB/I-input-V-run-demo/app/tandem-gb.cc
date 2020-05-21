// Include Ilated Model
#include "gb_ila.h"

// Include Verilated Impl
#include "gb_rtl.h"

// Include library
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <fstream>
#include <iostream>
#include <nlohmann/json.hpp>

using json = nlohmann::json;

class Ilated;
class RTLVerilated;

// Util function

// Decl
/*
void i_input(Ilated *i, i_in& test_input) {
  i->i_top->GBHigh_arg_0_TREADY = test_input.GBHigh_arg_0_TREADY;
  i->i_top->GBHigh_arg_1_TVALID = test_input.GBHigh_arg_1_TVALID;
  i->i_top->GBHigh_arg_1_TDATA = test_input.GBHigh_arg_1_TDATA;
}
*/

void v_input(RTLVerilated *v, v_in& test_input) {
  v->v_top->arg_0_TREADY = test_input.arg_0_TREADY;
  v->v_top->arg_1_TVALID = test_input.arg_1_TVALID;
  v->v_top->arg_1_TDATA = test_input.arg_1_TDATA;
}

void next_cycle(RTLVerilated* v) {
  v->v_top->ap_clk = 0;
  v->v_top->eval();
  v->v_top->ap_clk = 1;
  v->v_top->eval();
}

// void next_instr(Ilated* i);
/* 
void next_instr(Ilated* i) {
  i->i_top->compute(); 
}
*/
int main(int argc, char **argv) {
  // Instantiate Model -- i
  // Ilated* i = new Ilated;
  // Initialize Model -- i 

  // Instantiate Implementation -- v
  RTLVerilated* v = new RTLVerilated;
  v->v_top->ap_rst_n = 0;
  next_cycle(v);
  next_cycle(v);
  v->v_top->ap_rst_n = 1;
  v->v_top->hls_target->ap_start = 1;

  /* verilog tv
  std::string tv_input;
  std::vector<uint32_t> tv;
  std::vector<mnt_instr*> fq;
  */
  // ila tv
  std::vector<v_in> tv_v;
  // std::vector<i_in> tv_v;
  std::string t_input;

  // Initialize Implementation -- v
  // tmps
  
  // TODO(yuex): see if we want to use csv for tv.
  if (argc < 2) 
    std::cout << "Need test-vector input." << std::endl;
  // verilog tv
  std::ifstream tv_file;
  tv_file.open(argv[1]);
  
  int j = 0;
  while (getline(tv_file, t_input)) {
    v_in t_in;
    std::stringstream t_input_ss(t_input);
    std::string t_input_tt;
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.arg_0_TREADY = std::stoul(t_input_tt, 0, 16); 
    } 
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.arg_1_TVALID = std::stoul(t_input_tt, 0, 16); 
    } 
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.arg_1_TDATA = std::stoul(t_input_tt, 0, 16); 
    } 
    tv_v.push_back(t_in);
  }
  
  // ila tv  
  uint32_t i_lock_cycle = 0;
  while (v->v_top->hls_target->GB_pc < tv_v.size()) {
    auto t = tv_v[v->v_top->hls_target->GB_pc]; 
    v_input(v, t);
    next_cycle(v);
    std::cout << "pc:" << v->v_top->hls_target->GB_pc << std::endl;
    std::cout << "ap_start:" << (uint32_t) v->v_top->hls_target->ap_start << std::endl;
    std::cout << "arg_1_TREADY: " << (uint32_t) v->v_top->arg_1_TREADY << std::endl;
    std::cout << "arg_1_TVALID: " << (uint32_t) v->v_top->arg_1_TVALID << std::endl;
    std::cout << "arg_0_TVALID: " << (uint32_t) v->v_top->arg_0_TVALID << std::endl; 
    std::cout << "arg_0_TREADY: " << (uint32_t) v->v_top->arg_0_TREADY << std::endl;
    std::cout << "arg_0_TDATA: " << (uint32_t) v->v_top->arg_0_TDATA << std::endl;
    uint32_t tmp = v->v_top->hls_target->p_p2_in_bounded_stencil_stream_s_U->U_FIFO_hls_target_p_p2_in_bounded_stencil_stream_s_ram->q[0];
    for (int i = 0; i < 20; i++) {
      tmp = v->v_top->hls_target->p_p2_in_bounded_stencil_stream_s_U->U_FIFO_hls_target_p_p2_in_bounded_stencil_stream_s_ram->q[i];
      std::cout << "data[" << std::to_string(i) << "]:" << (tmp & (0xff)) << std::endl;
      std::cout << "data[" << std::to_string(i) << "]:" << ((tmp & (0xff00)) >> 8) << std::endl;
      std::cout << "data[" << std::to_string(i) << "]:" << ((tmp & (0xff0000)) >> 16) << std::endl;
      std::cout << "data[" << std::to_string(i) << "]:" << ((tmp & (0xff000000)) >> 24) << std::endl;
    }

    tmp = v->v_top->hls_target->p_p2_in_bounded_stencil_stream_s_U->U_FIFO_hls_target_p_p2_in_bounded_stencil_stream_s_ram->q[20];
    std::cout << "data[81]" << (tmp & (0xff)) << std::endl;
  }

   
}  
  
  

