// Include Ilated Model
#include "piccolo_ila.h"

// Include Verilated Impl
#include "piccolo_rtl.h"

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
vluint64_t main_time = 0;
double sc_time_stamp () {
  return main_time;
}

// Decl

void i_input(Ilated *i, i_in& test_input) {
  i->i_top->riscv_inst = test_input.riscv_inst;
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
  std::vector<v_in> tv_v;
  std::string t_input;

  // Initialize Implementation -- v
  // tmps
  
  // TODO(yuex): see if we want to use csv for tv.
  if (argc < 2) 
    std::cout << "Need test-vector input." << std::endl;
  // verilog tv
  std::ifstream tv_file;
  tv_file.open(argv[1]);
  
  while (getline(tv_file, t_input)) {
    v_in t_in;
    std::stringstream t_input_ss(t_input);
    std::string t_input_tt;
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.prob_imem_instr = std::stoul(t_input_tt, 0, 16); 
    } 
    tv_v.push_back(t_in);
  }
  
  // ila tv  
  while ((i->i_top->riscv_pc / 4) < tv_v.size()) {
    auto t = tv_v[i->i_top->riscv_pc / 4]; 
    i_in test_input;
    test_input.riscv_inst = t.prob_imem_instr;
    i_input(i, test_input);
    next_instr(i);
    std::cout << "pc: " << i->i_top->riscv_pc << std::endl;
  }
   
 }  
  
  

