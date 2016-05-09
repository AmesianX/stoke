  .text
  .globl merge_state_with_log
  .type merge_state_with_log, @function

#! file-offset 0xc7320
#! rip-offset  0xc7320
#! capacity    480 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.merge_state_with_log:              #        0xc7320  0      OPC=<label>         
  pushq %r15                        #  1     0xc7320  2      OPC=pushq_r64_1     
  pushq %r14                        #  2     0xc7322  2      OPC=pushq_r64_1     
  pushq %r13                        #  3     0xc7324  2      OPC=pushq_r64_1     
  pushq %r12                        #  4     0xc7326  2      OPC=pushq_r64_1     
  movq %rdi, %r13                   #  5     0xc7328  3      OPC=movq_r64_r64    
  pushq %rbp                        #  6     0xc732b  1      OPC=pushq_r64_1     
  pushq %rbx                        #  7     0xc732c  1      OPC=pushq_r64_1     
  movq %rsi, %rbp                   #  8     0xc732d  3      OPC=movq_r64_r64    
  movq %rdx, %rbx                   #  9     0xc7330  3      OPC=movq_r64_r64    
  subq $0x28, %rsp                  #  10    0xc7333  4      OPC=subq_r64_imm8   
  movl 0x38(%rsi), %r8d             #  11    0xc7337  4      OPC=movl_r32_m32    
  cmpl 0x90(%rsi), %r8d             #  12    0xc733b  7      OPC=cmpl_r32_m32    
  movq 0x70(%rsi), %r12             #  13    0xc7342  4      OPC=movq_r64_m64    
  movslq %r8d, %r14                 #  14    0xc7346  3      OPC=movslq_r64_r32  
  jle .L_c73b0                      #  15    0xc7349  2      OPC=jle_label       
  movq 0x88(%rsi), %rax             #  16    0xc734b  7      OPC=movq_r64_m64    
  movq %rdx, (%rax,%r14,8)          #  17    0xc7352  4      OPC=movq_m64_r64    
  movl %r8d, 0x90(%rsi)             #  18    0xc7356  7      OPC=movl_m32_r32    
.L_c735d:                           #        0xc735d  0      OPC=<label>         
  movl 0x8c(%r12), %eax             #  19    0xc735d  8      OPC=movl_r32_m32    
  testl %eax, %eax                  #  20    0xc7365  2      OPC=testl_r32_r32   
  je .L_c739a                       #  21    0xc7367  2      OPC=je_label        
  testq %rbx, %rbx                  #  22    0xc7369  3      OPC=testq_r64_r64   
  je .L_c7478                       #  23    0xc736c  6      OPC=je_label_1      
  leaq 0x8(%rbx), %r12              #  24    0xc7372  4      OPC=leaq_r64_m16    
  movl %r8d, %edx                   #  25    0xc7376  3      OPC=movl_r32_r32    
  movq %rbp, %rdi                   #  26    0xc7379  3      OPC=movq_r64_r64    
  movq %r12, %rsi                   #  27    0xc737c  3      OPC=movq_r64_r64    
  callq .check_subexp_matching_top  #  28    0xc737f  5      OPC=callq_label     
  testl %eax, %eax                  #  29    0xc7384  2      OPC=testl_r32_r32   
  movl %eax, (%r13)                 #  30    0xc7386  4      OPC=movl_m32_r32    
  jne .L_c7478                      #  31    0xc738a  6      OPC=jne_label_1     
  testb $0x40, 0x50(%rbx)           #  32    0xc7390  4      OPC=testb_m8_imm8   
  jne .L_c7480                      #  33    0xc7394  6      OPC=jne_label_1     
.L_c739a:                           #        0xc739a  0      OPC=<label>         
  addq $0x28, %rsp                  #  34    0xc739a  4      OPC=addq_r64_imm8   
  movq %rbx, %rax                   #  35    0xc739e  3      OPC=movq_r64_r64    
  popq %rbx                         #  36    0xc73a1  1      OPC=popq_r64_1      
  popq %rbp                         #  37    0xc73a2  1      OPC=popq_r64_1      
  popq %r12                         #  38    0xc73a3  2      OPC=popq_r64_1      
  popq %r13                         #  39    0xc73a5  2      OPC=popq_r64_1      
  popq %r14                         #  40    0xc73a7  2      OPC=popq_r64_1      
  popq %r15                         #  41    0xc73a9  2      OPC=popq_r64_1      
  retq                              #  42    0xc73ab  1      OPC=retq            
  nop                               #  43    0xc73ac  1      OPC=nop             
  nop                               #  44    0xc73ad  1      OPC=nop             
  nop                               #  45    0xc73ae  1      OPC=nop             
  nop                               #  46    0xc73af  1      OPC=nop             
.L_c73b0:                           #        0xc73b0  0      OPC=<label>         
  leaq (,%r14,8), %r9               #  47    0xc73b0  8      OPC=leaq_r64_m16    
  movq %r9, %r15                    #  48    0xc73b8  3      OPC=movq_r64_r64    
  addq 0x88(%rsi), %r15             #  49    0xc73bb  7      OPC=addq_r64_m64    
  movq (%r15), %rax                 #  50    0xc73c2  3      OPC=movq_r64_m64    
  testq %rax, %rax                  #  51    0xc73c5  3      OPC=testq_r64_r64   
  je .L_c74a8                       #  52    0xc73c8  6      OPC=je_label_1      
  testq %rbx, %rbx                  #  53    0xc73ce  3      OPC=testq_r64_r64   
  movq %r9, (%rsp)                  #  54    0xc73d1  4      OPC=movq_m64_r64    
  movq 0x38(%rax), %rdx             #  55    0xc73d5  4      OPC=movq_r64_m64    
  je .L_c74b0                       #  56    0xc73d9  6      OPC=je_label_1      
  movq 0x38(%rbx), %r15             #  57    0xc73df  4      OPC=movq_r64_m64    
  leaq 0x10(%rsp), %rbx             #  58    0xc73e3  5      OPC=leaq_r64_m16    
  movl %r8d, 0xc(%rsp)              #  59    0xc73e8  5      OPC=movl_m32_r32    
  movq %rbx, %rdi                   #  60    0xc73ed  3      OPC=movq_r64_r64    
  movq %r15, %rsi                   #  61    0xc73f0  3      OPC=movq_r64_r64    
  callq .re_node_set_init_union     #  62    0xc73f3  5      OPC=callq_label     
  testl %eax, %eax                  #  63    0xc73f8  2      OPC=testl_r32_r32   
  movl %eax, (%r13)                 #  64    0xc73fa  4      OPC=movl_m32_r32    
  movl 0xc(%rsp), %r8d              #  65    0xc73fe  5      OPC=movl_r32_m32    
  movq (%rsp), %r9                  #  66    0xc7403  4      OPC=movq_r64_m64    
  jne .L_c7478                      #  67    0xc7407  2      OPC=jne_label       
  movl 0x38(%rbp), %eax             #  68    0xc7409  3      OPC=movl_r32_m32    
  movl 0x78(%rbp), %edx             #  69    0xc740c  3      OPC=movl_r32_m32    
  movq %rbp, %rdi                   #  70    0xc740f  3      OPC=movq_r64_r64    
  movl %r8d, 0xc(%rsp)              #  71    0xc7412  5      OPC=movl_m32_r32    
  movq %r9, (%rsp)                  #  72    0xc7417  4      OPC=movq_m64_r64    
  leal -0x1(%rax), %esi             #  73    0xc741b  3      OPC=leal_r32_m16    
  callq .re_string_context_at       #  74    0xc741e  5      OPC=callq_label     
  movq (%rsp), %r9                  #  75    0xc7423  4      OPC=movq_r64_m64    
  addq 0x88(%rbp), %r9              #  76    0xc7427  7      OPC=addq_r64_m64    
  movq %rbx, %rdx                   #  77    0xc742e  3      OPC=movq_r64_r64    
  movl %eax, %ecx                   #  78    0xc7431  2      OPC=movl_r32_r32    
  movq %r12, %rsi                   #  79    0xc7433  3      OPC=movq_r64_r64    
  movq %r13, %rdi                   #  80    0xc7436  3      OPC=movq_r64_r64    
  movq %r9, (%rsp)                  #  81    0xc7439  4      OPC=movq_m64_r64    
  callq .re_acquire_state_context   #  82    0xc743d  5      OPC=callq_label     
  movq (%rsp), %r9                  #  83    0xc7442  4      OPC=movq_r64_m64    
  testq %r15, %r15                  #  84    0xc7446  3      OPC=testq_r64_r64   
  movq %rax, %rbx                   #  85    0xc7449  3      OPC=movq_r64_r64    
  movl 0xc(%rsp), %r8d              #  86    0xc744c  5      OPC=movl_r32_m32    
  movq %rax, (%r9)                  #  87    0xc7451  3      OPC=movq_m64_r64    
  je .L_c735d                       #  88    0xc7454  6      OPC=je_label_1      
  movq 0x18(%rsp), %rdi             #  89    0xc745a  5      OPC=movq_r64_m64    
  movl %r8d, (%rsp)                 #  90    0xc745f  4      OPC=movl_m32_r32    
  callq .L_1f8c0                    #  91    0xc7463  5      OPC=callq_label     
  movl (%rsp), %r8d                 #  92    0xc7468  4      OPC=movl_r32_m32    
  jmpq .L_c735d                     #  93    0xc746c  5      OPC=jmpq_label_1    
  nop                               #  94    0xc7471  1      OPC=nop             
  nop                               #  95    0xc7472  1      OPC=nop             
  nop                               #  96    0xc7473  1      OPC=nop             
  nop                               #  97    0xc7474  1      OPC=nop             
  nop                               #  98    0xc7475  1      OPC=nop             
  nop                               #  99    0xc7476  1      OPC=nop             
  nop                               #  100   0xc7477  1      OPC=nop             
.L_c7478:                           #        0xc7478  0      OPC=<label>         
  xorl %ebx, %ebx                   #  101   0xc7478  2      OPC=xorl_r32_r32    
  jmpq .L_c739a                     #  102   0xc747a  5      OPC=jmpq_label_1    
  nop                               #  103   0xc747f  1      OPC=nop             
.L_c7480:                           #        0xc7480  0      OPC=<label>         
  movq %r12, %rsi                   #  104   0xc7480  3      OPC=movq_r64_r64    
  movq %rbp, %rdi                   #  105   0xc7483  3      OPC=movq_r64_r64    
  callq .transit_state_bkref        #  106   0xc7486  5      OPC=callq_label     
  testl %eax, %eax                  #  107   0xc748b  2      OPC=testl_r32_r32   
  movl %eax, (%r13)                 #  108   0xc748d  4      OPC=movl_m32_r32    
  jne .L_c7478                      #  109   0xc7491  2      OPC=jne_label       
  movq 0x88(%rbp), %rax             #  110   0xc7493  7      OPC=movq_r64_m64    
  movq (%rax,%r14,8), %rbx          #  111   0xc749a  4      OPC=movq_r64_m64    
  jmpq .L_c739a                     #  112   0xc749e  5      OPC=jmpq_label_1    
  nop                               #  113   0xc74a3  1      OPC=nop             
  nop                               #  114   0xc74a4  1      OPC=nop             
  nop                               #  115   0xc74a5  1      OPC=nop             
  nop                               #  116   0xc74a6  1      OPC=nop             
  nop                               #  117   0xc74a7  1      OPC=nop             
.L_c74a8:                           #        0xc74a8  0      OPC=<label>         
  movq %rdx, (%r15)                 #  118   0xc74a8  3      OPC=movq_m64_r64    
  jmpq .L_c735d                     #  119   0xc74ab  5      OPC=jmpq_label_1    
.L_c74b0:                           #        0xc74b0  0      OPC=<label>         
  movq (%rdx), %rax                 #  120   0xc74b0  3      OPC=movq_r64_m64    
  movq 0x8(%rdx), %rdx              #  121   0xc74b3  4      OPC=movq_r64_m64    
  movq %rbp, %rdi                   #  122   0xc74b7  3      OPC=movq_r64_r64    
  movl %r8d, (%rsp)                 #  123   0xc74ba  4      OPC=movl_m32_r32    
  movq %rdx, 0x18(%rsp)             #  124   0xc74be  5      OPC=movq_m64_r64    
  movl 0x78(%rsi), %edx             #  125   0xc74c3  3      OPC=movl_r32_m32    
  leal -0x1(%r8), %esi              #  126   0xc74c6  4      OPC=leal_r32_m16    
  movq %rax, 0x10(%rsp)             #  127   0xc74ca  5      OPC=movq_m64_r64    
  callq .re_string_context_at       #  128   0xc74cf  5      OPC=callq_label     
  leaq 0x10(%rsp), %rdx             #  129   0xc74d4  5      OPC=leaq_r64_m16    
  movl %eax, %ecx                   #  130   0xc74d9  2      OPC=movl_r32_r32    
  movq %r12, %rsi                   #  131   0xc74db  3      OPC=movq_r64_r64    
  movq %r13, %rdi                   #  132   0xc74de  3      OPC=movq_r64_r64    
  callq .re_acquire_state_context   #  133   0xc74e1  5      OPC=callq_label     
  movl (%rsp), %r8d                 #  134   0xc74e6  4      OPC=movl_r32_m32    
  movq %rax, %rbx                   #  135   0xc74ea  3      OPC=movq_r64_r64    
  movq %rax, (%r15)                 #  136   0xc74ed  3      OPC=movq_m64_r64    
  jmpq .L_c735d                     #  137   0xc74f0  5      OPC=jmpq_label_1    
  nop                               #  138   0xc74f5  1      OPC=nop             
  nop                               #  139   0xc74f6  1      OPC=nop             
  nop                               #  140   0xc74f7  1      OPC=nop             
  nop                               #  141   0xc74f8  1      OPC=nop             
  nop                               #  142   0xc74f9  1      OPC=nop             
  nop                               #  143   0xc74fa  1      OPC=nop             
  nop                               #  144   0xc74fb  1      OPC=nop             
  nop                               #  145   0xc74fc  1      OPC=nop             
  nop                               #  146   0xc74fd  1      OPC=nop             
  nop                               #  147   0xc74fe  1      OPC=nop             
  nop                               #  148   0xc74ff  1      OPC=nop             
                                                                                 
.size merge_state_with_log, .-merge_state_with_log
