f = open('tv.csv', 'w')
for i in range(3921):
  f.write("0, 1, " + str(i % 127) + "\n")
for i in range(100):
  f.write("1, 0, 0 \n")
  f.write("0, 1, " + str(i) + "\n")
