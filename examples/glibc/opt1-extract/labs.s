  .text
  .globl labs
  .type labs, @function

#! file-offset 0x33f07
#! rip-offset  0x33f07
#! capacity    17 bytes

# Text              #  Line  RIP      Bytes  Opcode             
.labs:              #        0x33f07  0      OPC=<label>        
  movq %rdi, %rdx   #  1     0x33f07  3      OPC=movq_r64_r64   
  sarq $0x3f, %rdx  #  2     0x33f0a  4      OPC=sarq_r64_imm8  
  movq %rdi, %rax   #  3     0x33f0e  3      OPC=movq_r64_r64   
  xorq %rdx, %rax   #  4     0x33f11  3      OPC=xorq_r64_r64   
  subq %rdx, %rax   #  5     0x33f14  3      OPC=subq_r64_r64   
  retq              #  6     0x33f17  1      OPC=retq           
                                                                
.size labs, .-labs

