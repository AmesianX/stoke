  .text
  .globl __iscntrl_l
  .type __iscntrl_l, @function

#! file-offset 0x2ae51
#! rip-offset  0x2ae51
#! capacity    18 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.__iscntrl_l:                 #        0x2ae51  0      OPC=<label>         
  movslq %edi, %rdi           #  1     0x2ae51  3      OPC=movslq_r64_r32  
  movq 0x68(%rsi), %rax       #  2     0x2ae54  4      OPC=movq_r64_m64    
  movzwl (%rax,%rdi,2), %eax  #  3     0x2ae58  4      OPC=movzwl_r32_m16  
  andl $0x2, %eax             #  4     0x2ae5c  3      OPC=andl_r32_imm8   
  movzwl %ax, %eax            #  5     0x2ae5f  3      OPC=movzwl_r32_r16  
  retq                        #  6     0x2ae62  1      OPC=retq            
                                                                           
.size __iscntrl_l, .-__iscntrl_l

