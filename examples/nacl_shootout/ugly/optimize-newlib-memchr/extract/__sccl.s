  .text
  .globl __sccl
  .type __sccl, @function

#! file-offset 0x18c480
#! rip-offset  0x14c480
#! capacity    448 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__sccl:                         #        0x14c480  0      OPC=<label>         
  movl %esi, %eax                #  1     0x14c480  2      OPC=movl_r32_r32    
  xorl %r8d, %r8d                #  2     0x14c482  3      OPC=xorl_r32_r32    
  xorl %r10d, %r10d              #  3     0x14c485  3      OPC=xorl_r32_r32    
  movl %eax, %eax                #  4     0x14c488  2      OPC=movl_r32_r32    
  movzbl (%r15,%rax,1), %r9d     #  5     0x14c48a  5      OPC=movzbl_r32_m8   
  addl $0x1, %eax                #  6     0x14c48f  3      OPC=addl_r32_imm8   
  movl %edi, %edi                #  7     0x14c492  2      OPC=movl_r32_r32    
  cmpl $0x5e, %r9d               #  8     0x14c494  4      OPC=cmpl_r32_imm8   
  je .L_14c600                   #  9     0x14c498  6      OPC=je_label_1      
  xchgw %ax, %ax                 #  10    0x14c49e  2      OPC=xchgw_ax_r16    
.L_14c4a0:                       #        0x14c4a0  0      OPC=<label>         
  movl %edi, %ecx                #  11    0x14c4a0  2      OPC=movl_r32_r32    
  xorl %edx, %edx                #  12    0x14c4a2  2      OPC=xorl_r32_r32    
  nop                            #  13    0x14c4a4  1      OPC=nop             
  nop                            #  14    0x14c4a5  1      OPC=nop             
  nop                            #  15    0x14c4a6  1      OPC=nop             
  nop                            #  16    0x14c4a7  1      OPC=nop             
  nop                            #  17    0x14c4a8  1      OPC=nop             
  nop                            #  18    0x14c4a9  1      OPC=nop             
  nop                            #  19    0x14c4aa  1      OPC=nop             
  nop                            #  20    0x14c4ab  1      OPC=nop             
  nop                            #  21    0x14c4ac  1      OPC=nop             
  nop                            #  22    0x14c4ad  1      OPC=nop             
  nop                            #  23    0x14c4ae  1      OPC=nop             
  nop                            #  24    0x14c4af  1      OPC=nop             
  nop                            #  25    0x14c4b0  1      OPC=nop             
  nop                            #  26    0x14c4b1  1      OPC=nop             
  nop                            #  27    0x14c4b2  1      OPC=nop             
  nop                            #  28    0x14c4b3  1      OPC=nop             
  nop                            #  29    0x14c4b4  1      OPC=nop             
  nop                            #  30    0x14c4b5  1      OPC=nop             
  nop                            #  31    0x14c4b6  1      OPC=nop             
  nop                            #  32    0x14c4b7  1      OPC=nop             
  nop                            #  33    0x14c4b8  1      OPC=nop             
  nop                            #  34    0x14c4b9  1      OPC=nop             
  nop                            #  35    0x14c4ba  1      OPC=nop             
  nop                            #  36    0x14c4bb  1      OPC=nop             
  nop                            #  37    0x14c4bc  1      OPC=nop             
  nop                            #  38    0x14c4bd  1      OPC=nop             
  nop                            #  39    0x14c4be  1      OPC=nop             
  nop                            #  40    0x14c4bf  1      OPC=nop             
.L_14c4c0:                       #        0x14c4c0  0      OPC=<label>         
  addl $0x1, %edx                #  41    0x14c4c0  3      OPC=addl_r32_imm8   
  movl %ecx, %esi                #  42    0x14c4c3  2      OPC=movl_r32_r32    
  addl $0x1, %ecx                #  43    0x14c4c5  3      OPC=addl_r32_imm8   
  cmpl $0x100, %edx              #  44    0x14c4c8  6      OPC=cmpl_r32_imm32  
  movl %esi, %esi                #  45    0x14c4ce  2      OPC=movl_r32_r32    
  movb %r8b, (%r15,%rsi,1)       #  46    0x14c4d0  4      OPC=movb_m8_r8      
  jne .L_14c4c0                  #  47    0x14c4d4  2      OPC=jne_label       
  testl %r9d, %r9d               #  48    0x14c4d6  3      OPC=testl_r32_r32   
  je .L_14c5a0                   #  49    0x14c4d9  6      OPC=je_label_1      
  nop                            #  50    0x14c4df  1      OPC=nop             
  movl $0x1, %r8d                #  51    0x14c4e0  6      OPC=movl_r32_imm32  
  subb %r10b, %r8b               #  52    0x14c4e6  3      OPC=subb_r8_r8      
  nop                            #  53    0x14c4e9  1      OPC=nop             
  nop                            #  54    0x14c4ea  1      OPC=nop             
  nop                            #  55    0x14c4eb  1      OPC=nop             
  nop                            #  56    0x14c4ec  1      OPC=nop             
  nop                            #  57    0x14c4ed  1      OPC=nop             
  nop                            #  58    0x14c4ee  1      OPC=nop             
  nop                            #  59    0x14c4ef  1      OPC=nop             
  nop                            #  60    0x14c4f0  1      OPC=nop             
  nop                            #  61    0x14c4f1  1      OPC=nop             
  nop                            #  62    0x14c4f2  1      OPC=nop             
  nop                            #  63    0x14c4f3  1      OPC=nop             
  nop                            #  64    0x14c4f4  1      OPC=nop             
  nop                            #  65    0x14c4f5  1      OPC=nop             
  nop                            #  66    0x14c4f6  1      OPC=nop             
  nop                            #  67    0x14c4f7  1      OPC=nop             
  nop                            #  68    0x14c4f8  1      OPC=nop             
  nop                            #  69    0x14c4f9  1      OPC=nop             
  nop                            #  70    0x14c4fa  1      OPC=nop             
  nop                            #  71    0x14c4fb  1      OPC=nop             
  nop                            #  72    0x14c4fc  1      OPC=nop             
  nop                            #  73    0x14c4fd  1      OPC=nop             
  nop                            #  74    0x14c4fe  1      OPC=nop             
  nop                            #  75    0x14c4ff  1      OPC=nop             
.L_14c500:                       #        0x14c500  0      OPC=<label>         
  leal (%r9,%rdi,1), %edx        #  76    0x14c500  4      OPC=leal_r32_m16    
  movq %rax, %rcx                #  77    0x14c504  3      OPC=movq_r64_r64    
  movl %edx, %edx                #  78    0x14c507  2      OPC=movl_r32_r32    
  movb %r8b, (%r15,%rdx,1)       #  79    0x14c509  4      OPC=movb_m8_r8      
  nop                            #  80    0x14c50d  1      OPC=nop             
  nop                            #  81    0x14c50e  1      OPC=nop             
  nop                            #  82    0x14c50f  1      OPC=nop             
  nop                            #  83    0x14c510  1      OPC=nop             
  nop                            #  84    0x14c511  1      OPC=nop             
  nop                            #  85    0x14c512  1      OPC=nop             
  nop                            #  86    0x14c513  1      OPC=nop             
  nop                            #  87    0x14c514  1      OPC=nop             
  nop                            #  88    0x14c515  1      OPC=nop             
  nop                            #  89    0x14c516  1      OPC=nop             
  nop                            #  90    0x14c517  1      OPC=nop             
  nop                            #  91    0x14c518  1      OPC=nop             
  nop                            #  92    0x14c519  1      OPC=nop             
  nop                            #  93    0x14c51a  1      OPC=nop             
  nop                            #  94    0x14c51b  1      OPC=nop             
  nop                            #  95    0x14c51c  1      OPC=nop             
  nop                            #  96    0x14c51d  1      OPC=nop             
  nop                            #  97    0x14c51e  1      OPC=nop             
  nop                            #  98    0x14c51f  1      OPC=nop             
.L_14c520:                       #        0x14c520  0      OPC=<label>         
  movl %ecx, %ecx                #  99    0x14c520  2      OPC=movl_r32_r32    
  movzbl (%r15,%rcx,1), %edx     #  100   0x14c522  5      OPC=movzbl_r32_m8   
  movl %ecx, %esi                #  101   0x14c527  2      OPC=movl_r32_r32    
  leal 0x1(%rsi), %eax           #  102   0x14c529  3      OPC=leal_r32_m16    
  cmpb $0x2d, %dl                #  103   0x14c52c  3      OPC=cmpb_r8_imm8    
  movzbl %dl, %r10d              #  104   0x14c52f  4      OPC=movzbl_r32_r8   
  je .L_14c5c0                   #  105   0x14c533  6      OPC=je_label_1      
  cmpb $0x5d, %dl                #  106   0x14c539  3      OPC=cmpb_r8_imm8    
  nop                            #  107   0x14c53c  1      OPC=nop             
  nop                            #  108   0x14c53d  1      OPC=nop             
  nop                            #  109   0x14c53e  1      OPC=nop             
  nop                            #  110   0x14c53f  1      OPC=nop             
  je .L_14c560                   #  111   0x14c540  2      OPC=je_label        
  testb %dl, %dl                 #  112   0x14c542  2      OPC=testb_r8_r8     
  jne .L_14c580                  #  113   0x14c544  2      OPC=jne_label       
  movq %rcx, %rax                #  114   0x14c546  3      OPC=movq_r64_r64    
  popq %r11                      #  115   0x14c549  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  116   0x14c54b  7      OPC=andl_r32_imm32  
  nop                            #  117   0x14c552  1      OPC=nop             
  nop                            #  118   0x14c553  1      OPC=nop             
  nop                            #  119   0x14c554  1      OPC=nop             
  nop                            #  120   0x14c555  1      OPC=nop             
  addq %r15, %r11                #  121   0x14c556  3      OPC=addq_r64_r64    
  jmpq %r11                      #  122   0x14c559  3      OPC=jmpq_r64        
  nop                            #  123   0x14c55c  1      OPC=nop             
  nop                            #  124   0x14c55d  1      OPC=nop             
  nop                            #  125   0x14c55e  1      OPC=nop             
  nop                            #  126   0x14c55f  1      OPC=nop             
  nop                            #  127   0x14c560  1      OPC=nop             
  nop                            #  128   0x14c561  1      OPC=nop             
  nop                            #  129   0x14c562  1      OPC=nop             
  nop                            #  130   0x14c563  1      OPC=nop             
  nop                            #  131   0x14c564  1      OPC=nop             
  nop                            #  132   0x14c565  1      OPC=nop             
  nop                            #  133   0x14c566  1      OPC=nop             
.L_14c560:                       #        0x14c567  0      OPC=<label>         
  popq %r11                      #  134   0x14c567  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  135   0x14c569  7      OPC=andl_r32_imm32  
  nop                            #  136   0x14c570  1      OPC=nop             
  nop                            #  137   0x14c571  1      OPC=nop             
  nop                            #  138   0x14c572  1      OPC=nop             
  nop                            #  139   0x14c573  1      OPC=nop             
  addq %r15, %r11                #  140   0x14c574  3      OPC=addq_r64_r64    
  jmpq %r11                      #  141   0x14c577  3      OPC=jmpq_r64        
  nop                            #  142   0x14c57a  1      OPC=nop             
  nop                            #  143   0x14c57b  1      OPC=nop             
  nop                            #  144   0x14c57c  1      OPC=nop             
  nop                            #  145   0x14c57d  1      OPC=nop             
  nop                            #  146   0x14c57e  1      OPC=nop             
  nop                            #  147   0x14c57f  1      OPC=nop             
  nop                            #  148   0x14c580  1      OPC=nop             
  nop                            #  149   0x14c581  1      OPC=nop             
  nop                            #  150   0x14c582  1      OPC=nop             
  nop                            #  151   0x14c583  1      OPC=nop             
  nop                            #  152   0x14c584  1      OPC=nop             
  nop                            #  153   0x14c585  1      OPC=nop             
  nop                            #  154   0x14c586  1      OPC=nop             
  nop                            #  155   0x14c587  1      OPC=nop             
  nop                            #  156   0x14c588  1      OPC=nop             
  nop                            #  157   0x14c589  1      OPC=nop             
  nop                            #  158   0x14c58a  1      OPC=nop             
  nop                            #  159   0x14c58b  1      OPC=nop             
  nop                            #  160   0x14c58c  1      OPC=nop             
  nop                            #  161   0x14c58d  1      OPC=nop             
.L_14c580:                       #        0x14c58e  0      OPC=<label>         
  movl %r10d, %r9d               #  162   0x14c58e  3      OPC=movl_r32_r32    
  jmpq .L_14c500                 #  163   0x14c591  5      OPC=jmpq_label_1    
  nop                            #  164   0x14c596  1      OPC=nop             
  nop                            #  165   0x14c597  1      OPC=nop             
  nop                            #  166   0x14c598  1      OPC=nop             
  nop                            #  167   0x14c599  1      OPC=nop             
  nop                            #  168   0x14c59a  1      OPC=nop             
  nop                            #  169   0x14c59b  1      OPC=nop             
  nop                            #  170   0x14c59c  1      OPC=nop             
  nop                            #  171   0x14c59d  1      OPC=nop             
  nop                            #  172   0x14c59e  1      OPC=nop             
  nop                            #  173   0x14c59f  1      OPC=nop             
  nop                            #  174   0x14c5a0  1      OPC=nop             
  nop                            #  175   0x14c5a1  1      OPC=nop             
  nop                            #  176   0x14c5a2  1      OPC=nop             
  nop                            #  177   0x14c5a3  1      OPC=nop             
  nop                            #  178   0x14c5a4  1      OPC=nop             
  nop                            #  179   0x14c5a5  1      OPC=nop             
  nop                            #  180   0x14c5a6  1      OPC=nop             
  nop                            #  181   0x14c5a7  1      OPC=nop             
  nop                            #  182   0x14c5a8  1      OPC=nop             
  nop                            #  183   0x14c5a9  1      OPC=nop             
  nop                            #  184   0x14c5aa  1      OPC=nop             
  nop                            #  185   0x14c5ab  1      OPC=nop             
  nop                            #  186   0x14c5ac  1      OPC=nop             
  nop                            #  187   0x14c5ad  1      OPC=nop             
.L_14c5a0:                       #        0x14c5ae  0      OPC=<label>         
  subl $0x1, %eax                #  188   0x14c5ae  3      OPC=subl_r32_imm8   
  popq %r11                      #  189   0x14c5b1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  190   0x14c5b3  7      OPC=andl_r32_imm32  
  nop                            #  191   0x14c5ba  1      OPC=nop             
  nop                            #  192   0x14c5bb  1      OPC=nop             
  nop                            #  193   0x14c5bc  1      OPC=nop             
  nop                            #  194   0x14c5bd  1      OPC=nop             
  addq %r15, %r11                #  195   0x14c5be  3      OPC=addq_r64_r64    
  jmpq %r11                      #  196   0x14c5c1  3      OPC=jmpq_r64        
  xchgw %ax, %ax                 #  197   0x14c5c4  2      OPC=xchgw_ax_r16    
  nop                            #  198   0x14c5c6  1      OPC=nop             
  nop                            #  199   0x14c5c7  1      OPC=nop             
  nop                            #  200   0x14c5c8  1      OPC=nop             
  nop                            #  201   0x14c5c9  1      OPC=nop             
  nop                            #  202   0x14c5ca  1      OPC=nop             
  nop                            #  203   0x14c5cb  1      OPC=nop             
  nop                            #  204   0x14c5cc  1      OPC=nop             
  nop                            #  205   0x14c5cd  1      OPC=nop             
  nop                            #  206   0x14c5ce  1      OPC=nop             
  nop                            #  207   0x14c5cf  1      OPC=nop             
  nop                            #  208   0x14c5d0  1      OPC=nop             
  nop                            #  209   0x14c5d1  1      OPC=nop             
  nop                            #  210   0x14c5d2  1      OPC=nop             
  nop                            #  211   0x14c5d3  1      OPC=nop             
  nop                            #  212   0x14c5d4  1      OPC=nop             
.L_14c5c0:                       #        0x14c5d5  0      OPC=<label>         
  movl %ecx, %ecx                #  213   0x14c5d5  2      OPC=movl_r32_r32    
  movzbl 0x1(%r15,%rcx,1), %edx  #  214   0x14c5d7  6      OPC=movzbl_r32_m8   
  cmpl %r9d, %edx                #  215   0x14c5dd  3      OPC=cmpl_r32_r32    
  jl .L_14c620                   #  216   0x14c5e0  2      OPC=jl_label        
  cmpl $0x5d, %edx               #  217   0x14c5e2  3      OPC=cmpl_r32_imm8   
  je .L_14c620                   #  218   0x14c5e5  2      OPC=je_label        
  leal (%r9,%rdi,1), %eax        #  219   0x14c5e7  4      OPC=leal_r32_m16    
  nop                            #  220   0x14c5eb  1      OPC=nop             
  nop                            #  221   0x14c5ec  1      OPC=nop             
  nop                            #  222   0x14c5ed  1      OPC=nop             
  nop                            #  223   0x14c5ee  1      OPC=nop             
  nop                            #  224   0x14c5ef  1      OPC=nop             
  nop                            #  225   0x14c5f0  1      OPC=nop             
  nop                            #  226   0x14c5f1  1      OPC=nop             
  nop                            #  227   0x14c5f2  1      OPC=nop             
  nop                            #  228   0x14c5f3  1      OPC=nop             
  nop                            #  229   0x14c5f4  1      OPC=nop             
.L_14c5e0:                       #        0x14c5f5  0      OPC=<label>         
  addl $0x1, %r9d                #  230   0x14c5f5  4      OPC=addl_r32_imm8   
  movl %eax, %ecx                #  231   0x14c5f9  2      OPC=movl_r32_r32    
  addl $0x1, %eax                #  232   0x14c5fb  3      OPC=addl_r32_imm8   
  cmpl %r9d, %edx                #  233   0x14c5fe  3      OPC=cmpl_r32_r32    
  movl %ecx, %ecx                #  234   0x14c601  2      OPC=movl_r32_r32    
  movb %r8b, 0x1(%r15,%rcx,1)    #  235   0x14c603  5      OPC=movb_m8_r8      
  jg .L_14c5e0                   #  236   0x14c608  2      OPC=jg_label        
  leal 0x2(%rsi), %ecx           #  237   0x14c60a  3      OPC=leal_r32_m16    
  jmpq .L_14c520                 #  238   0x14c60d  5      OPC=jmpq_label_1    
  nop                            #  239   0x14c612  1      OPC=nop             
  nop                            #  240   0x14c613  1      OPC=nop             
  nop                            #  241   0x14c614  1      OPC=nop             
.L_14c600:                       #        0x14c615  0      OPC=<label>         
  movl %eax, %eax                #  242   0x14c615  2      OPC=movl_r32_r32    
  movzbl (%r15,%rax,1), %r9d     #  243   0x14c617  5      OPC=movzbl_r32_m8   
  movl $0x1, %r8d                #  244   0x14c61c  6      OPC=movl_r32_imm32  
  addl $0x1, %eax                #  245   0x14c622  3      OPC=addl_r32_imm8   
  movb $0x1, %r10b               #  246   0x14c625  3      OPC=movb_r8_imm8    
  jmpq .L_14c4a0                 #  247   0x14c628  5      OPC=jmpq_label_1    
  nop                            #  248   0x14c62d  1      OPC=nop             
  nop                            #  249   0x14c62e  1      OPC=nop             
  nop                            #  250   0x14c62f  1      OPC=nop             
  nop                            #  251   0x14c630  1      OPC=nop             
  nop                            #  252   0x14c631  1      OPC=nop             
  nop                            #  253   0x14c632  1      OPC=nop             
  nop                            #  254   0x14c633  1      OPC=nop             
  nop                            #  255   0x14c634  1      OPC=nop             
.L_14c620:                       #        0x14c635  0      OPC=<label>         
  movl $0x2d, %r9d               #  256   0x14c635  6      OPC=movl_r32_imm32  
  jmpq .L_14c500                 #  257   0x14c63b  5      OPC=jmpq_label_1    
  nop                            #  258   0x14c640  1      OPC=nop             
  nop                            #  259   0x14c641  1      OPC=nop             
  nop                            #  260   0x14c642  1      OPC=nop             
  nop                            #  261   0x14c643  1      OPC=nop             
  nop                            #  262   0x14c644  1      OPC=nop             
  nop                            #  263   0x14c645  1      OPC=nop             
  nop                            #  264   0x14c646  1      OPC=nop             
  nop                            #  265   0x14c647  1      OPC=nop             
  nop                            #  266   0x14c648  1      OPC=nop             
  nop                            #  267   0x14c649  1      OPC=nop             
  nop                            #  268   0x14c64a  1      OPC=nop             
  nop                            #  269   0x14c64b  1      OPC=nop             
  nop                            #  270   0x14c64c  1      OPC=nop             
  nop                            #  271   0x14c64d  1      OPC=nop             
  nop                            #  272   0x14c64e  1      OPC=nop             
  nop                            #  273   0x14c64f  1      OPC=nop             
  nop                            #  274   0x14c650  1      OPC=nop             
  nop                            #  275   0x14c651  1      OPC=nop             
  nop                            #  276   0x14c652  1      OPC=nop             
  nop                            #  277   0x14c653  1      OPC=nop             
  nop                            #  278   0x14c654  1      OPC=nop             
                                                                               
.size __sccl, .-__sccl
