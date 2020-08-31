// Include Ilated Model
#include "rocket_ila.h"

// Include Verilated Impl
#include "rocket_rtl.h"

// Include library
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <fstream>
#include <iostream>


class Ilated;
class RTLVerilated;

// Util function
vluint64_t main_time = 0;
VerilatedVcdC* tfp = new VerilatedVcdC;
double sc_time_stamp () {
  return main_time;
}

// Decl

// void i_input(Ilated *i, i_in& test_input) {
//   i->i_top->riscv_inst = test_input.riscv_inst;
// }

void v_input(RTLVerilated *v, v_in& test_input) {
  v->v_top->io_imem_resp_bits_data = test_input.io_imem_resp_bits_data;
  v->v_top->io_imem_resp_bits_pc = v->v_top->io_imem_req_bits_pc;
  v->v_top->io_imem_resp_valid = v->v_top->io_imem_resp_ready;
  v->v_top->io_dmem_req_ready = 1;
}

void v_check_dmem(RTLVerilated* v) {
  if (v->v_top->io_dmem_req_valid) {
    v->v_top->io_dmem_resp_valid = 1;
    std::cout << "dmem_req_addr" << v->v_top->io_dmem_req_bits_addr << std::endl;
    if (v->v_top->io_dmem_req_bits_cmd == 0) {
      std::cout << "dmem_ld" << std::endl;
      v->v_top->io_dmem_resp_bits_tag = v->v_top->io_dmem_req_bits_tag;
      v->v_top->io_dmem_resp_bits_has_data = 1;
    } else if (v->v_top->io_dmem_req_bits_cmd == 1) {
      std::cout << "dmem_st" << std::endl;
      v->v_top->io_dmem_resp_bits_tag = v->v_top->io_dmem_req_bits_tag;
      v->v_top->io_dmem_resp_bits_has_data = 0;
      std::cout << "dmem_st data: " << v->v_top->io_dmem_s1_data_data << std::endl;
    } else {
      std::cout << "dmem_other cmd" << v->v_top->io_dmem_req_bits_cmd << std::endl;
    }
  } else {
    v->v_top->io_dmem_req_valid = 0;
  }
}

void next_cycle(RTLVerilated* v) {
  v->v_top->clock = 0;
  v->v_top->eval();
  main_time += 5;
  tfp->dump(main_time);
  v_check_dmem(v);
  v->v_top->clock = 1;
  v->v_top->eval();
  main_time += 5;
  tfp->dump(main_time);
}


int main(int argc, char **argv) {
  // Instantiate Model -- i
  // Ilated* i = new Ilated;
  // Initialize Model -- i 

  // Instantiate Implementation -- v
  Verilated::traceEverOn(true);
  RTLVerilated* v = new RTLVerilated;
  v->v_top->trace(tfp, 99);
  tfp->open("./out.vcd");
  v->v_top->reset = 1;
  for (int i = 0; i < 2; i ++) {  
    next_cycle(v);
  } 
  v->v_top->reset = 1;
  next_cycle(v);
  next_cycle(v);
  for (int i = 0; i < 10; i ++) {  
    next_cycle(v);
    std::cout << "pc: " << v->v_top->io_imem_req_bits_pc << std::endl;
  }  

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
      t_in.io_imem_resp_bits_data = std::stoul(t_input_tt, 0, 16); 
    } 
    tv_v.push_back(t_in);
  }
  
  // ila tv  
  std::cout << "pc: " << v->v_top->io_imem_req_bits_pc << std::endl;
  while ((v->v_top->io_imem_req_bits_pc / 4) < tv_v.size()) {
  // for (int i = 0; i < 100; i++) {
    auto t = tv_v[v->v_top->io_imem_req_bits_pc / 4]; 
    v_input(v, t);
    next_cycle(v);
    std::cout << "pc: " << v->v_top->io_imem_req_bits_pc << std::endl;
  }
    tfp->close();  
 }  
  
  

