folder = "./build3/sim/"
f = open(folder + "compute2.cc", "r")
l = 0
f_out = open(folder + "compute.cc", "w+")
res = []
for line in f:
  if (line.strip()[-1] == "{"):
    if (line.find("(decode") != -1):
      print (line)
      l = 1

  if (l == 1):
    if (line.find("(decode") != -1):
      res.append([line])
    else:
      res[-1].append(line)
    if (line.strip()[-1] == "}"):
      print (line)
      l = 0
  else:
    f_out.write(line)


f_out.close()
f_ind = open(folder + "ind.tmp", "w+")
f_constructor = open(folder + "riscv.cc", "w+")
f_constructor.write("#include \"riscv.h\"\n")
f_constructor.write("riscv::riscv() {\n")
f_mk = open(folder + "mk2.sh", "w+")

for r in res:
  head = r[0].find("(decode") + 8
  tail = r[0].find("()") 
  print (r[0][head:tail])
  func_name = "thread_" + r[0][head:tail]
  f_ind.write("void " + func_name + "();\n")
  f_constructor.write("  instr_func.push_back(&riscv::" + func_name + ");\n")
  f_out = open(folder + func_name + ".cc", "w+")  
  f_out.write("#include \"riscv.h\"\n")
  f_out.write("void riscv::" + func_name + "() {\n")
  f_mk.write("g++ -I./ -c -o " + func_name + ".o " + func_name + ".cc\n")
  for rr in r:
    f_out.write(rr)
  f_out.write("}")
  f_out.close()

f_ind.close()
f_constructor.write("}")
f_constructor.close()
f_mk.close()
