// Include Ilated Model
#include "aes_ila.h"

// Include Verilated Impl
#include "aes_rtl.h"

// Include library
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <fstream>
#include <iostream>
#include <nlohmann/json.hpp>

using json = nlohmann::json;

class Ilated;
class RTLVerilated;

#define AES_START 0xff00
#define AES_STATE 0xff01
#define AES_ADDR 0xff02
#define AES_LENGTH 0xff04
#define AES_KEY 0xff10
#define AES_CNT 0xff20

#define CMD_NOP 0
#define CMD_READ 1
#define CMD_WRITE 2

#define AES_STATE_IDLE 0
#define AES_STATE_READ_DATA 1
#define AES_STATE_OPERATE 2
#define AES_STATE_WRITE_DATA 3
// Util function




// Decl
/*
void i_input(Ilated *i, i_in& test_input) {
  i->i_top->AES_cmd = test_input.AES_cmd;
  i->i_top->AES_cmddata = test_input.AES_cmddata;
  i->i_top->AES_cmdaddr = test_input.AES_cmdaddr;
}
*/
void v_input(RTLVerilated *v, v_in& test_input) {
  v->v_top->wr = test_input.wr;
  v->v_top->stb = test_input.stb;
  v->v_top->data_in = test_input.data_in;
  v->v_top->addr = test_input.addr;
}

/*
void next_instr(Ilated* i);
 
void next_instr(Ilated* i) {
  i->i_top->compute(); 
}
*/
void next_cycle(RTLVerilated* v) {
  v->v_top->clk = 0;
  v->v_top->eval();
  v->v_top->clk = 1;
  v->v_top->eval();
}

int main(int argc, char **argv) {
  // Instantiate Model -- i
  Ilated* i = new Ilated;
  // Initialize Model -- i 

  // Instantiate Implementation -- v
  RTLVerilated* v = new RTLVerilated;

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
  
  int j = 0;
  while (getline(tv_file, t_input)) {
    v_in t_in;
    std::stringstream t_input_ss(t_input);
    std::string t_input_tt;
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.wr = std::stoul(t_input_tt, 0, 16); 
    } 
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.stb = std::stoul(t_input_tt, 0, 16); 
    } 
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.addr = std::stoul(t_input_tt, 0, 16); 
    } 
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.data_in = std::stoul(t_input_tt, 0, 16); 
    } 
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.xram_data_in = std::stoul(t_input_tt, 0, 16); 
    } 
    if (getline(t_input_ss, t_input_tt, ',')) {
      t_in.xram_ack = std::stoul(t_input_tt, 0, 16); 
    } 
    tv_v.push_back(t_in);
  }
  
  // ila tv  
  while (v->v_top->pc < tv_v.size()) {
    auto t = tv_v[v->v_top->pc]; 
    v_input(v, t);
    next_cycle(v);
    if (v->v_top->aes_top->aes_reg_state == 2) {
      std::cout << "aes_out is: " << v->v_top->aes_top->encrypted_data[0] << std::endl;
      std::cout << "aes_out is: " << v->v_top->aes_top->encrypted_data[1] << std::endl;
      std::cout << "aes_out is: " << v->v_top->aes_top->encrypted_data[2] << std::endl;
      std::cout << "aes_out is: " << v->v_top->aes_top->encrypted_data[3] << std::endl;
      std::cout << "byte_counter is: " << (uint32_t) v->v_top->aes_top->byte_counter << std::endl;
      next_cycle(v);

      std::cout << "byte_counter is: " << (uint32_t) v->v_top->aes_top->byte_counter << std::endl;
      std::cout << "xram_addr" << v->v_top->xram_addr << std::endl;
    }
  }

   
  for (int j = 0; j < 496 + 17; j++)
    std::cout << "aes_xram[" << j << "] = "  << (uint32_t) v->v_top->aes_top->xram[j] << std::endl; 

}  
  
  
