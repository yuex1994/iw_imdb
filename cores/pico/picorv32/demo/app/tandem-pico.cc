// Include Ilated Model
#include "riscv_ila.h"

// Include Verilated Impl
#include "riscv_rtl.h"

// Include library
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <fstream>
#include <iostream>

class Ilated;
class RTLVerilated;
// Decl
bool end_of_instr(RTLVerilated* v) {
  return v->v_top->picorv32_simple->reg_pc != v->prev_pc;
}
bool v_ready(RTLVerilated* v) {
  return v->v_top->picorv32_simple->mem_valid && 
         (v->v_top->picorv32_simple->mem_wstrb == 0);
}
void v_input(RTLVerilated* v, uint32_t test_input) {
  v->v_top->mem_ready = 1;
  v->v_top->mem_rdata = test_input;
  return;
}
void v_store(RTLVerilated* v, std::map<uint32_t, uint32_t>& sm) {
  if (v->v_top->picorv32_simple->mem_valid && 
      (v->v_top->picorv32_simple->mem_wstrb != 0)) {
    // std::cout << "v_store called" << std::endl;
    sm[v->v_top->picorv32_simple->mem_addr] = 
      v->v_top->picorv32_simple->mem_wdata;
  }
}

void i_input(Ilated* i, uint32_t test_input) {
  i->i_top->riscv_inst = test_input;
  return;
}
void next_cycle(RTLVerilated* v) {
  v->v_top->clk = 0;
  v->v_top->eval();
  v->v_top->clk = 1;
  v->v_top->eval();
  return;
}
void next_instr(Ilated* i) {
  i->i_top->compute(); 
}
void check_state(Ilated* i, RTLVerilated* v, std::map<uint32_t, uint32_t>& sm) {
  // Incomplete
  if (v->v_top->picorv32_simple->dbg_reg_x0 != i->i_top->riscv_x0)
    std::cout << "Error x0" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x1 != i->i_top->riscv_x1)
    std::cout << "Error x1" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x2 != i->i_top->riscv_x2)
    std::cout << "Error x2" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x3 != i->i_top->riscv_x3)
    std::cout << "Error" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x4 != i->i_top->riscv_x4)
    std::cout << "Error" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x5 != i->i_top->riscv_x5)
    std::cout << "Error" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x6 != i->i_top->riscv_x6)
    std::cout << "Error" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x7 != i->i_top->riscv_x7)
    std::cout << "Error" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x8 != i->i_top->riscv_x8)
    std::cout << "Error" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x9 != i->i_top->riscv_x9)
    std::cout << "Error" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x10 != i->i_top->riscv_x10)
    std::cout << "Error" << std::endl;
  if (v->v_top->picorv32_simple->dbg_reg_x11 != i->i_top->riscv_x11)
    std::cout << "Error" << std::endl;
  for (auto it : sm) {
    if (i->i_top->riscv_mem_next.update_map.find(it.first / 4) == 
        i->i_top->riscv_mem_next.update_map.end()) 
      std::cout << "Error sm addr" << it.first << std::endl; 
    else {
      if (i->i_top->riscv_mem_next.update_map[it.first / 4] !=
          it.second) 
        std::cout << "Error sm data" << it.first << " " << it.second 
                  << std::endl;
    }
  } 
  if ((i->i_top->riscv_mem_next.original_map != i->i_top->riscv_mem)
      && (!sm.empty()))
    std::cout << "Error original map" << std::endl
  return;
}


int main(int argc, char **argv) {
  // Instantiate Model -- i
  Ilated* i = new Ilated;
  // Initialize Model -- i 
  i->i_top->riscv_x1 = 1;

  // Instantiate Implementation -- v
  RTLVerilated* v = new RTLVerilated;
  // Initialize Implementation -- v
  v->v_top->resetn = 0;
  next_cycle(v);
  next_cycle(v);
  v->v_top->resetn = 1;
  next_cycle(v);
  next_cycle(v);
  next_cycle(v);
  next_cycle(v);
  next_cycle(v);
  v->v_top->picorv32_simple->cpuregs[1] = 1;
  // tmps
  
  // TODO(yuex): see if we want to use csv for tv.
  if (argc < 2) 
    std::cout << "Need test-vector input." << std::endl;
  std::ifstream tv_file;
  tv_file.open(argv[1]);
  // TODO(yuex): environment constraint
  // (option1) Instruction-map Test Input
  // std::vector<std::vector<uint32_t>> tv;
  // (option2) Stream Test Vector
  std::vector<uint32_t> tv;
  std::string tv_input;
  while (getline(tv_file, tv_input)) {
    tv.push_back(std::stoul(tv_input, 0, 16));
  }
  std::vector<uint32_t> fq;
  std::map<uint32_t, uint32_t> sm;
  while(!tv.empty() || !fq.empty()) {
    int a = v->v_top->mem_valid;
    // std::cout << a << "valid" << std::endl;
    // std::cout << v->v_top->picorv32_simple->mem_wstrb << "strb" << std::endl;
    if (!tv.empty()) {
      if (v_ready(v)) {
        auto test_input = tv.front();
        tv.erase(tv.begin());
        v_input(v, test_input);
        fq.push_back(test_input);
      }
    }
    if (end_of_instr(v)) {
      auto test_input = fq.front();
      // std::cout << test_input << std::endl;
      fq.erase(fq.begin());
      i_input(i, test_input);
      next_instr(i);
      check_state(i, v, sm);
      sm.clear();
    }
    // Auxiliary code from ref-map
    v_store(v, sm);
    v->prev_pc = v->v_top->picorv32_simple->reg_pc;
    sleep(1);
    // std::cout << v->v_top->picorv32_simple->reg_pc << "pc " << std::endl;
    next_cycle(v);
  }
}  
  
  

