  .text
  .globl __backtrace_symbols_fd
  .type __backtrace_symbols_fd, @function

#! file-offset 0xf3dd0
#! rip-offset  0xf3dd0
#! capacity    832 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__backtrace_symbols_fd:        #        0xf3dd0  0      OPC=<label>         
  testl %esi, %esi              #  1     0xf3dd0  2      OPC=testl_r32_r32   
  jle .L_f4081                  #  2     0xf3dd2  6      OPC=jle_label_1     
  leal -0x1(%rsi), %eax         #  3     0xf3dd8  3      OPC=leal_r32_m16    
  pushq %r15                    #  4     0xf3ddb  2      OPC=pushq_r64_1     
  pushq %r14                    #  5     0xf3ddd  2      OPC=pushq_r64_1     
  pushq %r13                    #  6     0xf3ddf  2      OPC=pushq_r64_1     
  pushq %r12                    #  7     0xf3de1  2      OPC=pushq_r64_1     
  movl %edx, %r15d              #  8     0xf3de3  3      OPC=movl_r32_r32    
  pushq %rbp                    #  9     0xf3de6  1      OPC=pushq_r64_1     
  leaq 0x8(,%rax,8), %rax       #  10    0xf3de7  8      OPC=leaq_r64_m16    
  pushq %rbx                    #  11    0xf3def  1      OPC=pushq_r64_1     
  movq %rdi, %rbx               #  12    0xf3df0  3      OPC=movq_r64_r64    
  subq $0x138, %rsp             #  13    0xf3df3  7      OPC=subq_r64_imm32  
  addq %rdi, %rax               #  14    0xf3dfa  3      OPC=addq_r64_r64    
  movq %rax, 0x8(%rsp)          #  15    0xf3dfd  5      OPC=movq_m64_r64    
  leaq 0x58(%rsp), %rax         #  16    0xf3e02  5      OPC=leaq_r64_m16    
  leaq 0x70(%rsp), %r14         #  17    0xf3e07  5      OPC=leaq_r64_m16    
  movq %rax, 0x18(%rsp)         #  18    0xf3e0c  5      OPC=movq_m64_r64    
  leaq 0x80(%rsp), %rax         #  19    0xf3e11  8      OPC=leaq_r64_m16    
  movq %r14, 0x28(%rsp)         #  20    0xf3e19  5      OPC=movq_m64_r64    
  movq %rax, 0x10(%rsp)         #  21    0xf3e1e  5      OPC=movq_m64_r64    
  leaq 0xa0(%rsp), %rax         #  22    0xf3e23  8      OPC=leaq_r64_m16    
  movq %rax, 0x20(%rsp)         #  23    0xf3e2b  5      OPC=movq_m64_r64    
  leaq 0x80(%rsp), %rax         #  24    0xf3e30  8      OPC=leaq_r64_m16    
  movq %rax, 0x30(%rsp)         #  25    0xf3e38  5      OPC=movq_m64_r64    
  jmpq .L_f4012                 #  26    0xf3e3d  5      OPC=jmpq_label_1    
  nop                           #  27    0xf3e42  1      OPC=nop             
  nop                           #  28    0xf3e43  1      OPC=nop             
  nop                           #  29    0xf3e44  1      OPC=nop             
  nop                           #  30    0xf3e45  1      OPC=nop             
  nop                           #  31    0xf3e46  1      OPC=nop             
  nop                           #  32    0xf3e47  1      OPC=nop             
.L_f3e48:                       #        0xf3e48  0      OPC=<label>         
  movq 0x80(%rsp), %rdi         #  33    0xf3e48  8      OPC=movq_r64_m64    
  testq %rdi, %rdi              #  34    0xf3e50  3      OPC=testq_r64_r64   
  je .L_f402e                   #  35    0xf3e53  6      OPC=je_label_1      
  cmpb $0x0, (%rdi)             #  36    0xf3e59  3      OPC=cmpb_m8_imm8    
  je .L_f402e                   #  37    0xf3e5c  6      OPC=je_label_1      
  movq %rdi, 0xa0(%rsp)         #  38    0xf3e62  8      OPC=movq_m64_r64    
  callq .strlen                 #  39    0xf3e6a  5      OPC=callq_label     
  movq 0x90(%rsp), %rdi         #  40    0xf3e6f  8      OPC=movq_r64_m64    
  movq %rax, 0xa8(%rsp)         #  41    0xf3e77  8      OPC=movq_m64_r64    
  testq %rdi, %rdi              #  42    0xf3e7f  3      OPC=testq_r64_r64   
  je .L_f4088                   #  43    0xf3e82  6      OPC=je_label_1      
  leaq 0x6fcac(%rip), %rax      #  44    0xf3e88  7      OPC=leaq_r64_m16    
  movq $0x1, 0xb8(%rsp)         #  45    0xf3e8f  12     OPC=movq_m64_imm32  
  movq %rdi, 0xc0(%rsp)         #  46    0xf3e9b  8      OPC=movq_m64_r64    
  movl $0x9, %r13d              #  47    0xf3ea3  6      OPC=movl_r32_imm32  
  movl $0x8, %r12d              #  48    0xf3ea9  6      OPC=movl_r32_imm32  
  movl $0x7, %ebp               #  49    0xf3eaf  5      OPC=movl_r32_imm32  
  movq %rax, 0xb0(%rsp)         #  50    0xf3eb4  8      OPC=movq_m64_r64    
  callq .strlen                 #  51    0xf3ebc  5      OPC=callq_label     
  movq %rax, 0xc8(%rsp)         #  52    0xf3ec1  8      OPC=movq_m64_r64    
  movq 0x98(%rsp), %rax         #  53    0xf3ec9  8      OPC=movq_r64_m64    
  movl $0x6, %r8d               #  54    0xf3ed1  6      OPC=movl_r32_imm32  
  movq $0x5, 0x40(%rsp)         #  55    0xf3ed7  9      OPC=movq_m64_imm32  
  movq $0x4, 0x38(%rsp)         #  56    0xf3ee0  9      OPC=movq_m64_imm32  
  movl $0x3, %edx               #  57    0xf3ee9  5      OPC=movl_r32_imm32  
.L_f3eee:                       #        0xf3eee  0      OPC=<label>         
  movq (%rbx), %rdi             #  58    0xf3eee  3      OPC=movq_r64_m64    
  movq %rdx, %rcx               #  59    0xf3ef1  3      OPC=movq_r64_r64    
  shlq $0x4, %rcx               #  60    0xf3ef4  4      OPC=shlq_r64_imm8   
  cmpq %rax, %rdi               #  61    0xf3ef8  3      OPC=cmpq_r64_r64    
  jb .L_f4050                   #  62    0xf3efb  6      OPC=jb_label_1      
  leaq 0x72339(%rip), %rsi      #  63    0xf3f01  7      OPC=leaq_r64_m16    
  subq %rax, %rdi               #  64    0xf3f08  3      OPC=subq_r64_r64    
  movq %rsi, 0xa0(%rsp,%rcx,1)  #  65    0xf3f0b  8      OPC=movq_m64_r64    
.L_f3f13:                       #        0xf3f13  0      OPC=<label>         
  movq 0x30(%rsp), %rsi         #  66    0xf3f13  5      OPC=movq_r64_m64    
  shlq $0x4, %rdx               #  67    0xf3f18  4      OPC=shlq_r64_imm8   
  xorl %ecx, %ecx               #  68    0xf3f1c  2      OPC=xorl_r32_r32    
  movq $0x3, 0xa8(%rsp,%rdx,1)  #  69    0xf3f1e  12     OPC=movq_m64_imm32  
  movl $0x10, %edx              #  70    0xf3f2a  5      OPC=movl_r32_imm32  
  movq %r8, 0x48(%rsp)          #  71    0xf3f2f  5      OPC=movq_m64_r64    
  callq ._itoa_word             #  72    0xf3f34  5      OPC=callq_label     
  movq 0x38(%rsp), %rdx         #  73    0xf3f39  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %rcx         #  74    0xf3f3e  5      OPC=movq_r64_m64    
  movq 0x48(%rsp), %r8          #  75    0xf3f43  5      OPC=movq_r64_m64    
  shlq $0x4, %rdx               #  76    0xf3f48  4      OPC=shlq_r64_imm8   
  subq %rax, %rcx               #  77    0xf3f4c  3      OPC=subq_r64_r64    
  movq %rax, 0xa0(%rsp,%rdx,1)  #  78    0xf3f4f  8      OPC=movq_m64_r64    
  movq 0x40(%rsp), %rax         #  79    0xf3f57  5      OPC=movq_r64_m64    
  movq %rcx, 0xa8(%rsp,%rdx,1)  #  80    0xf3f5c  8      OPC=movq_m64_r64    
  leaq 0x71223(%rip), %rdx      #  81    0xf3f64  7      OPC=leaq_r64_m16    
  shlq $0x4, %rax               #  82    0xf3f6b  4      OPC=shlq_r64_imm8   
  movq %rdx, 0xa0(%rsp,%rax,1)  #  83    0xf3f6f  8      OPC=movq_m64_r64    
  movq $0x1, 0xa8(%rsp,%rax,1)  #  84    0xf3f77  12     OPC=movq_m64_imm32  
  nop                           #  85    0xf3f83  1      OPC=nop             
  nop                           #  86    0xf3f84  1      OPC=nop             
  nop                           #  87    0xf3f85  1      OPC=nop             
  nop                           #  88    0xf3f86  1      OPC=nop             
  nop                           #  89    0xf3f87  1      OPC=nop             
.L_f3f88:                       #        0xf3f88  0      OPC=<label>         
  movq %r8, %rax                #  90    0xf3f88  3      OPC=movq_r64_r64    
  leaq 0x722b7(%rip), %rsi      #  91    0xf3f8b  7      OPC=leaq_r64_m16    
  movq (%rbx), %rdi             #  92    0xf3f92  3      OPC=movq_r64_m64    
  shlq $0x4, %rax               #  93    0xf3f95  4      OPC=shlq_r64_imm8   
  xorl %ecx, %ecx               #  94    0xf3f99  2      OPC=xorl_r32_r32    
  movl $0x10, %edx              #  95    0xf3f9b  5      OPC=movl_r32_imm32  
  movq %rsi, 0xa0(%rsp,%rax,1)  #  96    0xf3fa0  8      OPC=movq_m64_r64    
  movq 0x28(%rsp), %rsi         #  97    0xf3fa8  5      OPC=movq_r64_m64    
  shlq $0x4, %rbp               #  98    0xf3fad  4      OPC=shlq_r64_imm8   
  movq $0x3, 0xa8(%rsp,%rax,1)  #  99    0xf3fb1  12     OPC=movq_m64_imm32  
  shlq $0x4, %r12               #  100   0xf3fbd  4      OPC=shlq_r64_imm8   
  addq $0x8, %rbx               #  101   0xf3fc1  4      OPC=addq_r64_imm8   
  callq ._itoa_word             #  102   0xf3fc5  5      OPC=callq_label     
  movq %r14, %rcx               #  103   0xf3fca  3      OPC=movq_r64_r64    
  movq 0x20(%rsp), %rsi         #  104   0xf3fcd  5      OPC=movq_r64_m64    
  movq %rax, 0xa0(%rsp,%rbp,1)  #  105   0xf3fd2  8      OPC=movq_m64_r64    
  subq %rax, %rcx               #  106   0xf3fda  3      OPC=subq_r64_r64    
  leaq 0x72269(%rip), %rax      #  107   0xf3fdd  7      OPC=leaq_r64_m16    
  movl %r13d, %edx              #  108   0xf3fe4  3      OPC=movl_r32_r32    
  movl %r15d, %edi              #  109   0xf3fe7  3      OPC=movl_r32_r32    
  movq %rcx, 0xa8(%rsp,%rbp,1)  #  110   0xf3fea  8      OPC=movq_m64_r64    
  movq $0x2, 0xa8(%rsp,%r12,1)  #  111   0xf3ff2  12     OPC=movq_m64_imm32  
  movq %rax, 0xa0(%rsp,%r12,1)  #  112   0xf3ffe  8      OPC=movq_m64_r64    
  callq .writev                 #  113   0xf4006  5      OPC=callq_label     
  cmpq 0x8(%rsp), %rbx          #  114   0xf400b  5      OPC=cmpq_r64_m64    
  je .L_f4070                   #  115   0xf4010  2      OPC=je_label        
.L_f4012:                       #        0xf4012  0      OPC=<label>         
  movq 0x18(%rsp), %rdx         #  116   0xf4012  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %rsi         #  117   0xf4017  5      OPC=movq_r64_m64    
  xorl %ecx, %ecx               #  118   0xf401c  2      OPC=xorl_r32_r32    
  movq (%rbx), %rdi             #  119   0xf401e  3      OPC=movq_r64_m64    
  callq ._dl_addr               #  120   0xf4021  5      OPC=callq_label     
  testl %eax, %eax              #  121   0xf4026  2      OPC=testl_r32_r32   
  jne .L_f3e48                  #  122   0xf4028  6      OPC=jne_label_1     
.L_f402e:                       #        0xf402e  0      OPC=<label>         
  movl $0x3, %r13d              #  123   0xf402e  6      OPC=movl_r32_imm32  
  movl $0x2, %r12d              #  124   0xf4034  6      OPC=movl_r32_imm32  
  movl $0x1, %ebp               #  125   0xf403a  5      OPC=movl_r32_imm32  
  xorl %r8d, %r8d               #  126   0xf403f  3      OPC=xorl_r32_r32    
  jmpq .L_f3f88                 #  127   0xf4042  5      OPC=jmpq_label_1    
  nop                           #  128   0xf4047  1      OPC=nop             
  nop                           #  129   0xf4048  1      OPC=nop             
  nop                           #  130   0xf4049  1      OPC=nop             
  nop                           #  131   0xf404a  1      OPC=nop             
  nop                           #  132   0xf404b  1      OPC=nop             
  nop                           #  133   0xf404c  1      OPC=nop             
  nop                           #  134   0xf404d  1      OPC=nop             
  nop                           #  135   0xf404e  1      OPC=nop             
  nop                           #  136   0xf404f  1      OPC=nop             
.L_f4050:                       #        0xf4050  0      OPC=<label>         
  leaq 0x721ee(%rip), %rsi      #  137   0xf4050  7      OPC=leaq_r64_m16    
  subq %rdi, %rax               #  138   0xf4057  3      OPC=subq_r64_r64    
  movq %rax, %rdi               #  139   0xf405a  3      OPC=movq_r64_r64    
  movq %rsi, 0xa0(%rsp,%rcx,1)  #  140   0xf405d  8      OPC=movq_m64_r64    
  jmpq .L_f3f13                 #  141   0xf4065  5      OPC=jmpq_label_1    
  nop                           #  142   0xf406a  1      OPC=nop             
  nop                           #  143   0xf406b  1      OPC=nop             
  nop                           #  144   0xf406c  1      OPC=nop             
  nop                           #  145   0xf406d  1      OPC=nop             
  nop                           #  146   0xf406e  1      OPC=nop             
  nop                           #  147   0xf406f  1      OPC=nop             
.L_f4070:                       #        0xf4070  0      OPC=<label>         
  addq $0x138, %rsp             #  148   0xf4070  7      OPC=addq_r64_imm32  
  popq %rbx                     #  149   0xf4077  1      OPC=popq_r64_1      
  popq %rbp                     #  150   0xf4078  1      OPC=popq_r64_1      
  popq %r12                     #  151   0xf4079  2      OPC=popq_r64_1      
  popq %r13                     #  152   0xf407b  2      OPC=popq_r64_1      
  popq %r14                     #  153   0xf407d  2      OPC=popq_r64_1      
  popq %r15                     #  154   0xf407f  2      OPC=popq_r64_1      
.L_f4081:                       #        0xf4081  0      OPC=<label>         
  retq                          #  155   0xf4081  1      OPC=retq            
  nop                           #  156   0xf4082  1      OPC=nop             
  nop                           #  157   0xf4083  1      OPC=nop             
  nop                           #  158   0xf4084  1      OPC=nop             
  nop                           #  159   0xf4085  1      OPC=nop             
  nop                           #  160   0xf4086  1      OPC=nop             
  nop                           #  161   0xf4087  1      OPC=nop             
.L_f4088:                       #        0xf4088  0      OPC=<label>         
  movq 0x58(%rsp), %rax         #  162   0xf4088  5      OPC=movq_r64_m64    
  movq (%rax), %rax             #  163   0xf408d  3      OPC=movq_r64_m64    
  testq %rax, %rax              #  164   0xf4090  3      OPC=testq_r64_r64   
  je .L_f40f0                   #  165   0xf4093  2      OPC=je_label        
  leaq 0x6fa9f(%rip), %rsi      #  166   0xf4095  7      OPC=leaq_r64_m16    
  movq $0x1, 0xb8(%rsp)         #  167   0xf409c  12     OPC=movq_m64_imm32  
  movq %rax, 0x98(%rsp)         #  168   0xf40a8  8      OPC=movq_m64_r64    
  movl $0x8, %r13d              #  169   0xf40b0  6      OPC=movl_r32_imm32  
  movl $0x7, %r12d              #  170   0xf40b6  6      OPC=movl_r32_imm32  
  movl $0x6, %ebp               #  171   0xf40bc  5      OPC=movl_r32_imm32  
  movq %rsi, 0xb0(%rsp)         #  172   0xf40c1  8      OPC=movq_m64_r64    
  movl $0x5, %r8d               #  173   0xf40c9  6      OPC=movl_r32_imm32  
  movq $0x4, 0x40(%rsp)         #  174   0xf40cf  9      OPC=movq_m64_imm32  
  movq $0x3, 0x38(%rsp)         #  175   0xf40d8  9      OPC=movq_m64_imm32  
  movl $0x2, %edx               #  176   0xf40e1  5      OPC=movl_r32_imm32  
  jmpq .L_f3eee                 #  177   0xf40e6  5      OPC=jmpq_label_1    
  nop                           #  178   0xf40eb  1      OPC=nop             
  nop                           #  179   0xf40ec  1      OPC=nop             
  nop                           #  180   0xf40ed  1      OPC=nop             
  nop                           #  181   0xf40ee  1      OPC=nop             
  nop                           #  182   0xf40ef  1      OPC=nop             
.L_f40f0:                       #        0xf40f0  0      OPC=<label>         
  movl $0x4, %r13d              #  183   0xf40f0  6      OPC=movl_r32_imm32  
  movl $0x3, %r12d              #  184   0xf40f6  6      OPC=movl_r32_imm32  
  movl $0x2, %ebp               #  185   0xf40fc  5      OPC=movl_r32_imm32  
  movl $0x1, %r8d               #  186   0xf4101  6      OPC=movl_r32_imm32  
  jmpq .L_f3f88                 #  187   0xf4107  5      OPC=jmpq_label_1    
  nop                           #  188   0xf410c  1      OPC=nop             
  nop                           #  189   0xf410d  1      OPC=nop             
  nop                           #  190   0xf410e  1      OPC=nop             
  nop                           #  191   0xf410f  1      OPC=nop             
                                                                             
.size __backtrace_symbols_fd, .-__backtrace_symbols_fd
