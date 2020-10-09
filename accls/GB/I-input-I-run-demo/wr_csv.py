f = open('tv.csv', 'w')
for i in range(3913):
  f.write("0, 1, " + str(i % 127) + "\n")
for i in range(481):
  f.write("1, 0, 0 \n")
  f.write("0, 1, " + str(i) + "\n")

for j in range(1000):
  for i in range(7):
    f.write("0, 1, " + str(i % 127) + "\n")
  for i in range(481):
    f.write("1, 0, 0 \n")       
    f.write("0, 1, " + str(i % 127) + "\n")
     

