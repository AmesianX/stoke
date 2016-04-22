  .text
  .globl __splice_nocancel
  .type __splice_nocancel, @function

#! file-offset 0x105f79
#! rip-offset  0x105f79
#! capacity    87 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.__splice_nocancel:                  #        0x105f79  0      OPC=<label>         
  movq %rcx, %r10                    #  1     0x105f79  3      OPC=movq_r64_r64    
  movl $0x113, %eax                  #  2     0x105f7c  5      OPC=movl_r32_imm32  
  syscall                            #  3     0x105f81  2      OPC=syscall         
  cmpq $0xfffff001, %rax             #  4     0x105f83  6      OPC=cmpq_rax_imm32  
  jae .L_105fbf                      #  5     0x105f89  2      OPC=jae_label       
  retq                               #  6     0x105f8b  1      OPC=retq            
  subq $0x8, %rsp                    #  7     0x105f8c  4      OPC=subq_r64_imm8   
  callq .__libc_enable_asynccancel   #  8     0x105f90  5      OPC=callq_label     
  movq %rax, (%rsp)                  #  9     0x105f95  4      OPC=movq_m64_r64    
  movq %rcx, %r10                    #  10    0x105f99  3      OPC=movq_r64_r64    
  movl $0x113, %eax                  #  11    0x105f9c  5      OPC=movl_r32_imm32  
  syscall                            #  12    0x105fa1  2      OPC=syscall         
  movq (%rsp), %rdi                  #  13    0x105fa3  4      OPC=movq_r64_m64    
  movq %rax, %rdx                    #  14    0x105fa7  3      OPC=movq_r64_r64    
  callq .__libc_disable_asynccancel  #  15    0x105faa  5      OPC=callq_label     
  movq %rdx, %rax                    #  16    0x105faf  3      OPC=movq_r64_r64    
  addq $0x8, %rsp                    #  17    0x105fb2  4      OPC=addq_r64_imm8   
  cmpq $0xfffff001, %rax             #  18    0x105fb6  6      OPC=cmpq_rax_imm32  
  jae .L_105fbf                      #  19    0x105fbc  2      OPC=jae_label       
  retq                               #  20    0x105fbe  1      OPC=retq            
.L_105fbf:                           #        0x105fbf  0      OPC=<label>         
  movq 0x2baeba(%rip), %rcx          #  21    0x105fbf  7      OPC=movq_r64_m64    
  negl %eax                          #  22    0x105fc6  2      OPC=negl_r32        
  movl %eax, (%rcx)                  #  23    0x105fc8  2      OPC=movl_m32_r32    
  nop                                #  24    0x105fca  1      OPC=nop             
  orq $0xff, %rax                    #  25    0x105fcb  4      OPC=orq_r64_imm8    
  retq                               #  26    0x105fcf  1      OPC=retq            
                                                                                   
.size __splice_nocancel, .-__splice_nocancel

