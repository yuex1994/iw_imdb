// Include Ilated Model
#include "aes_ila.h"

// Include Verilated Impl
#include "aes_rtl.h"

// Include library
#include "verilated.h"
#include "verilated_vcd_c.h"
#include <fstream>
#include <iostream>

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
// Decl

bool end_of_instr(RTLVerilated* v, std::vector<uint32_t>& fq);

bool end_of_instr(RTLVerilated* v, std::vector<mnt_instr*>& fq) {
  for (int i = 0; i < fq.size(); i++) {
    // std::cout << "yxdbg" << fq[i]->remaining_cycles << fq[i]->instr_done(v) << std::endl;
    if (fq[i]->instr_done(v)) {
      return true;
    }
  }
  return false;
}

bool v_ready(RTLVerilated* v);

bool v_ready(RTLVerilated* v) {
  return v->v_top->aes_top->aes_reg_state == 0;
}

/*
bool v_ready(RTLVerilated* v) {
  return v->v_top->picorv32_simple->mem_valid && 
         (v->v_top->picorv32_simple->mem_wstrb == 0) && 
         v->v_top->picorv32_simple->mem_instr;
}
*/

bool v_read(RTLVerilated* v) {
  return (v->v_top->aes_top->xram_stb == 1) && (v->v_top->aes_top->xram_wr == 0);
}
/*
bool v_read(RTLVerilated* v) {
  return v->v_top->picorv32_simple->mem_valid && 
         (v->v_top->picorv32_simple->mem_wstrb == 0) && 
         (!v->v_top->picorv32_simple->mem_instr);
}*/

void v_input(RTLVerilated* v, uint32_t stb, uint32_t wr, uint32_t addr, uint32_t data);

void v_input(RTLVerilated* v, uint32_t stb, uint32_t wr, uint32_t addr, uint32_t data) {
  v->v_top->stb = stb;
  v->v_top->wr = wr;
  v->v_top->addr = addr;
  v->v_top->data_in = data;
}
/*
void v_input(RTLVerilated* v, uint32_t test_input) {
  v->v_top->mem_ready = 1;
  v->v_top->mem_rdata = test_input;
  return;
} */


void v_input_xram(RTLVerilated* v, uint32_t data) {
  v->v_top->xram_ack = 1;
  v->v_top->xram_data_in = data;
}

void v_store_xram(RTLVerilated* v, std::map<uint32_t, uint32_t>& store_trace);

void v_store_xram(RTLVerilated* v, std::map<uint32_t, uint32_t>& store_trace) {
  if ((v->v_top->aes_top->xram_stb == 1) && (v->v_top->aes_top->xram_wr == 1)) {
    // std::cout << "v_store called" << std::endl;
    uint32_t addr = v->v_top->aes_top->xram_addr;
    uint32_t data = v->v_top->aes_top->xram_data_out;
    v->v_top->xram_ack = 1;
    store_trace[addr] = data;
    std::cout << "xram store addr: " << addr << "  data: " 
              << data << std::endl;
  }
}

void v_xram_reset(RTLVerilated* v);

void v_xram_reset(RTLVerilated* v) {
  if (v->v_top->aes_top->xram_stb == 0)
    v->v_top->xram_ack = 0; 
  return;
}

void i_input(RTLVerilated* v, std::vector<mnt_instr*>& fq);

void i_input(RTLVerilated* v, std::vector<mnt_instr*>& fq) {
  uint32_t addr = v->v_top->addr;
  uint32_t data = v->v_top->data_in;
  if ((v->v_top->wr == 1) && (addr >= AES_ADDR) && 
      (addr < (AES_ADDR + 2))) {
    auto instr_p = new mnt_instr_WRITE_ADDRESS;
    instr_p->cmd = 2;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if ((v->v_top->wr == 1) && (addr >= AES_LENGTH) && 
      (addr < (AES_LENGTH + 2))) {
    auto instr_p = new mnt_instr_WRITE_LENGTH;
    instr_p->cmd = 2;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if ((v->v_top->wr == 1) && (addr >= AES_KEY) && 
      (addr < (AES_KEY + 16))) {
    auto instr_p = new mnt_instr_WRITE_KEY;
    instr_p->cmd = 2;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if ((v->v_top->wr == 1) && (addr >= AES_CNT) && 
      (addr < (AES_CNT + 16))) {
    auto instr_p = new mnt_instr_WRITE_COUNTER;
    instr_p->cmd = 2;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if ((v->v_top->wr == 1) && (addr == AES_START) && 
      (data == 1 )) {
    auto instr_p = new mnt_instr_START_ENCRYPTION;
    instr_p->cmd = 2;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if ((v->v_top->wr == 0) && (addr >= AES_ADDR) && 
      (addr < (AES_ADDR + 2))) {
    auto instr_p = new mnt_instr_READ_ADDRESS;
    instr_p->cmd = 1;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if ((v->v_top->wr == 0) && (addr >= AES_LENGTH) && 
      (addr < (AES_LENGTH + 2))) {
    auto instr_p = new mnt_instr_READ_LENGTH;
    instr_p->cmd = 1;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if ((v->v_top->wr == 0) && (addr >= AES_KEY) && 
      (addr < (AES_KEY + 16))) {
    auto instr_p = new mnt_instr_READ_KEY;
    instr_p->cmd = 1;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if ((v->v_top->wr == 0) && (addr >= AES_CNT) && 
      (addr < (AES_CNT + 16))) {
    auto instr_p = new mnt_instr_READ_COUNTER;
    instr_p->cmd = 1;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if (v->v_top->aes_top->aes_reg_state == AES_STATE_READ_DATA) {
    auto instr_p = new mnt_child_instr_LOAD;
    instr_p->cmd = 0;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if (v->v_top->aes_top->aes_reg_state == AES_STATE_OPERATE) {
    auto instr_p = new mnt_child_instr_OPERATE;
    instr_p->cmd = 0;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
  if (v->v_top->aes_top->aes_reg_state == AES_STATE_WRITE_DATA) {
    auto instr_p = new mnt_child_instr_STORE;
    instr_p->cmd = 0;
    instr_p->cmdaddr = addr;
    instr_p->cmddata = data;
    fq.push_back(instr_p);
  }
}
/*
void i_input(Ilated* i, uint32_t test_input) {
  i->i_top->riscv_inst = test_input;
  return;
}
*/

void next_cycle(RTLVerilated* v, std::vector<mnt_instr*>& fq);

void next_cycle(RTLVerilated* v, std::vector<mnt_instr*>& fq) {
  auto it = fq.begin();
  while (it != fq.end()) {
    if ((*it)->remaining_cycles > 0) {
      (*it)->remaining_cycles = (*it)->remaining_cycles - 1;
    }
    it++;
  }
  v->v_top->clk = 0;
  v->v_top->eval();
  v->v_top->clk = 1;
  v->v_top->eval();
  if ((v->v_top->addr == 0xff00) && (v->v_top->wr == 0))
    v->finish = 1;
  v_xram_reset(v);
  return;
}


void next_instr(Ilated* i);
 
void next_instr(Ilated* i) {
  i->i_top->compute(); 
}


void check_state(Ilated* i, RTLVerilated* v, std::map<uint32_t, uint32_t>& store_trace);


void check_state(Ilated* i, RTLVerilated* v, std::map<uint32_t, uint32_t>& store_trace) {
// Architectural Level
  if (v->v_top->aes_top->aes_reg_opaddr_i->reg_out != i->i_top->AES_aes_address)
    std::cout << "Error address" << std::endl;
  if (v->v_top->aes_top->aes_reg_oplen_i->reg_out != i->i_top->AES_aes_length)
    std::cout << "Error length" << std::endl;
  if (v->v_top->aes_top->aes_reg_key0_i->reg_out[0] != ((uint32_t) i->i_top->AES_aes_key))
    std::cout << "Error key" << std::endl;

  if (v->v_top->aes_top->aes_reg_ctr_i->reg_out[0] != ((uint32_t) i->i_top->AES_aes_counter))
    std::cout << "Error counter" << std::endl;
  if (v->v_top->aes_top->aes_reg_state != (i->i_top->AES_aes_status))
    std::cout << "Error status" 
              << "v " << ((uint32_t) v->v_top->aes_top->aes_reg_state) 
              << "i " << i->i_top->AES_aes_status << std::endl;
  if (v->v_top->aes_top->data_out_reg != i->i_top->AES_outdata)
    std::cout << "Error data_out" << std::endl;
  for (auto it : store_trace) {
    if (i->i_top->AES_XRAM_next.update_map.find(it.first) == 
        i->i_top->AES_XRAM_next.update_map.end()) 
      std::cout << "Error st addr" << it.first << 
                   "update_map size" << i->i_top->AES_XRAM_next.update_map.size() << std::endl; 
    else {
      std::cout << "Correct st addr" << std::endl;
      // if (i->i_top->riscv_mem_next.update_map[it.first] !=
      //     it.second) 
      //   std::cout << "Error st data" << it.first << " " << it.second 
      //             << std::endl;
    }
  } 
/*
  if ((i->i_top->riscv_mem_next.original_map != i->i_top->riscv_mem)
      && (!store_trace.empty()))
    std::cout << "Error original map" << std::endl;
*/
  return;
}

int main(int argc, char **argv) {
  // Instantiate Model -- i
  Ilated* i = new Ilated;
  // Initialize Model -- i 

  // Instantiate Implementation -- v
  RTLVerilated* v = new RTLVerilated;

  std::string tv_input;
  std::vector<uint32_t> tv;
  std::vector<mnt_instr*> fq;

  // Initialize Implementation -- v
  v->v_top->rst = 1;
  next_cycle(v, fq);
  v->v_top->rst = 0;
  next_cycle(v, fq);
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
  // std::vector<uint32_t> tv;
  
  int j = 0;
  while (getline(tv_file, tv_input)) {
    uint32_t tmp = (std::stoul(tv_input, 0, 16));
    tv.push_back(tmp);
  }
  std::map<uint32_t, uint32_t> store_trace;
  while((v->finish == 0) || !fq.empty()) {
    // std::cout << a << "valid" << std::endl;
    // std::cout << v->v_top->picorv32_simple->mem_wstrb << "strb" << std::endl;
    // if (v->v_top->picorv32_simple->reg_pc != tv_end) {
    if (v->finish == 0) {
      if (v_ready(v)) {
        auto stb = tv.front();
        tv.erase(tv.begin());
        auto wr = tv.front();
        tv.erase(tv.begin());
        auto addr = tv.front();
        tv.erase(tv.begin());
        auto data = tv.front();
        tv.erase(tv.begin());
        v_input(v, stb, wr, addr, data);
        // std::cout << "tv: stb-" << stb << " wr-" << wr << " addr-" << addr
        //           << " data-" << data << std::endl; 
        // std::cout << "tv_fetched:" << test_input << std::endl;
        // std::cout << "tv_fetched addr:" << v->v_top->picorv32_simple->mem_addr << std::endl;
        // tv.erase(tv.begin());
        // fq.push_back(test_input);
      } else {
        v_input(v, 0, 0, 0, 0);
      } 
      if (v_read(v)) {
        auto data_input = v->xram[v->v_top->xram_addr];
        // std::cout << "data_fetched:" << data_input << std::endl;
        v_input_xram(v, data_input);
      }
    }
    i_input(v, fq);
    v_store_xram(v, store_trace);
    // v->prev_pc = v->v_top->picorv32_simple->reg_pc;
    next_cycle(v, fq);
    // std::cout << "fq_size: " << fq.size() << std::endl;
    // std::cout << "aes_reg addr:" << v->v_top->aes_top->aes_reg_opaddr_i->reg_out << std::endl;
    uint32_t tmp = v->v_top->aes_top->data_out_reg;
    // std::cout << "aes_reg data_out:" << tmp << std::endl;
    if (end_of_instr(v, fq)) {
      auto it = fq.begin();
      while (it != fq.end()) {
        if ((*it)->instr_done(v))
          break;
        it++;
      }
      
      // std::cout << "ila fetched: cmd-" << (*it)->cmd 
      //           << "cmddata-" << (*it)->cmddata
      //           << "cmdaddr-" << (*it)->cmdaddr << std::endl;
      i->i_top->AES_cmd = (*it)->cmd;
      i->i_top->AES_cmdaddr = (*it)->cmdaddr;
      i->i_top->AES_cmddata = (*it)->cmddata;
      next_instr(i);
      check_state(i, v, store_trace);
      // std::cout << "yxdbg byte_cnt" << i->i_top->AES_BLOCK_byte_cnt << std::endl;
      std::cout << "check done" << std::endl;
      store_trace.clear();
      fq.erase(it);
    }
    
    if (!store_trace.empty())
      std::cout << "store_trace_clear" << std::endl;
    store_trace.clear();
    // Auxiliary code from ref-map
    sleep(1);
  }
}  
  
  

