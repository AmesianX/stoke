  .text
  .globl key_decryptsession_GLIBC_2_2_5
  .type key_decryptsession_GLIBC_2_2_5, @function

#! file-offset 0x110e20
#! rip-offset  0x110e20
#! capacity    96 bytes

# Text                            #  Line  RIP       Bytes  Opcode                
.key_decryptsession_GLIBC_2_2_5:  #        0x110e20  0      OPC=<label>           
  pushq %rbx                      #  1     0x110e20  1      OPC=pushq_r64_1       
  leaq -0x5b08(%rip), %rcx        #  2     0x110e21  7      OPC=leaq_r64_m16      
  movq %rsi, %rbx                 #  3     0x110e28  3      OPC=movq_r64_r64      
  subq $0x20, %rsp                #  4     0x110e2b  4      OPC=subq_r64_imm8     
  movq (%rsi), %rax               #  5     0x110e2f  3      OPC=movq_r64_m64      
  leaq -0x5bb9(%rip), %rsi        #  6     0x110e32  7      OPC=leaq_r64_m16      
  leaq 0x10(%rsp), %rdx           #  7     0x110e39  5      OPC=leaq_r64_m16      
  movq %rdi, 0x10(%rsp)           #  8     0x110e3e  5      OPC=movq_m64_r64      
  movq %rsp, %r8                  #  9     0x110e43  3      OPC=movq_r64_r64      
  movl $0x3, %edi                 #  10    0x110e46  5      OPC=movl_r32_imm32    
  movq %rax, 0x18(%rsp)           #  11    0x110e4b  5      OPC=movq_m64_r64      
  callq .key_call_socket          #  12    0x110e50  5      OPC=callq_label       
  testl %eax, %eax                #  13    0x110e55  2      OPC=testl_r32_r32     
  je .L_110e70                    #  14    0x110e57  2      OPC=je_label          
  movl (%rsp), %eax               #  15    0x110e59  3      OPC=movl_r32_m32      
  testl %eax, %eax                #  16    0x110e5c  2      OPC=testl_r32_r32     
  jne .L_110e70                   #  17    0x110e5e  2      OPC=jne_label         
  movq 0x4(%rsp), %rax            #  18    0x110e60  5      OPC=movq_r64_m64      
  movq %rax, (%rbx)               #  19    0x110e65  3      OPC=movq_m64_r64      
  xorl %eax, %eax                 #  20    0x110e68  2      OPC=xorl_r32_r32      
.L_110e6a:                        #        0x110e6a  0      OPC=<label>           
  addq $0x20, %rsp                #  21    0x110e6a  4      OPC=addq_r64_imm8     
  popq %rbx                       #  22    0x110e6e  1      OPC=popq_r64_1        
  retq                            #  23    0x110e6f  1      OPC=retq              
.L_110e70:                        #        0x110e70  0      OPC=<label>           
  movl $0xffffffff, %eax          #  24    0x110e70  6      OPC=movl_r32_imm32_1  
  jmpq .L_110e6a                  #  25    0x110e76  2      OPC=jmpq_label        
  nop                             #  26    0x110e78  1      OPC=nop               
  nop                             #  27    0x110e79  1      OPC=nop               
  nop                             #  28    0x110e7a  1      OPC=nop               
  nop                             #  29    0x110e7b  1      OPC=nop               
  nop                             #  30    0x110e7c  1      OPC=nop               
  nop                             #  31    0x110e7d  1      OPC=nop               
  nop                             #  32    0x110e7e  1      OPC=nop               
  nop                             #  33    0x110e7f  1      OPC=nop               
  nop                             #  34    0x110e80  1      OPC=nop               
                                                                                  
.size key_decryptsession_GLIBC_2_2_5, .-key_decryptsession_GLIBC_2_2_5

