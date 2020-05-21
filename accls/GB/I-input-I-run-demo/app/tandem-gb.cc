// Include Ilated Model
#include "gb_ila.h"

// Include Verilated Impl
// #include "aes_rtl.h"

// Include library
// #include "verilated.h"
// #include "verilated_vcd_c.h"
#include <fstream>
#include <iostream>
#include <nlohmann/json.hpp>

using json = nlohmann::json;

class Ilated;
// class RTLVerilated;

// Util function




// Decl

void i_input(Ilated *i, i_in& test_input) {
  i->i_top->GBHigh_arg_0_TREADY = test_input.GBHigh_arg_0_TREADY;
  i->i_top->GBHigh_arg_1_TVALID = test_input.GBHigh_arg_1_TVALID;
  i->i_top->GBHigh_arg_1_TDATA = test_input.GBHigh_arg_1_TDATA;
}

void next_instr(Ilated* i);
 
void next_instr(Ilated* i) {
  i->i_top->compute(); 
}

int main(int argc, char **argv) {
  // Instantiate Model -- i
  Ilated* i = new Ilated;
  // Initialize Model -- i 

  // Instantiate Implementation -- v
  // RTLVerilated* v = new RTLVerilated;

  /* verilog tv
  std::string tv_input;
  std::vector<uint32_t> tv;
  std::vector<mnt_instr*> fq;
  */
  // ila tv
  // std::vector<v_in> tv_v;
  std::vector<i_in> tv_v;
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
    i_in t_in;
    std::stringstream t_input_ss(t_input);
    std::string t_input_tt;
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.GBHigh_arg_0_TREADY = std::stoul(t_input_tt, 0, 16); 
    } 
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.GBHigh_arg_1_TVALID = std::stoul(t_input_tt, 0, 16); 
    } 
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.GBHigh_arg_1_TDATA = std::stoul(t_input_tt, 0, 16); 
    } 
    tv_v.push_back(t_in);
  }
  
  // ila tv  
  uint32_t i_lock_cycle = 0;
  while (i->i_top->GB_pc < tv_v.size()) {
    auto t = tv_v[i->i_top->GB_pc]; 
    i_input(i, t);
    next_instr(i);
    std::cout << "data_out" << (uint32_t) i->i_top->GBHigh_arg_0_TDATA << std::endl;
    std::cout << "pc: " << i->i_top->GB_pc << std::endl;
  } 

   
}  
  
  

