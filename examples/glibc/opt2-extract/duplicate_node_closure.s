  .text
  .globl duplicate_node_closure
  .type duplicate_node_closure, @function

#! file-offset 0xbf9d0
#! rip-offset  0xbf9d0
#! capacity    656 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.duplicate_node_closure:         #        0xbf9d0  0      OPC=<label>         
  pushq %r15                     #  1     0xbf9d0  2      OPC=pushq_r64_1     
  pushq %r14                     #  2     0xbf9d2  2      OPC=pushq_r64_1     
  movq %rdi, %r14                #  3     0xbf9d4  3      OPC=movq_r64_r64    
  pushq %r13                     #  4     0xbf9d7  2      OPC=pushq_r64_1     
  pushq %r12                     #  5     0xbf9d9  2      OPC=pushq_r64_1     
  movl %esi, %r13d               #  6     0xbf9db  3      OPC=movl_r32_r32    
  pushq %rbp                     #  7     0xbf9de  1      OPC=pushq_r64_1     
  pushq %rbx                     #  8     0xbf9df  1      OPC=pushq_r64_1     
  movl %edx, %r12d               #  9     0xbf9e0  3      OPC=movl_r32_r32    
  movl %r8d, %ebx                #  10    0xbf9e3  3      OPC=movl_r32_r32    
  subq $0x18, %rsp               #  11    0xbf9e6  4      OPC=subq_r64_imm8   
  movl %ecx, 0x4(%rsp)           #  12    0xbf9ea  4      OPC=movl_m32_r32    
  xchgw %ax, %ax                 #  13    0xbf9ee  2      OPC=xchgw_ax_r16    
.L_bf9f0:                        #        0xbf9f0  0      OPC=<label>         
  movq (%r14), %rcx              #  14    0xbf9f0  3      OPC=movq_r64_m64    
  movslq %r13d, %rbp             #  15    0xbf9f3  3      OPC=movslq_r64_r32  
  movq %rbp, %r15                #  16    0xbf9f6  3      OPC=movq_r64_r64    
  shlq $0x4, %r15                #  17    0xbf9f9  4      OPC=shlq_r64_imm8   
  leaq (%rcx,%r15,1), %r8        #  18    0xbf9fd  4      OPC=leaq_r64_m16    
  cmpb $0x4, 0x8(%r8)            #  19    0xbfa01  5      OPC=cmpb_m8_imm8    
  je .L_bfbd0                    #  20    0xbfa06  6      OPC=je_label_1      
  movq 0x28(%r14), %rax          #  21    0xbfa0c  4      OPC=movq_r64_m64    
  leaq (%rax,%r15,1), %rsi       #  22    0xbfa10  4      OPC=leaq_r64_m16    
  movl 0x4(%rsi), %edi           #  23    0xbfa14  3      OPC=movl_r32_m32    
  testl %edi, %edi               #  24    0xbfa17  2      OPC=testl_r32_r32   
  je .L_bfc24                    #  25    0xbfa19  6      OPC=je_label_1      
  cmpl $0x1, %edi                #  26    0xbfa1f  3      OPC=cmpl_r32_imm8   
  je .L_bfb60                    #  27    0xbfa22  6      OPC=je_label_1      
  movslq %r12d, %rbp             #  28    0xbfa28  3      OPC=movslq_r64_r32  
  movq 0x8(%rsi), %rsi           #  29    0xbfa2b  4      OPC=movq_r64_m64    
  shlq $0x4, %rbp                #  30    0xbfa2f  4      OPC=shlq_r64_imm8   
  leaq (%rax,%rbp,1), %rdi       #  31    0xbfa33  4      OPC=leaq_r64_m16    
  movl 0x10(%r14), %eax          #  32    0xbfa37  4      OPC=movl_r32_m32    
  movl (%rsi), %r13d             #  33    0xbfa3b  3      OPC=movl_r32_m32    
  movl $0x0, 0x4(%rdi)           #  34    0xbfa3e  7      OPC=movl_m32_imm32  
  leal -0x1(%rax), %r10d         #  35    0xbfa45  4      OPC=leal_r32_m16    
  movslq %r10d, %rax             #  36    0xbfa49  3      OPC=movslq_r64_r32  
  movq %rax, %rsi                #  37    0xbfa4c  3      OPC=movq_r64_r64    
  shlq $0x4, %rsi                #  38    0xbfa4f  4      OPC=shlq_r64_imm8   
  testl %r10d, %r10d             #  39    0xbfa53  3      OPC=testl_r32_r32   
  leaq (%rcx,%rsi,1), %r9        #  40    0xbfa56  4      OPC=leaq_r64_m16    
  jle .L_bfb10                   #  41    0xbfa5a  6      OPC=jle_label_1     
  testb $0x4, 0xa(%r9)           #  42    0xbfa60  5      OPC=testb_m8_imm8   
  je .L_bfb10                    #  43    0xbfa65  6      OPC=je_label_1      
  movq 0x20(%r14), %rdx          #  44    0xbfa6b  4      OPC=movq_r64_m64    
  subq %r9, %rsi                 #  45    0xbfa6f  3      OPC=subq_r64_r64    
  subq $0x10, %rsi               #  46    0xbfa72  4      OPC=subq_r64_imm8   
  leaq (%rdx,%rax,4), %rax       #  47    0xbfa76  4      OPC=leaq_r64_m16    
  jmpq .L_bfa9a                  #  48    0xbfa7a  2      OPC=jmpq_label      
  nop                            #  49    0xbfa7c  1      OPC=nop             
  nop                            #  50    0xbfa7d  1      OPC=nop             
  nop                            #  51    0xbfa7e  1      OPC=nop             
  nop                            #  52    0xbfa7f  1      OPC=nop             
.L_bfa80:                        #        0xbfa80  0      OPC=<label>         
  addq %rsi, %r9                 #  53    0xbfa80  3      OPC=addq_r64_r64    
  subl $0x1, %r10d               #  54    0xbfa83  4      OPC=subl_r32_imm8   
  subq $0x4, %rax                #  55    0xbfa87  4      OPC=subq_r64_imm8   
  addq %rcx, %r9                 #  56    0xbfa8b  3      OPC=addq_r64_r64    
  testl %r10d, %r10d             #  57    0xbfa8e  3      OPC=testl_r32_r32   
  jle .L_bfb10                   #  58    0xbfa91  2      OPC=jle_label       
  testb $0x4, 0xa(%r9)           #  59    0xbfa93  5      OPC=testb_m8_imm8   
  je .L_bfb10                    #  60    0xbfa98  2      OPC=je_label        
.L_bfa9a:                        #        0xbfa9a  0      OPC=<label>         
  cmpl (%rax), %r13d             #  61    0xbfa9a  3      OPC=cmpl_r32_m32    
  jne .L_bfa80                   #  62    0xbfa9d  2      OPC=jne_label       
  movl 0x8(%r9), %edx            #  63    0xbfa9f  4      OPC=movl_r32_m32    
  shrl $0x8, %edx                #  64    0xbfaa3  3      OPC=shrl_r32_imm8   
  andl $0x3ff, %edx              #  65    0xbfaa6  6      OPC=andl_r32_imm32  
  cmpl %edx, %ebx                #  66    0xbfaac  2      OPC=cmpl_r32_r32    
  jne .L_bfa80                   #  67    0xbfaae  2      OPC=jne_label       
  movl %r10d, %esi               #  68    0xbfab0  3      OPC=movl_r32_r32    
  callq .re_node_set_insert      #  69    0xbfab3  5      OPC=callq_label     
  testl %eax, %eax               #  70    0xbfab8  2      OPC=testl_r32_r32   
  js .L_bfaf5                    #  71    0xbfaba  2      OPC=js_label        
.L_bfabc:                        #        0xbfabc  0      OPC=<label>         
  movq 0x28(%r14), %rax          #  72    0xbfabc  4      OPC=movq_r64_m64    
  movl %ebx, %edx                #  73    0xbfac0  2      OPC=movl_r32_r32    
  movq %r14, %rdi                #  74    0xbfac2  3      OPC=movq_r64_r64    
  movq 0x8(%rax,%r15,1), %rax    #  75    0xbfac5  5      OPC=movq_r64_m64    
  movl 0x4(%rax), %r13d          #  76    0xbfaca  4      OPC=movl_r32_m32    
  movl %r13d, %esi               #  77    0xbface  3      OPC=movl_r32_r32    
  callq .duplicate_node          #  78    0xbfad1  5      OPC=callq_label     
  cmpl $0xffffffff, %eax         #  79    0xbfad6  6      OPC=cmpl_r32_imm32  
  nop                            #  80    0xbfadc  1      OPC=nop             
  nop                            #  81    0xbfadd  1      OPC=nop             
  nop                            #  82    0xbfade  1      OPC=nop             
  movl %eax, %r12d               #  83    0xbfadf  3      OPC=movl_r32_r32    
  je .L_bfaf5                    #  84    0xbfae2  2      OPC=je_label        
  movq %rbp, %rdi                #  85    0xbfae4  3      OPC=movq_r64_r64    
.L_bfae1:                        #        0xbfae7  0      OPC=<label>         
  addq 0x28(%r14), %rdi          #  86    0xbfae7  4      OPC=addq_r64_m64    
  movl %r12d, %esi               #  87    0xbfaeb  3      OPC=movl_r32_r32    
  callq .re_node_set_insert      #  88    0xbfaee  5      OPC=callq_label     
  testl %eax, %eax               #  89    0xbfaf3  2      OPC=testl_r32_r32   
  jns .L_bf9f0                   #  90    0xbfaf5  6      OPC=jns_label_1     
.L_bfaf5:                        #        0xbfafb  0      OPC=<label>         
  movl $0xc, %eax                #  91    0xbfafb  5      OPC=movl_r32_imm32  
.L_bfafa:                        #        0xbfb00  0      OPC=<label>         
  addq $0x18, %rsp               #  92    0xbfb00  4      OPC=addq_r64_imm8   
  popq %rbx                      #  93    0xbfb04  1      OPC=popq_r64_1      
  popq %rbp                      #  94    0xbfb05  1      OPC=popq_r64_1      
  popq %r12                      #  95    0xbfb06  2      OPC=popq_r64_1      
  popq %r13                      #  96    0xbfb08  2      OPC=popq_r64_1      
  popq %r14                      #  97    0xbfb0a  2      OPC=popq_r64_1      
  popq %r15                      #  98    0xbfb0c  2      OPC=popq_r64_1      
  retq                           #  99    0xbfb0e  1      OPC=retq            
  nop                            #  100   0xbfb0f  1      OPC=nop             
  nop                            #  101   0xbfb10  1      OPC=nop             
  nop                            #  102   0xbfb11  1      OPC=nop             
  nop                            #  103   0xbfb12  1      OPC=nop             
  nop                            #  104   0xbfb13  1      OPC=nop             
  nop                            #  105   0xbfb14  1      OPC=nop             
  nop                            #  106   0xbfb15  1      OPC=nop             
.L_bfb10:                        #        0xbfb16  0      OPC=<label>         
  movl %ebx, %edx                #  107   0xbfb16  2      OPC=movl_r32_r32    
  movl %r13d, %esi               #  108   0xbfb18  3      OPC=movl_r32_r32    
  movq %r14, %rdi                #  109   0xbfb1b  3      OPC=movq_r64_r64    
  callq .duplicate_node          #  110   0xbfb1e  5      OPC=callq_label     
  cmpl $0xffffffff, %eax         #  111   0xbfb23  6      OPC=cmpl_r32_imm32  
  nop                            #  112   0xbfb29  1      OPC=nop             
  nop                            #  113   0xbfb2a  1      OPC=nop             
  nop                            #  114   0xbfb2b  1      OPC=nop             
  movl %eax, %r12d               #  115   0xbfb2c  3      OPC=movl_r32_r32    
  je .L_bfaf5                    #  116   0xbfb2f  2      OPC=je_label        
  movq %rbp, %rdi                #  117   0xbfb31  3      OPC=movq_r64_r64    
  addq 0x28(%r14), %rdi          #  118   0xbfb34  4      OPC=addq_r64_m64    
  movl %r12d, %esi               #  119   0xbfb38  3      OPC=movl_r32_r32    
  callq .re_node_set_insert      #  120   0xbfb3b  5      OPC=callq_label     
  testl %eax, %eax               #  121   0xbfb40  2      OPC=testl_r32_r32   
  js .L_bfaf5                    #  122   0xbfb42  2      OPC=js_label        
  movl 0x4(%rsp), %ecx           #  123   0xbfb44  4      OPC=movl_r32_m32    
  movl %ebx, %r8d                #  124   0xbfb48  3      OPC=movl_r32_r32    
  movl %r12d, %edx               #  125   0xbfb4b  3      OPC=movl_r32_r32    
  movl %r13d, %esi               #  126   0xbfb4e  3      OPC=movl_r32_r32    
  movq %r14, %rdi                #  127   0xbfb51  3      OPC=movq_r64_r64    
  callq .duplicate_node_closure  #  128   0xbfb54  5      OPC=callq_label     
  testl %eax, %eax               #  129   0xbfb59  2      OPC=testl_r32_r32   
  je .L_bfabc                    #  130   0xbfb5b  6      OPC=je_label_1      
  jmpq .L_bfafa                  #  131   0xbfb61  2      OPC=jmpq_label      
  nop                            #  132   0xbfb63  1      OPC=nop             
  nop                            #  133   0xbfb64  1      OPC=nop             
  nop                            #  134   0xbfb65  1      OPC=nop             
  nop                            #  135   0xbfb66  1      OPC=nop             
  nop                            #  136   0xbfb67  1      OPC=nop             
  nop                            #  137   0xbfb68  1      OPC=nop             
  nop                            #  138   0xbfb69  1      OPC=nop             
  nop                            #  139   0xbfb6a  1      OPC=nop             
  nop                            #  140   0xbfb6b  1      OPC=nop             
.L_bfb60:                        #        0xbfb6c  0      OPC=<label>         
  movslq %r12d, %r15             #  141   0xbfb6c  3      OPC=movslq_r64_r32  
  movq 0x8(%rsi), %rcx           #  142   0xbfb6f  4      OPC=movq_r64_m64    
  shlq $0x4, %r15                #  143   0xbfb73  4      OPC=shlq_r64_imm8   
  cmpl %r13d, %r12d              #  144   0xbfb77  3      OPC=cmpl_r32_r32    
  leaq (%rax,%r15,1), %rdi       #  145   0xbfb7a  4      OPC=leaq_r64_m16    
  movl (%rcx), %ebp              #  146   0xbfb7e  2      OPC=movl_r32_m32    
  movl $0x0, 0x4(%rdi)           #  147   0xbfb80  7      OPC=movl_m32_imm32  
  je .L_bfb88                    #  148   0xbfb87  2      OPC=je_label        
  cmpl 0x4(%rsp), %r13d          #  149   0xbfb89  5      OPC=cmpl_r32_m32    
  je .L_bfc42                    #  150   0xbfb8e  6      OPC=je_label_1      
.L_bfb88:                        #        0xbfb94  0      OPC=<label>         
  movl 0x8(%r8), %eax            #  151   0xbfb94  4      OPC=movl_r32_m32    
  movl %ebp, %esi                #  152   0xbfb98  2      OPC=movl_r32_r32    
  movq %r14, %rdi                #  153   0xbfb9a  3      OPC=movq_r64_r64    
  shrl $0x8, %eax                #  154   0xbfb9d  3      OPC=shrl_r32_imm8   
  andl $0x3ff, %eax              #  155   0xbfba0  5      OPC=andl_eax_imm32  
  orl %eax, %ebx                 #  156   0xbfba5  2      OPC=orl_r32_r32     
  movl %ebx, %edx                #  157   0xbfba7  2      OPC=movl_r32_r32    
  callq .duplicate_node          #  158   0xbfba9  5      OPC=callq_label     
  cmpl $0xffffffff, %eax         #  159   0xbfbae  6      OPC=cmpl_r32_imm32  
  nop                            #  160   0xbfbb4  1      OPC=nop             
  nop                            #  161   0xbfbb5  1      OPC=nop             
  nop                            #  162   0xbfbb6  1      OPC=nop             
  movl %eax, %r12d               #  163   0xbfbb7  3      OPC=movl_r32_r32    
  je .L_bfaf5                    #  164   0xbfbba  6      OPC=je_label_1      
  movq %r15, %rdi                #  165   0xbfbc0  3      OPC=movq_r64_r64    
  addq 0x28(%r14), %rdi          #  166   0xbfbc3  4      OPC=addq_r64_m64    
  movl %eax, %esi                #  167   0xbfbc7  2      OPC=movl_r32_r32    
  callq .re_node_set_insert      #  168   0xbfbc9  5      OPC=callq_label     
  testl %eax, %eax               #  169   0xbfbce  2      OPC=testl_r32_r32   
  js .L_bfaf5                    #  170   0xbfbd0  6      OPC=js_label_1      
  movl %ebp, %r13d               #  171   0xbfbd6  3      OPC=movl_r32_r32    
  jmpq .L_bf9f0                  #  172   0xbfbd9  5      OPC=jmpq_label_1    
  nop                            #  173   0xbfbde  1      OPC=nop             
  nop                            #  174   0xbfbdf  1      OPC=nop             
  nop                            #  175   0xbfbe0  1      OPC=nop             
  nop                            #  176   0xbfbe1  1      OPC=nop             
.L_bfbd0:                        #        0xbfbe2  0      OPC=<label>         
  movq 0x18(%r14), %rax          #  177   0xbfbe2  4      OPC=movq_r64_m64    
  movslq %r12d, %rcx             #  178   0xbfbe6  3      OPC=movslq_r64_r32  
  movl %ebx, %edx                #  179   0xbfbe9  2      OPC=movl_r32_r32    
  movq %rcx, %r15                #  180   0xbfbeb  3      OPC=movq_r64_r64    
  movq %r14, %rdi                #  181   0xbfbee  3      OPC=movq_r64_r64    
  movq %rcx, 0x8(%rsp)           #  182   0xbfbf1  5      OPC=movq_m64_r64    
  shlq $0x4, %r15                #  183   0xbfbf6  4      OPC=shlq_r64_imm8   
  movl (%rax,%rbp,4), %r13d      #  184   0xbfbfa  4      OPC=movl_r32_m32    
  movq 0x28(%r14), %rax          #  185   0xbfbfe  4      OPC=movq_r64_m64    
  movl %r13d, %esi               #  186   0xbfc02  3      OPC=movl_r32_r32    
  movl $0x0, 0x4(%rax,%r15,1)    #  187   0xbfc05  9      OPC=movl_m32_imm32  
  callq .duplicate_node          #  188   0xbfc0e  5      OPC=callq_label     
  cmpl $0xffffffff, %eax         #  189   0xbfc13  6      OPC=cmpl_r32_imm32  
  nop                            #  190   0xbfc19  1      OPC=nop             
  nop                            #  191   0xbfc1a  1      OPC=nop             
  nop                            #  192   0xbfc1b  1      OPC=nop             
  movl %eax, %r12d               #  193   0xbfc1c  3      OPC=movl_r32_r32    
  movq 0x8(%rsp), %rcx           #  194   0xbfc1f  5      OPC=movq_r64_m64    
  je .L_bfaf5                    #  195   0xbfc24  6      OPC=je_label_1      
  movq 0x18(%r14), %rax          #  196   0xbfc2a  4      OPC=movq_r64_m64    
  movq %r15, %rdi                #  197   0xbfc2e  3      OPC=movq_r64_r64    
  movl (%rax,%rbp,4), %esi       #  198   0xbfc31  3      OPC=movl_r32_m32    
  movl %esi, (%rax,%rcx,4)       #  199   0xbfc34  3      OPC=movl_m32_r32    
  jmpq .L_bfae1                  #  200   0xbfc37  5      OPC=jmpq_label_1    
.L_bfc24:                        #        0xbfc3c  0      OPC=<label>         
  movq 0x18(%r14), %rax          #  201   0xbfc3c  4      OPC=movq_r64_m64    
  movslq %r12d, %rdx             #  202   0xbfc40  3      OPC=movslq_r64_r32  
  movl (%rax,%rbp,4), %ecx       #  203   0xbfc43  3      OPC=movl_r32_m32    
  movl %ecx, (%rax,%rdx,4)       #  204   0xbfc46  3      OPC=movl_m32_r32    
  addq $0x18, %rsp               #  205   0xbfc49  4      OPC=addq_r64_imm8   
  xorl %eax, %eax                #  206   0xbfc4d  2      OPC=xorl_r32_r32    
  popq %rbx                      #  207   0xbfc4f  1      OPC=popq_r64_1      
  popq %rbp                      #  208   0xbfc50  1      OPC=popq_r64_1      
  popq %r12                      #  209   0xbfc51  2      OPC=popq_r64_1      
  popq %r13                      #  210   0xbfc53  2      OPC=popq_r64_1      
  popq %r14                      #  211   0xbfc55  2      OPC=popq_r64_1      
  popq %r15                      #  212   0xbfc57  2      OPC=popq_r64_1      
  retq                           #  213   0xbfc59  1      OPC=retq            
.L_bfc42:                        #        0xbfc5a  0      OPC=<label>         
  movl %ebp, %esi                #  214   0xbfc5a  2      OPC=movl_r32_r32    
  callq .re_node_set_insert      #  215   0xbfc5c  5      OPC=callq_label     
  testl %eax, %eax               #  216   0xbfc61  2      OPC=testl_r32_r32   
  js .L_bfaf5                    #  217   0xbfc63  6      OPC=js_label_1      
  xorl %eax, %eax                #  218   0xbfc69  2      OPC=xorl_r32_r32    
  jmpq .L_bfafa                  #  219   0xbfc6b  5      OPC=jmpq_label_1    
  nop                            #  220   0xbfc70  1      OPC=nop             
  nop                            #  221   0xbfc71  1      OPC=nop             
  nop                            #  222   0xbfc72  1      OPC=nop             
  nop                            #  223   0xbfc73  1      OPC=nop             
  nop                            #  224   0xbfc74  1      OPC=nop             
  nop                            #  225   0xbfc75  1      OPC=nop             
  nop                            #  226   0xbfc76  1      OPC=nop             
  nop                            #  227   0xbfc77  1      OPC=nop             
                                                                              
.size duplicate_node_closure, .-duplicate_node_closure
