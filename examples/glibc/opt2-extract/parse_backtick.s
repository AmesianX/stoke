  .text
  .globl parse_backtick
  .type parse_backtick, @function

#! file-offset 0xd4bc0
#! rip-offset  0xd4bc0
#! capacity    384 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.parse_backtick:                 #        0xd4bc0  0      OPC=<label>         
  pushq %r15                     #  1     0xd4bc0  2      OPC=pushq_r64_1     
  pushq %r14                     #  2     0xd4bc2  2      OPC=pushq_r64_1     
  movq %r8, %r14                 #  3     0xd4bc4  3      OPC=movq_r64_r64    
  pushq %r13                     #  4     0xd4bc7  2      OPC=pushq_r64_1     
  pushq %r12                     #  5     0xd4bc9  2      OPC=pushq_r64_1     
  pushq %rbp                     #  6     0xd4bcb  1      OPC=pushq_r64_1     
  pushq %rbx                     #  7     0xd4bcc  1      OPC=pushq_r64_1     
  movq %rcx, %rbx                #  8     0xd4bcd  3      OPC=movq_r64_r64    
  subq $0x48, %rsp               #  9     0xd4bd0  4      OPC=subq_r64_imm8   
  movq (%r8), %rax               #  10    0xd4bd4  3      OPC=movq_r64_m64    
  movq %rdi, (%rsp)              #  11    0xd4bd7  4      OPC=movq_m64_r64    
  movq %rsi, 0x8(%rsp)           #  12    0xd4bdb  5      OPC=movq_m64_r64    
  movq %rdx, 0x10(%rsp)          #  13    0xd4be0  5      OPC=movq_m64_r64    
  movq $0x0, 0x30(%rsp)          #  14    0xd4be5  9      OPC=movq_m64_imm32  
  movsbl (%rcx,%rax,1), %ecx     #  15    0xd4bee  4      OPC=movsbl_r32_m8   
  movq $0x0, 0x28(%rsp)          #  16    0xd4bf2  9      OPC=movq_m64_imm32  
  movq $0x0, 0x38(%rsp)          #  17    0xd4bfb  9      OPC=movq_m64_imm32  
  testb %cl, %cl                 #  18    0xd4c04  2      OPC=testb_r8_r8     
  je .L_d4d36                    #  19    0xd4c06  6      OPC=je_label_1      
  leaq 0x38(%rsp), %rax          #  20    0xd4c0c  5      OPC=leaq_r64_m16    
  leaq 0x30(%rsp), %r13          #  21    0xd4c11  5      OPC=leaq_r64_m16    
  leaq 0x28(%rsp), %r12          #  22    0xd4c16  5      OPC=leaq_r64_m16    
  movl %r9d, %r15d               #  23    0xd4c1b  3      OPC=movl_r32_r32    
  xorl %ebp, %ebp                #  24    0xd4c1e  2      OPC=xorl_r32_r32    
  movq %rax, 0x18(%rsp)          #  25    0xd4c20  5      OPC=movq_m64_r64    
.L_d4c25:                        #        0xd4c25  0      OPC=<label>         
  cmpb $0x5c, %cl                #  26    0xd4c25  3      OPC=cmpb_r8_imm8    
  je .L_d4ce0                    #  27    0xd4c28  6      OPC=je_label_1      
  cmpb $0x60, %cl                #  28    0xd4c2e  3      OPC=cmpb_r8_imm8    
  je .L_d4c88                    #  29    0xd4c31  2      OPC=je_label        
  cmpb $0x27, %cl                #  30    0xd4c33  3      OPC=cmpb_r8_imm8    
  jne .L_d4c41                   #  31    0xd4c36  2      OPC=jne_label       
  movl $0x1, %eax                #  32    0xd4c38  5      OPC=movl_r32_imm32  
  subl %ebp, %eax                #  33    0xd4c3d  2      OPC=subl_r32_r32    
  movl %eax, %ebp                #  34    0xd4c3f  2      OPC=movl_r32_r32    
.L_d4c41:                        #        0xd4c41  0      OPC=<label>         
  movq 0x38(%rsp), %rdi          #  35    0xd4c41  5      OPC=movq_r64_m64    
  movq %r13, %rdx                #  36    0xd4c46  3      OPC=movq_r64_r64    
  movq %r12, %rsi                #  37    0xd4c49  3      OPC=movq_r64_r64    
  callq .w_addchar               #  38    0xd4c4c  5      OPC=callq_label     
  testq %rax, %rax               #  39    0xd4c51  3      OPC=testq_r64_r64   
  movq %rax, 0x38(%rsp)          #  40    0xd4c54  5      OPC=movq_m64_r64    
  je .L_d4d2f                    #  41    0xd4c59  6      OPC=je_label_1      
.L_d4c5f:                        #        0xd4c5f  0      OPC=<label>         
  movq (%r14), %rax              #  42    0xd4c5f  3      OPC=movq_r64_m64    
  leaq 0x1(%rax), %rdx           #  43    0xd4c62  4      OPC=leaq_r64_m16    
  movq %rdx, (%r14)              #  44    0xd4c66  3      OPC=movq_m64_r64    
  movsbl 0x1(%rbx,%rax,1), %ecx  #  45    0xd4c69  5      OPC=movsbl_r32_m8   
  testb %cl, %cl                 #  46    0xd4c6e  2      OPC=testb_r8_r8     
  jne .L_d4c25                   #  47    0xd4c70  2      OPC=jne_label       
  movq 0x38(%rsp), %rdi          #  48    0xd4c72  5      OPC=movq_r64_m64    
.L_d4c77:                        #        0xd4c77  0      OPC=<label>         
  callq .L_1f8c0                 #  49    0xd4c77  5      OPC=callq_label     
  movl $0x5, %eax                #  50    0xd4c7c  5      OPC=movl_r32_imm32  
  jmpq .L_d4cca                  #  51    0xd4c81  2      OPC=jmpq_label      
  nop                            #  52    0xd4c83  1      OPC=nop             
  nop                            #  53    0xd4c84  1      OPC=nop             
  nop                            #  54    0xd4c85  1      OPC=nop             
  nop                            #  55    0xd4c86  1      OPC=nop             
  nop                            #  56    0xd4c87  1      OPC=nop             
.L_d4c88:                        #        0xd4c88  0      OPC=<label>         
  pushq 0x90(%rsp)               #  57    0xd4c88  7      OPC=pushq_m64       
  pushq 0x90(%rsp)               #  58    0xd4c8f  7      OPC=pushq_m64       
  movl %r15d, %r8d               #  59    0xd4c96  3      OPC=movl_r32_r32    
  movq 0x90(%rsp), %r9           #  60    0xd4c99  8      OPC=movq_r64_m64    
  movq 0x20(%rsp), %rcx          #  61    0xd4ca1  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %rdx          #  62    0xd4ca6  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %rsi          #  63    0xd4cab  5      OPC=movq_r64_m64    
  movq 0x48(%rsp), %rdi          #  64    0xd4cb0  5      OPC=movq_r64_m64    
  callq .exec_comm               #  65    0xd4cb5  5      OPC=callq_label     
  movq 0x48(%rsp), %rdi          #  66    0xd4cba  5      OPC=movq_r64_m64    
  movl %eax, %ebx                #  67    0xd4cbf  2      OPC=movl_r32_r32    
  callq .L_1f8c0                 #  68    0xd4cc1  5      OPC=callq_label     
  popq %rax                      #  69    0xd4cc6  1      OPC=popq_r64_1      
  popq %rdx                      #  70    0xd4cc7  1      OPC=popq_r64_1      
  movl %ebx, %eax                #  71    0xd4cc8  2      OPC=movl_r32_r32    
.L_d4cca:                        #        0xd4cca  0      OPC=<label>         
  addq $0x48, %rsp               #  72    0xd4cca  4      OPC=addq_r64_imm8   
  popq %rbx                      #  73    0xd4cce  1      OPC=popq_r64_1      
  popq %rbp                      #  74    0xd4ccf  1      OPC=popq_r64_1      
  popq %r12                      #  75    0xd4cd0  2      OPC=popq_r64_1      
  popq %r13                      #  76    0xd4cd2  2      OPC=popq_r64_1      
  popq %r14                      #  77    0xd4cd4  2      OPC=popq_r64_1      
  popq %r15                      #  78    0xd4cd6  2      OPC=popq_r64_1      
  retq                           #  79    0xd4cd8  1      OPC=retq            
  nop                            #  80    0xd4cd9  1      OPC=nop             
  nop                            #  81    0xd4cda  1      OPC=nop             
  nop                            #  82    0xd4cdb  1      OPC=nop             
  nop                            #  83    0xd4cdc  1      OPC=nop             
  nop                            #  84    0xd4cdd  1      OPC=nop             
  nop                            #  85    0xd4cde  1      OPC=nop             
  nop                            #  86    0xd4cdf  1      OPC=nop             
.L_d4ce0:                        #        0xd4ce0  0      OPC=<label>         
  testl %ebp, %ebp               #  87    0xd4ce0  2      OPC=testl_r32_r32   
  movq %r14, %r8                 #  88    0xd4ce2  3      OPC=movq_r64_r64    
  movq %rbx, %rcx                #  89    0xd4ce5  3      OPC=movq_r64_r64    
  movq %r13, %rdx                #  90    0xd4ce8  3      OPC=movq_r64_r64    
  movq %r12, %rsi                #  91    0xd4ceb  3      OPC=movq_r64_r64    
  movq 0x18(%rsp), %rdi          #  92    0xd4cee  5      OPC=movq_r64_m64    
  je .L_d4d10                    #  93    0xd4cf3  2      OPC=je_label        
  callq .parse_qtd_backslash     #  94    0xd4cf5  5      OPC=callq_label     
  testl %eax, %eax               #  95    0xd4cfa  2      OPC=testl_r32_r32   
  jne .L_d4d1d                   #  96    0xd4cfc  2      OPC=jne_label       
  movl $0x1, %ebp                #  97    0xd4cfe  5      OPC=movl_r32_imm32  
  jmpq .L_d4c5f                  #  98    0xd4d03  5      OPC=jmpq_label_1    
  nop                            #  99    0xd4d08  1      OPC=nop             
  nop                            #  100   0xd4d09  1      OPC=nop             
  nop                            #  101   0xd4d0a  1      OPC=nop             
  nop                            #  102   0xd4d0b  1      OPC=nop             
  nop                            #  103   0xd4d0c  1      OPC=nop             
  nop                            #  104   0xd4d0d  1      OPC=nop             
  nop                            #  105   0xd4d0e  1      OPC=nop             
  nop                            #  106   0xd4d0f  1      OPC=nop             
.L_d4d10:                        #        0xd4d10  0      OPC=<label>         
  callq .parse_backslash         #  107   0xd4d10  5      OPC=callq_label     
  testl %eax, %eax               #  108   0xd4d15  2      OPC=testl_r32_r32   
  je .L_d4c5f                    #  109   0xd4d17  6      OPC=je_label_1      
.L_d4d1d:                        #        0xd4d1d  0      OPC=<label>         
  movq 0x38(%rsp), %rdi          #  110   0xd4d1d  5      OPC=movq_r64_m64    
  movl %eax, (%rsp)              #  111   0xd4d22  3      OPC=movl_m32_r32    
  callq .L_1f8c0                 #  112   0xd4d25  5      OPC=callq_label     
  movl (%rsp), %eax              #  113   0xd4d2a  3      OPC=movl_r32_m32    
  jmpq .L_d4cca                  #  114   0xd4d2d  2      OPC=jmpq_label      
.L_d4d2f:                        #        0xd4d2f  0      OPC=<label>         
  movl $0x1, %eax                #  115   0xd4d2f  5      OPC=movl_r32_imm32  
  jmpq .L_d4cca                  #  116   0xd4d34  2      OPC=jmpq_label      
.L_d4d36:                        #        0xd4d36  0      OPC=<label>         
  xorl %edi, %edi                #  117   0xd4d36  2      OPC=xorl_r32_r32    
  jmpq .L_d4c77                  #  118   0xd4d38  5      OPC=jmpq_label_1    
  nop                            #  119   0xd4d3d  1      OPC=nop             
  nop                            #  120   0xd4d3e  1      OPC=nop             
  nop                            #  121   0xd4d3f  1      OPC=nop             
                                                                              
.size parse_backtick, .-parse_backtick
