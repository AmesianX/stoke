  .text
  .globl readlink
  .type readlink, @function

#! file-offset 0xdaf50
#! rip-offset  0xdaf50
#! capacity    48 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.readlink:                   #        0xdaf50  0      OPC=<label>         
  movl $0x59, %eax           #  1     0xdaf50  5      OPC=movl_r32_imm32  
  syscall                    #  2     0xdaf55  2      OPC=syscall         
  cmpq $0xfffff001, %rax     #  3     0xdaf57  6      OPC=cmpq_rax_imm32  
  jae .L_daf60               #  4     0xdaf5d  2      OPC=jae_label       
  retq                       #  5     0xdaf5f  1      OPC=retq            
.L_daf60:                    #        0xdaf60  0      OPC=<label>         
  movq 0x2bff19(%rip), %rcx  #  6     0xdaf60  7      OPC=movq_r64_m64    
  negl %eax                  #  7     0xdaf67  2      OPC=negl_r32        
  movl %eax, (%rcx)          #  8     0xdaf69  2      OPC=movl_m32_r32    
  nop                        #  9     0xdaf6b  1      OPC=nop             
  orq $0xff, %rax            #  10    0xdaf6c  4      OPC=orq_r64_imm8    
  retq                       #  11    0xdaf70  1      OPC=retq            
  nop                        #  12    0xdaf71  1      OPC=nop             
  nop                        #  13    0xdaf72  1      OPC=nop             
  nop                        #  14    0xdaf73  1      OPC=nop             
  nop                        #  15    0xdaf74  1      OPC=nop             
  nop                        #  16    0xdaf75  1      OPC=nop             
  nop                        #  17    0xdaf76  1      OPC=nop             
  nop                        #  18    0xdaf77  1      OPC=nop             
  nop                        #  19    0xdaf78  1      OPC=nop             
  nop                        #  20    0xdaf79  1      OPC=nop             
  nop                        #  21    0xdaf7a  1      OPC=nop             
  nop                        #  22    0xdaf7b  1      OPC=nop             
  nop                        #  23    0xdaf7c  1      OPC=nop             
  nop                        #  24    0xdaf7d  1      OPC=nop             
  nop                        #  25    0xdaf7e  1      OPC=nop             
  nop                        #  26    0xdaf7f  1      OPC=nop             
                                                                          
.size readlink, .-readlink

