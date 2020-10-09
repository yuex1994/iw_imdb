f = open('tv.csv', 'w')
for i in range(3921):
  f.write("0, 1, " + str(i % 127) + "\n")
for i in range(473):
  f.write("1, 0, 0 \n")
  f.write("0, 1, " + str(i) + "\n")


for j in range(1):
  for i in range(15):
    f.write("0, 1, " + str(i % 127) + "\n")
  for i in range(480):
    f.write("1, 0, 0 \n")       
    f.write("0, 1, " + str(i % 127) + "\n")


for j in range(638):
  for i in range(8):
    f.write("0, 1, " + str(i % 127) + "\n")
  for i in range(480):
    f.write("1, 0, 0 \n")       
    f.write("0, 1, " + str(i % 127) + "\n")
    
for j in range(1):
  for i in range(3911):
    f.write("0, 1, " + str(i % 127) + "\n")
  for i in range(6):
    f.write("1, 0, 0 \n")

for j in range(1):
  for i in range(473):
    f.write("1, 0, 0 \n")       
    f.write("0, 1, " + str(i % 127) + "\n")

for j in range(1):
  for i in range(15):
    f.write("0, 1, " + str(i % 127) + "\n")
  for i in range(480):
    f.write("1, 0, 0 \n")       
    f.write("0, 1, " + str(i % 127) + "\n")    

for j in range(300):
  for i in range(8):
    f.write("0, 1, " + str(i % 127) + "\n")
  for i in range(480):
    f.write("1, 0, 0 \n")       
    f.write("0, 1, " + str(i % 127) + "\n")    

    # f.write("0, 1, " + str(i % 127) + "\n")    