  .text
  .globl __res_state
  .type __res_state, @function

#! file-offset 0x104970
#! rip-offset  0x104970
#! capacity    16 bytes

# Text                       #  Line  RIP       Bytes  Opcode            
.__res_state:                #        0x104970  0      OPC=<label>       
  movq 0x296679(%rip), %rax  #  1     0x104970  7      OPC=movq_r64_m64  
  movq (%rax), %rax          #  2     0x104977  3      OPC=movq_r64_m64  
  nop                        #  3     0x10497a  1      OPC=nop           
  retq                       #  4     0x10497b  1      OPC=retq          
  nop                        #  5     0x10497c  1      OPC=nop           
  nop                        #  6     0x10497d  1      OPC=nop           
  nop                        #  7     0x10497e  1      OPC=nop           
  nop                        #  8     0x10497f  1      OPC=nop           
                                                                         
.size __res_state, .-__res_state
