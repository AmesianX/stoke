  .text
  .globl __GI___nss_rpc_lookup2
  .type __GI___nss_rpc_lookup2, @function

#! file-offset 0x129280
#! rip-offset  0x129280
#! capacity    128 bytes

# Text                          #  Line  RIP       Bytes  Opcode                
.__GI___nss_rpc_lookup2:        #        0x129280  0      OPC=<label>           
  pushq %r13                    #  1     0x129280  2      OPC=pushq_r64_1       
  pushq %r12                    #  2     0x129282  2      OPC=pushq_r64_1       
  movq %rcx, %r13               #  3     0x129284  3      OPC=movq_r64_r64      
  pushq %rbp                    #  4     0x129287  1      OPC=pushq_r64_1       
  pushq %rbx                    #  5     0x129288  1      OPC=pushq_r64_1       
  movq %rsi, %rbp               #  6     0x129289  3      OPC=movq_r64_r64      
  movq %rdi, %rbx               #  7     0x12928c  3      OPC=movq_r64_r64      
  movq %rdx, %r12               #  8     0x12928f  3      OPC=movq_r64_r64      
  subq $0x8, %rsp               #  9     0x129292  4      OPC=subq_r64_imm8     
  movq 0x29da5b(%rip), %rax     #  10    0x129296  7      OPC=movq_r64_m64      
  testq %rax, %rax              #  11    0x12929d  3      OPC=testq_r64_r64     
  je .L_1292c0                  #  12    0x1292a0  2      OPC=je_label          
.L_1292a2:                      #        0x1292a2  0      OPC=<label>           
  movq %rax, (%rbx)             #  13    0x1292a2  3      OPC=movq_m64_r64      
  addq $0x8, %rsp               #  14    0x1292a5  4      OPC=addq_r64_imm8     
  movq %r13, %rcx               #  15    0x1292a9  3      OPC=movq_r64_r64      
  movq %r12, %rdx               #  16    0x1292ac  3      OPC=movq_r64_r64      
  movq %rbp, %rsi               #  17    0x1292af  3      OPC=movq_r64_r64      
  movq %rbx, %rdi               #  18    0x1292b2  3      OPC=movq_r64_r64      
  popq %rbx                     #  19    0x1292b5  1      OPC=popq_r64_1        
  popq %rbp                     #  20    0x1292b6  1      OPC=popq_r64_1        
  popq %r12                     #  21    0x1292b7  2      OPC=popq_r64_1        
  popq %r13                     #  22    0x1292b9  2      OPC=popq_r64_1        
  jmpq .__nss_lookup            #  23    0x1292bb  5      OPC=jmpq_label_1      
.L_1292c0:                      #        0x1292c0  0      OPC=<label>           
  leaq 0x29da31(%rip), %rcx     #  24    0x1292c0  7      OPC=leaq_r64_m16      
  leaq 0x644c0(%rip), %rdi      #  25    0x1292c7  7      OPC=leaq_r64_m16      
  xorl %edx, %edx               #  26    0x1292ce  2      OPC=xorl_r32_r32      
  xorl %esi, %esi               #  27    0x1292d0  2      OPC=xorl_r32_r32      
  callq .__nss_database_lookup  #  28    0x1292d2  5      OPC=callq_label       
  testl %eax, %eax              #  29    0x1292d7  2      OPC=testl_r32_r32     
  js .L_1292e4                  #  30    0x1292d9  2      OPC=js_label          
  movq 0x29da16(%rip), %rax     #  31    0x1292db  7      OPC=movq_r64_m64      
  jmpq .L_1292a2                #  32    0x1292e2  2      OPC=jmpq_label        
.L_1292e4:                      #        0x1292e4  0      OPC=<label>           
  addq $0x8, %rsp               #  33    0x1292e4  4      OPC=addq_r64_imm8     
  movl $0xffffffff, %eax        #  34    0x1292e8  6      OPC=movl_r32_imm32_1  
  popq %rbx                     #  35    0x1292ee  1      OPC=popq_r64_1        
  popq %rbp                     #  36    0x1292ef  1      OPC=popq_r64_1        
  popq %r12                     #  37    0x1292f0  2      OPC=popq_r64_1        
  popq %r13                     #  38    0x1292f2  2      OPC=popq_r64_1        
  retq                          #  39    0x1292f4  1      OPC=retq              
  nop                           #  40    0x1292f5  1      OPC=nop               
  nop                           #  41    0x1292f6  1      OPC=nop               
  nop                           #  42    0x1292f7  1      OPC=nop               
  nop                           #  43    0x1292f8  1      OPC=nop               
  nop                           #  44    0x1292f9  1      OPC=nop               
  nop                           #  45    0x1292fa  1      OPC=nop               
  nop                           #  46    0x1292fb  1      OPC=nop               
  nop                           #  47    0x1292fc  1      OPC=nop               
  nop                           #  48    0x1292fd  1      OPC=nop               
  nop                           #  49    0x1292fe  1      OPC=nop               
  xchgw %ax, %ax                #  50    0x1292ff  2      OPC=xchgw_ax_r16      
                                                                                
.size __GI___nss_rpc_lookup2, .-__GI___nss_rpc_lookup2

