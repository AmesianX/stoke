  .text
  .globl _IO_file_xsputn__GLIBC_2_2_5
  .type _IO_file_xsputn__GLIBC_2_2_5, @function

#! file-offset 0x70ae0
#! rip-offset  0x70ae0
#! capacity    432 bytes

# Text                          #  Line  RIP      Bytes  Opcode                
._IO_file_xsputn__GLIBC_2_2_5:  #        0x70ae0  0      OPC=<label>           
  xorl %eax, %eax               #  1     0x70ae0  2      OPC=xorl_r32_r32      
  testq %rdx, %rdx              #  2     0x70ae2  3      OPC=testq_r64_r64     
  pushq %r14                    #  3     0x70ae5  2      OPC=pushq_r64_1       
  pushq %r13                    #  4     0x70ae7  2      OPC=pushq_r64_1       
  pushq %r12                    #  5     0x70ae9  2      OPC=pushq_r64_1       
  pushq %rbp                    #  6     0x70aeb  1      OPC=pushq_r64_1       
  movq %rdx, %rbp               #  7     0x70aec  3      OPC=movq_r64_r64      
  pushq %rbx                    #  8     0x70aef  1      OPC=pushq_r64_1       
  je .L_70b59                   #  9     0x70af0  2      OPC=je_label          
  movl (%rdi), %eax             #  10    0x70af2  2      OPC=movl_r32_m32      
  movq %rdi, %r12               #  11    0x70af4  3      OPC=movq_r64_r64      
  movq %rsi, %r13               #  12    0x70af7  3      OPC=movq_r64_r64      
  andl $0xa00, %eax             #  13    0x70afa  5      OPC=andl_eax_imm32    
  cmpl $0xa00, %eax             #  14    0x70aff  5      OPC=cmpl_eax_imm32    
  je .L_70bd0                   #  15    0x70b04  6      OPC=je_label_1        
  movq 0x30(%rdi), %rcx         #  16    0x70b0a  4      OPC=movq_r64_m64      
  movq 0x28(%rdi), %rdi         #  17    0x70b0e  4      OPC=movq_r64_m64      
  cmpq %rdi, %rcx               #  18    0x70b12  3      OPC=cmpq_r64_r64      
  jbe .L_70b68                  #  19    0x70b15  2      OPC=jbe_label         
  subq %rdi, %rcx               #  20    0x70b17  3      OPC=subq_r64_r64      
  xorl %r14d, %r14d             #  21    0x70b1a  3      OPC=xorl_r32_r32      
.L_70b1d:                       #        0x70b1d  0      OPC=<label>           
  testq %rcx, %rcx              #  22    0x70b1d  3      OPC=testq_r64_r64     
  movq %rbp, %rbx               #  23    0x70b20  3      OPC=movq_r64_r64      
  je .L_70b4e                   #  24    0x70b23  2      OPC=je_label          
.L_70b25:                       #        0x70b25  0      OPC=<label>           
  cmpq %rbp, %rcx               #  25    0x70b25  3      OPC=cmpq_r64_r64      
  movq %r13, %rsi               #  26    0x70b28  3      OPC=movq_r64_r64      
  cmovaq %rbp, %rcx             #  27    0x70b2b  4      OPC=cmovaq_r64_r64    
  movq %rcx, %rbx               #  28    0x70b2f  3      OPC=movq_r64_r64      
  movq %rcx, %rdx               #  29    0x70b32  3      OPC=movq_r64_r64      
  callq .__GI_memcpy            #  30    0x70b35  5      OPC=callq_label       
  addq %rbx, %rax               #  31    0x70b3a  3      OPC=addq_r64_r64      
  addq %rbx, %r13               #  32    0x70b3d  3      OPC=addq_r64_r64      
  movq %rax, 0x28(%r12)         #  33    0x70b40  5      OPC=movq_m64_r64      
  movq %rbp, %rax               #  34    0x70b45  3      OPC=movq_r64_r64      
  subq %rbx, %rax               #  35    0x70b48  3      OPC=subq_r64_r64      
  movq %rax, %rbx               #  36    0x70b4b  3      OPC=movq_r64_r64      
.L_70b4e:                       #        0x70b4e  0      OPC=<label>           
  addq %rbx, %r14               #  37    0x70b4e  3      OPC=addq_r64_r64      
  jne .L_70b73                  #  38    0x70b51  2      OPC=jne_label         
.L_70b53:                       #        0x70b53  0      OPC=<label>           
  movq %rbp, %rax               #  39    0x70b53  3      OPC=movq_r64_r64      
  subq %rbx, %rax               #  40    0x70b56  3      OPC=subq_r64_r64      
.L_70b59:                       #        0x70b59  0      OPC=<label>           
  popq %rbx                     #  41    0x70b59  1      OPC=popq_r64_1        
  popq %rbp                     #  42    0x70b5a  1      OPC=popq_r64_1        
  popq %r12                     #  43    0x70b5b  2      OPC=popq_r64_1        
  popq %r13                     #  44    0x70b5d  2      OPC=popq_r64_1        
  popq %r14                     #  45    0x70b5f  2      OPC=popq_r64_1        
  retq                          #  46    0x70b61  1      OPC=retq              
  nop                           #  47    0x70b62  1      OPC=nop               
  nop                           #  48    0x70b63  1      OPC=nop               
  nop                           #  49    0x70b64  1      OPC=nop               
  nop                           #  50    0x70b65  1      OPC=nop               
  nop                           #  51    0x70b66  1      OPC=nop               
  nop                           #  52    0x70b67  1      OPC=nop               
.L_70b68:                       #        0x70b68  0      OPC=<label>           
  movq %rdx, %rbx               #  53    0x70b68  3      OPC=movq_r64_r64      
  xorl %r14d, %r14d             #  54    0x70b6b  3      OPC=xorl_r32_r32      
  addq %rbx, %r14               #  55    0x70b6e  3      OPC=addq_r64_r64      
  je .L_70b53                   #  56    0x70b71  2      OPC=je_label          
.L_70b73:                       #        0x70b73  0      OPC=<label>           
  movq 0xd8(%r12), %rax         #  57    0x70b73  8      OPC=movq_r64_m64      
  movl $0xffffffff, %esi        #  58    0x70b7b  6      OPC=movl_r32_imm32_1  
  movq %r12, %rdi               #  59    0x70b81  3      OPC=movq_r64_r64      
  callq 0x18(%rax)              #  60    0x70b84  3      OPC=callq_m64         
  cmpl $0xffffffff, %eax        #  61    0x70b87  6      OPC=cmpl_r32_imm32    
  nop                           #  62    0x70b8d  1      OPC=nop               
  nop                           #  63    0x70b8e  1      OPC=nop               
  nop                           #  64    0x70b8f  1      OPC=nop               
  je .L_70c30                   #  65    0x70b90  6      OPC=je_label_1        
  movq 0x40(%r12), %rcx         #  66    0x70b96  5      OPC=movq_r64_m64      
  subq 0x38(%r12), %rcx         #  67    0x70b9b  5      OPC=subq_r64_m64      
  xorl %edx, %edx               #  68    0x70ba0  2      OPC=xorl_r32_r32      
  cmpq $0x7f, %rcx              #  69    0x70ba2  4      OPC=cmpq_r64_imm8     
  jbe .L_70ba9                  #  70    0x70ba6  2      OPC=jbe_label         
  movq %rbx, %rax               #  71    0x70ba8  3      OPC=movq_r64_r64      
  xorl %edx, %edx               #  72    0x70bab  2      OPC=xorl_r32_r32      
  divq %rcx                     #  73    0x70bad  3      OPC=divq_r64          
.L_70ba9:                       #        0x70bb0  0      OPC=<label>           
  movq %rbx, %r14               #  74    0x70bb0  3      OPC=movq_r64_r64      
  subq %rdx, %r14               #  75    0x70bb3  3      OPC=subq_r64_r64      
  jne .L_70c68                  #  76    0x70bb6  6      OPC=jne_label_1       
.L_70bb5:                       #        0x70bbc  0      OPC=<label>           
  testq %rbx, %rbx              #  77    0x70bbc  3      OPC=testq_r64_r64     
  je .L_70b53                   #  78    0x70bbf  2      OPC=je_label          
  leaq (%r13,%r14,1), %rsi      #  79    0x70bc1  5      OPC=leaq_r64_m16      
  movq %rbx, %rdx               #  80    0x70bc6  3      OPC=movq_r64_r64      
  movq %r12, %rdi               #  81    0x70bc9  3      OPC=movq_r64_r64      
  callq ._IO_default_xsputn     #  82    0x70bcc  5      OPC=callq_label       
  subq %rax, %rbx               #  83    0x70bd1  3      OPC=subq_r64_r64      
  jmpq .L_70b53                 #  84    0x70bd4  2      OPC=jmpq_label        
  nop                           #  85    0x70bd6  1      OPC=nop               
.L_70bd0:                       #        0x70bd7  0      OPC=<label>           
  movq 0x28(%rdi), %rdi         #  86    0x70bd7  4      OPC=movq_r64_m64      
  movq 0x40(%r12), %rcx         #  87    0x70bdb  5      OPC=movq_r64_m64      
  subq %rdi, %rcx               #  88    0x70be0  3      OPC=subq_r64_r64      
  cmpq %rcx, %rdx               #  89    0x70be3  3      OPC=cmpq_r64_r64      
  ja .L_70c20                   #  90    0x70be6  2      OPC=ja_label          
  leaq (%rsi,%rdx,1), %rdx      #  91    0x70be8  4      OPC=leaq_r64_m16      
  cmpq %rdx, %rsi               #  92    0x70bec  3      OPC=cmpq_r64_r64      
  jae .L_70c0e                  #  93    0x70bef  2      OPC=jae_label         
  cmpb $0xa, -0x1(%rdx)         #  94    0x70bf1  4      OPC=cmpb_m8_imm8      
  leaq -0x1(%rdx), %rax         #  95    0x70bf5  4      OPC=leaq_r64_m16      
  jne .L_70c09                  #  96    0x70bf9  2      OPC=jne_label         
  jmpq .L_70c50                 #  97    0x70bfb  2      OPC=jmpq_label        
  nop                           #  98    0x70bfd  1      OPC=nop               
  nop                           #  99    0x70bfe  1      OPC=nop               
  nop                           #  100   0x70bff  1      OPC=nop               
  nop                           #  101   0x70c00  1      OPC=nop               
  nop                           #  102   0x70c01  1      OPC=nop               
  nop                           #  103   0x70c02  1      OPC=nop               
  nop                           #  104   0x70c03  1      OPC=nop               
  nop                           #  105   0x70c04  1      OPC=nop               
  nop                           #  106   0x70c05  1      OPC=nop               
  nop                           #  107   0x70c06  1      OPC=nop               
.L_70c00:                       #        0x70c07  0      OPC=<label>           
  subq $0x1, %rax               #  108   0x70c07  4      OPC=subq_r64_imm8     
  cmpb $0xa, (%rax)             #  109   0x70c0b  3      OPC=cmpb_m8_imm8      
  je .L_70c50                   #  110   0x70c0e  2      OPC=je_label          
.L_70c09:                       #        0x70c10  0      OPC=<label>           
  cmpq %r13, %rax               #  111   0x70c10  3      OPC=cmpq_r64_r64      
  jne .L_70c00                  #  112   0x70c13  2      OPC=jne_label         
.L_70c0e:                       #        0x70c15  0      OPC=<label>           
  xorl %r14d, %r14d             #  113   0x70c15  3      OPC=xorl_r32_r32      
  jmpq .L_70b25                 #  114   0x70c18  5      OPC=jmpq_label_1      
  nop                           #  115   0x70c1d  1      OPC=nop               
  nop                           #  116   0x70c1e  1      OPC=nop               
  nop                           #  117   0x70c1f  1      OPC=nop               
  nop                           #  118   0x70c20  1      OPC=nop               
  nop                           #  119   0x70c21  1      OPC=nop               
  nop                           #  120   0x70c22  1      OPC=nop               
  nop                           #  121   0x70c23  1      OPC=nop               
  nop                           #  122   0x70c24  1      OPC=nop               
  nop                           #  123   0x70c25  1      OPC=nop               
  nop                           #  124   0x70c26  1      OPC=nop               
.L_70c20:                       #        0x70c27  0      OPC=<label>           
  xorl %r14d, %r14d             #  125   0x70c27  3      OPC=xorl_r32_r32      
  jmpq .L_70b1d                 #  126   0x70c2a  5      OPC=jmpq_label_1      
  nop                           #  127   0x70c2f  1      OPC=nop               
  nop                           #  128   0x70c30  1      OPC=nop               
  nop                           #  129   0x70c31  1      OPC=nop               
  nop                           #  130   0x70c32  1      OPC=nop               
  nop                           #  131   0x70c33  1      OPC=nop               
  nop                           #  132   0x70c34  1      OPC=nop               
  nop                           #  133   0x70c35  1      OPC=nop               
  nop                           #  134   0x70c36  1      OPC=nop               
.L_70c30:                       #        0x70c37  0      OPC=<label>           
  subq %rbx, %rbp               #  135   0x70c37  3      OPC=subq_r64_r64      
  movq $0xffffffff, %rax        #  136   0x70c3a  7      OPC=movq_r64_imm32    
  testq %rbx, %rbx              #  137   0x70c41  3      OPC=testq_r64_r64     
  cmovneq %rbp, %rax            #  138   0x70c44  4      OPC=cmovneq_r64_r64   
  jmpq .L_70b59                 #  139   0x70c48  5      OPC=jmpq_label_1      
  nop                           #  140   0x70c4d  1      OPC=nop               
  nop                           #  141   0x70c4e  1      OPC=nop               
  nop                           #  142   0x70c4f  1      OPC=nop               
  nop                           #  143   0x70c50  1      OPC=nop               
  nop                           #  144   0x70c51  1      OPC=nop               
  nop                           #  145   0x70c52  1      OPC=nop               
  nop                           #  146   0x70c53  1      OPC=nop               
  nop                           #  147   0x70c54  1      OPC=nop               
  nop                           #  148   0x70c55  1      OPC=nop               
  nop                           #  149   0x70c56  1      OPC=nop               
.L_70c50:                       #        0x70c57  0      OPC=<label>           
  subq %r13, %rax               #  150   0x70c57  3      OPC=subq_r64_r64      
  movl $0x1, %r14d              #  151   0x70c5a  6      OPC=movl_r32_imm32    
  leaq 0x1(%rax), %rcx          #  152   0x70c60  4      OPC=leaq_r64_m16      
  jmpq .L_70b1d                 #  153   0x70c64  5      OPC=jmpq_label_1      
  nop                           #  154   0x70c69  1      OPC=nop               
  nop                           #  155   0x70c6a  1      OPC=nop               
  nop                           #  156   0x70c6b  1      OPC=nop               
  nop                           #  157   0x70c6c  1      OPC=nop               
  nop                           #  158   0x70c6d  1      OPC=nop               
  nop                           #  159   0x70c6e  1      OPC=nop               
.L_70c68:                       #        0x70c6f  0      OPC=<label>           
  movq %r14, %rdx               #  160   0x70c6f  3      OPC=movq_r64_r64      
  movq %r13, %rsi               #  161   0x70c72  3      OPC=movq_r64_r64      
  movq %r12, %rdi               #  162   0x70c75  3      OPC=movq_r64_r64      
  callq .new_do_write           #  163   0x70c78  5      OPC=callq_label       
  subq %rax, %rbx               #  164   0x70c7d  3      OPC=subq_r64_r64      
  cmpq %rax, %r14               #  165   0x70c80  3      OPC=cmpq_r64_r64      
  jbe .L_70bb5                  #  166   0x70c83  6      OPC=jbe_label_1       
  jmpq .L_70b53                 #  167   0x70c89  5      OPC=jmpq_label_1      
  nop                           #  168   0x70c8e  1      OPC=nop               
  nop                           #  169   0x70c8f  1      OPC=nop               
  nop                           #  170   0x70c90  1      OPC=nop               
  nop                           #  171   0x70c91  1      OPC=nop               
  nop                           #  172   0x70c92  1      OPC=nop               
  nop                           #  173   0x70c93  1      OPC=nop               
  nop                           #  174   0x70c94  1      OPC=nop               
  nop                           #  175   0x70c95  1      OPC=nop               
  nop                           #  176   0x70c96  1      OPC=nop               
                                                                               
.size _IO_file_xsputn__GLIBC_2_2_5, .-_IO_file_xsputn__GLIBC_2_2_5
