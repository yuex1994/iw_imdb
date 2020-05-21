import numpy as np
mat = np.zeros([9, 9], dtype = int)
'''
for i in range(3920):
  j = i % 488
  if ((j >= 0) & (j < 9)):
    k = (int) (i / 488)
    mat[k, j ] = i % 127 
'''
for j in range(9):
  mat[0, j] = j
  if (j < 3):
    mat[1, j] = j + 7
    mat[2, j] = j + 135
    mat[3, j] = j + 103
    mat[4, j] = j + 71
    mat[5, j] = j + 39
    mat[6, j] = j + 7
  else:
    mat[1, j] = j + 13
    mat[2, j] = j + 141
    mat[3, j] = j + 109
    mat[4, j] = j + 77
    mat[5, j] = j + 45
    mat[6, j] = j + 13
  if (j < 6) :
    mat[7, j] = j + 20
    mat[8, j] = j + 148
  else:
    mat[7, j] = j + 26 
    mat[8, j] = j - 6

def kernel_f(x):
  return np.exp(- (x*x/(2*1.5e0*1.5e0))) / (np.sqrt(2*3.1415926535897931e0)*1.5e0)

def kernel(x):
  return kernel_f(x) * 255 / (kernel_f(0) + kernel_f(1)*2 + kernel_f(2)*2 + kernel_f(3)*2 + kernel_f(4)*2)

mat2 = np.zeros([9, 9], dtype = int)
for i in range(9):
  for j in range(9):
    x = i - 4
    y = j - 4
    mat2[i, j] = (kernel(x).astype(int) * kernel(y).astype(int))
    

res = 0
for i in range(9):
  for j in range(9):
    res += mat[i, j] * mat2[i, j]


print (res >> 16)
print (mat)
print (mat2)
