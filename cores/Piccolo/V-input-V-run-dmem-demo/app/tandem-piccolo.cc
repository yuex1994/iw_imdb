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
VerilatedVcdC* tfp = new VerilatedVcdC;
double sc_time_stamp () {
  return main_time;
}

// Decl

// void i_input(Ilated *i, i_in& test_input) {
//   i->i_top->riscv_inst = test_input.riscv_inst;
// }

void v_input(RTLVerilated *v, v_in& test_input) {
  v->v_top->prob_imem_instr = test_input.prob_imem_instr;
}

void v_check_dmem(RTLVerilated* v) {
  if (v->v_top->EN_dmem_req_yxdbg) {
    if (v->v_top->dmem_req_op_yxdbg) {
      std::cout << "dmem wr_addr: " 
                << (uint32_t) v->v_top->dmem_req_addr_yxdbg << std::endl;  
      std::cout << "dmem wr_data: " 
                << (uint32_t) v->v_top->dmem_req_store_value_yxdbg << std::endl;
      v->v_top->dmem_valid_yxdbg = 1;
    } else {
      std::cout << "dmem rd_addr: "
                << (uint32_t) v->v_top->dmem_req_addr_yxdbg << std::endl;
      v->v_top->dmem_valid_yxdbg = 1;
      v->v_top->dmem_word64_yxdbg = 1;
    } 
  } else {
    v->v_top->dmem_valid_yxdbg = 1;
  }
}

void next_cycle(RTLVerilated* v) {
  v->v_top->CLK = 0;
  v->v_top->eval();
  main_time += 5;
  tfp->dump(main_time);
  v_check_dmem(v);  
  v->v_top->CLK = 1;
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
  v->v_top->RST_N = 0;
  for (int i = 0; i < 2; i ++) {  
    next_cycle(v);
  } 
  v->v_top->RST_N = 1;
  next_cycle(v);
  v->v_top->hart0_server_reset_request_put = 1;
  v->v_top->EN_hart0_server_reset_request_put = 1;
  v->v_top->dmem_master_rvalid = 1;
  next_cycle(v);
  v->v_top->EN_hart0_server_reset_request_put = 0;
  for (int i = 0; i < 133; i ++) {  
    next_cycle(v);
    std::cout << "pc: " << v->v_top->mkCPU->yxdbg_pc << std::endl;
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
      t_in.prob_imem_instr = std::stoul(t_input_tt, 0, 16); 
    } 
    tv_v.push_back(t_in);
  }
  
  // ila tv  
  std::cout << "pc:" << (uint32_t) v->v_top->mkCPU->yxdbg_pc << std::endl; 
  while (((v->v_top->mkCPU->yxdbg_pc - 4096)/ 4) < tv_v.size()) {
  // for (int i = 0; i < 100; i++) {
    auto t = tv_v[(v->v_top->mkCPU->yxdbg_pc - 4096) / 4]; 
    v_input(v, t);
    next_cycle(v);
    std::cout << "pc: " << v->v_top->mkCPU->yxdbg_pc << std::endl;
    // std::cout << "dmem_valid: " << (uint32_t) v->v_top->mkCPU->yxdbg_dmem_valid << std::endl;
    // std::cout << "dmem_req_op: " << (uint32_t) v->v_top->mkCPU->near_mem->dmem_req_op << std::endl;
    // std::cout << "dmem_req_f3: " << (uint32_t) v->v_top->mkCPU->near_mem->dmem_req_f3 << std::endl;
    // std::cout << "dmem_req_addr: " << (uint32_t) v->v_top->mkCPU->near_mem->dmem_req_addr << std::endl;

    // std::cout << "EN_dmem_req: " << (uint32_t) v->v_top->mkCPU->near_mem->EN_dmem_req << std::endl;
  }
    tfp->close();  
 }  
  
  

