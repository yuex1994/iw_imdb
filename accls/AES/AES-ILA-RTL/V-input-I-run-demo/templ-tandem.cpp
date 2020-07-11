// Include Ilated Model

// Include Verilated Impl

// Include library
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <fstream>
#include <iostream>

class Ilated;
class Verilated;
// Decl
bool end_of_instr(RTLVerilated* i);
bool v_ready(RTLVerilated* v);
void v_input(RTLVerilated* v, uint32_t test_input);
void i_input(Ilated* i, uint32_t test_input);
void next_cycle(RTLVerilated* v);
void next_instr(Ilated* i);
void check_state(Ilated* i, RTLVerilated* v);

int main(int argc, char **argv) {
  // Instantiate Model -- i
  Ilated* i;
  // Initialize Model -- i

  // Instantiate Implementation -- v
  Verilated* v;
  // Initialize Implementation -- v

  // tmps
  
  // TODO(yuex): see if we want to use csv for tv.
  if (argc < 2) 
    std::cout << "Need test-vector input." << std::endl;
  std::ifstream tv_file;
  tv_file.open(argv[1]);
  // std::vector<std::vector<uint32_t>> tv;
  std::vector<uint32_t> tv;
  std::string tv_input;
  while (getline(tv_file, tv_input)) {
    tv.push_back(std::stoul(tv_input));
  }
  std::vector<uint32_t> fq;
  while(!tv.empty() || !fq.empty()) {
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
      fq.erase(fq.begin());
      i_input(i, test_input);
      next_instr(i);
      check_state(i, v);
    }
    // Auxiliary code from ref-map

    next_cycle(v);
  }
}  
  
  

