  .text
  .globl _IO_popen__GLIBC_2_2_5
  .type _IO_popen__GLIBC_2_2_5, @function

#! file-offset 0x6e280
#! rip-offset  0x6e280
#! capacity    144 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._IO_popen__GLIBC_2_2_5:             #        0x6e280  0      OPC=<label>         
  pushq %r12                         #  1     0x6e280  2      OPC=pushq_r64_1     
  pushq %rbp                         #  2     0x6e282  1      OPC=pushq_r64_1     
  movq %rdi, %rbp                    #  3     0x6e283  3      OPC=movq_r64_r64    
  pushq %rbx                         #  4     0x6e286  1      OPC=pushq_r64_1     
  movl $0x100, %edi                  #  5     0x6e287  5      OPC=movl_r32_imm32  
  movq %rsi, %r12                    #  6     0x6e28c  3      OPC=movq_r64_r64    
  subq $0x10, %rsp                   #  7     0x6e28f  4      OPC=subq_r64_imm8   
  callq .memalign_plt                #  8     0x6e293  5      OPC=callq_label     
  testq %rax, %rax                   #  9     0x6e298  3      OPC=testq_r64_r64   
  movq %rax, %rbx                    #  10    0x6e29b  3      OPC=movq_r64_r64    
  je .L_6e2f0                        #  11    0x6e29e  2      OPC=je_label        
  leaq 0xf0(%rax), %rax              #  12    0x6e2a0  7      OPC=leaq_r64_m16    
  xorl %esi, %esi                    #  13    0x6e2a7  2      OPC=xorl_r32_r32    
  movq %rbx, %rdi                    #  14    0x6e2a9  3      OPC=movq_r64_r64    
  movq %rax, 0x88(%rbx)              #  15    0x6e2ac  7      OPC=movq_m64_r64    
  callq ._IO_init                    #  16    0x6e2b3  5      OPC=callq_label     
  leaq 0x351d41(%rip), %rax          #  17    0x6e2b8  7      OPC=leaq_r64_m16    
  movq %rbx, %rdi                    #  18    0x6e2bf  3      OPC=movq_r64_r64    
  movq %rax, 0xd8(%rbx)              #  19    0x6e2c2  7      OPC=movq_m64_r64    
  callq ._IO_file_init__GLIBC_2_2_5  #  20    0x6e2c9  5      OPC=callq_label     
  movq %r12, %rdx                    #  21    0x6e2ce  3      OPC=movq_r64_r64    
  movq %rbp, %rsi                    #  22    0x6e2d1  3      OPC=movq_r64_r64    
  movq %rbx, %rdi                    #  23    0x6e2d4  3      OPC=movq_r64_r64    
  callq ._IO_proc_open__GLIBC_2_2_5  #  24    0x6e2d7  5      OPC=callq_label     
  testq %rax, %rax                   #  25    0x6e2dc  3      OPC=testq_r64_r64   
  je .L_6e2f4                        #  26    0x6e2df  2      OPC=je_label        
  movq %rbx, %rax                    #  27    0x6e2e1  3      OPC=movq_r64_r64    
.L_6e2e4:                            #        0x6e2e4  0      OPC=<label>         
  addq $0x10, %rsp                   #  28    0x6e2e4  4      OPC=addq_r64_imm8   
  popq %rbx                          #  29    0x6e2e8  1      OPC=popq_r64_1      
  popq %rbp                          #  30    0x6e2e9  1      OPC=popq_r64_1      
  popq %r12                          #  31    0x6e2ea  2      OPC=popq_r64_1      
  retq                               #  32    0x6e2ec  1      OPC=retq            
  nop                                #  33    0x6e2ed  1      OPC=nop             
  nop                                #  34    0x6e2ee  1      OPC=nop             
  nop                                #  35    0x6e2ef  1      OPC=nop             
.L_6e2f0:                            #        0x6e2f0  0      OPC=<label>         
  xorl %eax, %eax                    #  36    0x6e2f0  2      OPC=xorl_r32_r32    
  jmpq .L_6e2e4                      #  37    0x6e2f2  2      OPC=jmpq_label      
.L_6e2f4:                            #        0x6e2f4  0      OPC=<label>         
  movq %rbx, %rdi                    #  38    0x6e2f4  3      OPC=movq_r64_r64    
  movq %rax, 0x8(%rsp)               #  39    0x6e2f7  5      OPC=movq_m64_r64    
  callq ._IO_un_link                 #  40    0x6e2fc  5      OPC=callq_label     
  movq %rbx, %rdi                    #  41    0x6e301  3      OPC=movq_r64_r64    
  callq .L_1f8c0                     #  42    0x6e304  5      OPC=callq_label     
  movq 0x8(%rsp), %rax               #  43    0x6e309  5      OPC=movq_r64_m64    
  jmpq .L_6e2e4                      #  44    0x6e30e  2      OPC=jmpq_label      
                                                                                  
.size _IO_popen__GLIBC_2_2_5, .-_IO_popen__GLIBC_2_2_5

