.align 6
 .globl _start
 _start:
 # screw boot code, we're going minimalist
 # mtohost is the CSR in machine mode
 li  x1, 1000;
 1:
 j 1b
