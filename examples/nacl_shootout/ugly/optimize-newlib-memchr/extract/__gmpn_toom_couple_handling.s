  .text
  .globl __gmpn_toom_couple_handling
  .type __gmpn_toom_couple_handling, @function

#! file-offset 0x895c0
#! rip-offset  0x495c0
#! capacity    768 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmpn_toom_couple_handling:  #        0x495c0  0      OPC=<label>         
  pushq %r14                   #  1     0x495c0  2      OPC=pushq_r64_1     
  movl %r9d, %r14d             #  2     0x495c2  3      OPC=movl_r32_r32    
  pushq %r13                   #  3     0x495c5  2      OPC=pushq_r64_1     
  movl %edi, %r13d             #  4     0x495c7  3      OPC=movl_r32_r32    
  pushq %r12                   #  5     0x495ca  2      OPC=pushq_r64_1     
  movl %edx, %r12d             #  6     0x495cc  3      OPC=movl_r32_r32    
  pushq %rbx                   #  7     0x495cf  1      OPC=pushq_r64_1     
  movl %r8d, %ebx              #  8     0x495d0  3      OPC=movl_r32_r32    
  subl $0x18, %esp             #  9     0x495d3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  10    0x495d6  3      OPC=addq_r64_r64    
  testl %ecx, %ecx             #  11    0x495d9  2      OPC=testl_r32_r32   
  movl %esi, 0xc(%rsp)         #  12    0x495db  4      OPC=movl_m32_r32    
  nop                          #  13    0x495df  1      OPC=nop             
  je .L_49860                  #  14    0x495e0  6      OPC=je_label_1      
  movl %esi, %ecx              #  15    0x495e6  2      OPC=movl_r32_r32    
  movl %r12d, %edx             #  16    0x495e8  3      OPC=movl_r32_r32    
  movl %r13d, %esi             #  17    0x495eb  3      OPC=movl_r32_r32    
  movl %r12d, %edi             #  18    0x495ee  3      OPC=movl_r32_r32    
  nop                          #  19    0x495f1  1      OPC=nop             
  nop                          #  20    0x495f2  1      OPC=nop             
  nop                          #  21    0x495f3  1      OPC=nop             
  nop                          #  22    0x495f4  1      OPC=nop             
  nop                          #  23    0x495f5  1      OPC=nop             
  nop                          #  24    0x495f6  1      OPC=nop             
  nop                          #  25    0x495f7  1      OPC=nop             
  nop                          #  26    0x495f8  1      OPC=nop             
  nop                          #  27    0x495f9  1      OPC=nop             
  nop                          #  28    0x495fa  1      OPC=nop             
  callq .__gmpn_sub_n          #  29    0x495fb  5      OPC=callq_label     
.L_49600:                      #        0x49600  0      OPC=<label>         
  movl 0xc(%rsp), %edx         #  30    0x49600  4      OPC=movl_r32_m32    
  movl $0x1, %ecx              #  31    0x49604  5      OPC=movl_r32_imm32  
  movl %r12d, %esi             #  32    0x49609  3      OPC=movl_r32_r32    
  movl %r12d, %edi             #  33    0x4960c  3      OPC=movl_r32_r32    
  nop                          #  34    0x4960f  1      OPC=nop             
  nop                          #  35    0x49610  1      OPC=nop             
  nop                          #  36    0x49611  1      OPC=nop             
  nop                          #  37    0x49612  1      OPC=nop             
  nop                          #  38    0x49613  1      OPC=nop             
  nop                          #  39    0x49614  1      OPC=nop             
  nop                          #  40    0x49615  1      OPC=nop             
  nop                          #  41    0x49616  1      OPC=nop             
  nop                          #  42    0x49617  1      OPC=nop             
  nop                          #  43    0x49618  1      OPC=nop             
  nop                          #  44    0x49619  1      OPC=nop             
  nop                          #  45    0x4961a  1      OPC=nop             
  callq .__gmpn_rshift         #  46    0x4961b  5      OPC=callq_label     
  movl 0xc(%rsp), %ecx         #  47    0x49620  4      OPC=movl_r32_m32    
  movl %r12d, %edx             #  48    0x49624  3      OPC=movl_r32_r32    
  movl %r13d, %esi             #  49    0x49627  3      OPC=movl_r32_r32    
  movl %r13d, %edi             #  50    0x4962a  3      OPC=movl_r32_r32    
  nop                          #  51    0x4962d  1      OPC=nop             
  nop                          #  52    0x4962e  1      OPC=nop             
  nop                          #  53    0x4962f  1      OPC=nop             
  nop                          #  54    0x49630  1      OPC=nop             
  nop                          #  55    0x49631  1      OPC=nop             
  nop                          #  56    0x49632  1      OPC=nop             
  nop                          #  57    0x49633  1      OPC=nop             
  nop                          #  58    0x49634  1      OPC=nop             
  nop                          #  59    0x49635  1      OPC=nop             
  nop                          #  60    0x49636  1      OPC=nop             
  nop                          #  61    0x49637  1      OPC=nop             
  nop                          #  62    0x49638  1      OPC=nop             
  nop                          #  63    0x49639  1      OPC=nop             
  nop                          #  64    0x4963a  1      OPC=nop             
  callq .__gmpn_sub_n          #  65    0x4963b  5      OPC=callq_label     
  testl %r14d, %r14d           #  66    0x49640  3      OPC=testl_r32_r32   
  jle .L_49660                 #  67    0x49643  2      OPC=jle_label       
  movl 0xc(%rsp), %edx         #  68    0x49645  4      OPC=movl_r32_m32    
  movl %r14d, %ecx             #  69    0x49649  3      OPC=movl_r32_r32    
  movl %r13d, %esi             #  70    0x4964c  3      OPC=movl_r32_r32    
  movl %r13d, %edi             #  71    0x4964f  3      OPC=movl_r32_r32    
  nop                          #  72    0x49652  1      OPC=nop             
  nop                          #  73    0x49653  1      OPC=nop             
  nop                          #  74    0x49654  1      OPC=nop             
  nop                          #  75    0x49655  1      OPC=nop             
  nop                          #  76    0x49656  1      OPC=nop             
  nop                          #  77    0x49657  1      OPC=nop             
  nop                          #  78    0x49658  1      OPC=nop             
  nop                          #  79    0x49659  1      OPC=nop             
  nop                          #  80    0x4965a  1      OPC=nop             
  callq .__gmpn_rshift         #  81    0x4965b  5      OPC=callq_label     
.L_49660:                      #        0x49660  0      OPC=<label>         
  movl 0x40(%rsp), %eax        #  82    0x49660  4      OPC=movl_r32_m32    
  testl %eax, %eax             #  83    0x49664  2      OPC=testl_r32_r32   
  jle .L_49680                 #  84    0x49666  2      OPC=jle_label       
  movl 0x40(%rsp), %ecx        #  85    0x49668  4      OPC=movl_r32_m32    
  movl 0xc(%rsp), %edx         #  86    0x4966c  4      OPC=movl_r32_m32    
  movl %r12d, %esi             #  87    0x49670  3      OPC=movl_r32_r32    
  movl %r12d, %edi             #  88    0x49673  3      OPC=movl_r32_r32    
  nop                          #  89    0x49676  1      OPC=nop             
  nop                          #  90    0x49677  1      OPC=nop             
  nop                          #  91    0x49678  1      OPC=nop             
  nop                          #  92    0x49679  1      OPC=nop             
  nop                          #  93    0x4967a  1      OPC=nop             
  callq .__gmpn_rshift         #  94    0x4967b  5      OPC=callq_label     
.L_49680:                      #        0x49680  0      OPC=<label>         
  movl 0xc(%rsp), %eax         #  95    0x49680  4      OPC=movl_r32_m32    
  leal (%r13,%rbx,4), %edi     #  96    0x49684  5      OPC=leal_r32_m16    
  movl %r12d, %edx             #  97    0x49689  3      OPC=movl_r32_r32    
  movl %edi, %esi              #  98    0x4968c  2      OPC=movl_r32_r32    
  leal (%r13,%rax,4), %r14d    #  99    0x4968e  5      OPC=leal_r32_m16    
  movl %eax, %r13d             #  100   0x49693  3      OPC=movl_r32_r32    
  subl %ebx, %r13d             #  101   0x49696  3      OPC=subl_r32_r32    
  leal (%r12,%r13,4), %r12d    #  102   0x49699  4      OPC=leal_r32_m16    
  movl %r13d, %ecx             #  103   0x4969d  3      OPC=movl_r32_r32    
  nop                          #  104   0x496a0  1      OPC=nop             
  nop                          #  105   0x496a1  1      OPC=nop             
  nop                          #  106   0x496a2  1      OPC=nop             
  nop                          #  107   0x496a3  1      OPC=nop             
  nop                          #  108   0x496a4  1      OPC=nop             
  nop                          #  109   0x496a5  1      OPC=nop             
  nop                          #  110   0x496a6  1      OPC=nop             
  nop                          #  111   0x496a7  1      OPC=nop             
  nop                          #  112   0x496a8  1      OPC=nop             
  nop                          #  113   0x496a9  1      OPC=nop             
  nop                          #  114   0x496aa  1      OPC=nop             
  nop                          #  115   0x496ab  1      OPC=nop             
  nop                          #  116   0x496ac  1      OPC=nop             
  nop                          #  117   0x496ad  1      OPC=nop             
  nop                          #  118   0x496ae  1      OPC=nop             
  nop                          #  119   0x496af  1      OPC=nop             
  nop                          #  120   0x496b0  1      OPC=nop             
  nop                          #  121   0x496b1  1      OPC=nop             
  nop                          #  122   0x496b2  1      OPC=nop             
  nop                          #  123   0x496b3  1      OPC=nop             
  nop                          #  124   0x496b4  1      OPC=nop             
  nop                          #  125   0x496b5  1      OPC=nop             
  nop                          #  126   0x496b6  1      OPC=nop             
  nop                          #  127   0x496b7  1      OPC=nop             
  nop                          #  128   0x496b8  1      OPC=nop             
  nop                          #  129   0x496b9  1      OPC=nop             
  nop                          #  130   0x496ba  1      OPC=nop             
  callq .__gmpn_add_n          #  131   0x496bb  5      OPC=callq_label     
  movl %r14d, %r14d            #  132   0x496c0  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r14,1)     #  133   0x496c3  4      OPC=movl_m32_r32    
  movl %r12d, %r12d            #  134   0x496c7  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %edx     #  135   0x496ca  4      OPC=movl_r32_m32    
  addl %eax, %edx              #  136   0x496ce  2      OPC=addl_r32_r32    
  cmpl %edx, %eax              #  137   0x496d0  2      OPC=cmpl_r32_r32    
  movl %r14d, %r14d            #  138   0x496d2  3      OPC=movl_r32_r32    
  movl %edx, (%r15,%r14,1)     #  139   0x496d5  4      OPC=movl_m32_r32    
  jbe .L_497e0                 #  140   0x496d9  6      OPC=jbe_label_1     
  nop                          #  141   0x496df  1      OPC=nop             
  cmpl $0x1, %ebx              #  142   0x496e0  3      OPC=cmpl_r32_imm8   
  jle .L_497c0                 #  143   0x496e3  6      OPC=jle_label_1     
  movl %r12d, %r12d            #  144   0x496e9  3      OPC=movl_r32_r32    
  movl 0x4(%r15,%r12,1), %eax  #  145   0x496ec  5      OPC=movl_r32_m32    
  addl $0x1, %eax              #  146   0x496f1  3      OPC=addl_r32_imm8   
  testl %eax, %eax             #  147   0x496f4  2      OPC=testl_r32_r32   
  movl %r14d, %r14d            #  148   0x496f6  3      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%r14,1)  #  149   0x496f9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax               #  150   0x496fe  2      OPC=xchgw_ax_r16    
  jne .L_498a0                 #  151   0x49700  6      OPC=jne_label_1     
  movl %r12d, %ecx             #  152   0x49706  3      OPC=movl_r32_r32    
  movl %r14d, %edx             #  153   0x49709  3      OPC=movl_r32_r32    
  movb $0x2, %al               #  154   0x4970c  2      OPC=movb_r8_imm8    
  nop                          #  155   0x4970e  1      OPC=nop             
  nop                          #  156   0x4970f  1      OPC=nop             
  nop                          #  157   0x49710  1      OPC=nop             
  nop                          #  158   0x49711  1      OPC=nop             
  nop                          #  159   0x49712  1      OPC=nop             
  nop                          #  160   0x49713  1      OPC=nop             
  nop                          #  161   0x49714  1      OPC=nop             
  nop                          #  162   0x49715  1      OPC=nop             
  nop                          #  163   0x49716  1      OPC=nop             
  nop                          #  164   0x49717  1      OPC=nop             
  nop                          #  165   0x49718  1      OPC=nop             
  nop                          #  166   0x49719  1      OPC=nop             
  nop                          #  167   0x4971a  1      OPC=nop             
  nop                          #  168   0x4971b  1      OPC=nop             
  nop                          #  169   0x4971c  1      OPC=nop             
  nop                          #  170   0x4971d  1      OPC=nop             
  nop                          #  171   0x4971e  1      OPC=nop             
  nop                          #  172   0x4971f  1      OPC=nop             
.L_49720:                      #        0x49720  0      OPC=<label>         
  cmpl %eax, %ebx              #  173   0x49720  2      OPC=cmpl_r32_r32    
  jle .L_497c0                 #  174   0x49722  6      OPC=jle_label_1     
  movl %ecx, %esi              #  175   0x49728  2      OPC=movl_r32_r32    
  movl %edx, %edi              #  176   0x4972a  2      OPC=movl_r32_r32    
  addl $0x1, %eax              #  177   0x4972c  3      OPC=addl_r32_imm8   
  movl %esi, %esi              #  178   0x4972f  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %esi  #  179   0x49731  5      OPC=movl_r32_m32    
  addl $0x4, %ecx              #  180   0x49736  3      OPC=addl_r32_imm8   
  addl $0x4, %edx              #  181   0x49739  3      OPC=addl_r32_imm8   
  addl $0x1, %esi              #  182   0x4973c  3      OPC=addl_r32_imm8   
  nop                          #  183   0x4973f  1      OPC=nop             
  testl %esi, %esi             #  184   0x49740  2      OPC=testl_r32_r32   
  movl %edi, %edi              #  185   0x49742  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rdi,1)  #  186   0x49744  5      OPC=movl_m32_r32    
  je .L_49720                  #  187   0x49749  2      OPC=je_label        
  nop                          #  188   0x4974b  1      OPC=nop             
  nop                          #  189   0x4974c  1      OPC=nop             
  nop                          #  190   0x4974d  1      OPC=nop             
  nop                          #  191   0x4974e  1      OPC=nop             
  nop                          #  192   0x4974f  1      OPC=nop             
  nop                          #  193   0x49750  1      OPC=nop             
  nop                          #  194   0x49751  1      OPC=nop             
  nop                          #  195   0x49752  1      OPC=nop             
  nop                          #  196   0x49753  1      OPC=nop             
  nop                          #  197   0x49754  1      OPC=nop             
  nop                          #  198   0x49755  1      OPC=nop             
  nop                          #  199   0x49756  1      OPC=nop             
  nop                          #  200   0x49757  1      OPC=nop             
  nop                          #  201   0x49758  1      OPC=nop             
  nop                          #  202   0x49759  1      OPC=nop             
  nop                          #  203   0x4975a  1      OPC=nop             
  nop                          #  204   0x4975b  1      OPC=nop             
  nop                          #  205   0x4975c  1      OPC=nop             
  nop                          #  206   0x4975d  1      OPC=nop             
  nop                          #  207   0x4975e  1      OPC=nop             
  nop                          #  208   0x4975f  1      OPC=nop             
.L_49760:                      #        0x49760  0      OPC=<label>         
  cmpl %r12d, %r14d            #  209   0x49760  3      OPC=cmpl_r32_r32    
  je .L_497c0                  #  210   0x49763  2      OPC=je_label        
  cmpl %eax, %ebx              #  211   0x49765  2      OPC=cmpl_r32_r32    
  jle .L_497c0                 #  212   0x49767  2      OPC=jle_label       
  leal (,%rax,4), %edx         #  213   0x49769  7      OPC=leal_r32_m16    
  leal (%rdx,%r12,1), %r12d    #  214   0x49770  4      OPC=leal_r32_m16    
  leal (%rdx,%r14,1), %r14d    #  215   0x49774  4      OPC=leal_r32_m16    
  nop                          #  216   0x49778  1      OPC=nop             
  nop                          #  217   0x49779  1      OPC=nop             
  nop                          #  218   0x4977a  1      OPC=nop             
  nop                          #  219   0x4977b  1      OPC=nop             
  nop                          #  220   0x4977c  1      OPC=nop             
  nop                          #  221   0x4977d  1      OPC=nop             
  nop                          #  222   0x4977e  1      OPC=nop             
  nop                          #  223   0x4977f  1      OPC=nop             
.L_49780:                      #        0x49780  0      OPC=<label>         
  movl %r12d, %ecx             #  224   0x49780  3      OPC=movl_r32_r32    
  addl $0x1, %eax              #  225   0x49783  3      OPC=addl_r32_imm8   
  movl %r14d, %edx             #  226   0x49786  3      OPC=movl_r32_r32    
  movl %ecx, %ecx              #  227   0x49789  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %ecx     #  228   0x4978b  4      OPC=movl_r32_m32    
  addl $0x4, %r12d             #  229   0x4978f  4      OPC=addl_r32_imm8   
  addl $0x4, %r14d             #  230   0x49793  4      OPC=addl_r32_imm8   
  cmpl %eax, %ebx              #  231   0x49797  2      OPC=cmpl_r32_r32    
  movl %edx, %edx              #  232   0x49799  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)     #  233   0x4979b  4      OPC=movl_m32_r32    
  nop                          #  234   0x4979f  1      OPC=nop             
  jg .L_49780                  #  235   0x497a0  2      OPC=jg_label        
  nop                          #  236   0x497a2  1      OPC=nop             
  nop                          #  237   0x497a3  1      OPC=nop             
  nop                          #  238   0x497a4  1      OPC=nop             
  nop                          #  239   0x497a5  1      OPC=nop             
  nop                          #  240   0x497a6  1      OPC=nop             
  nop                          #  241   0x497a7  1      OPC=nop             
  nop                          #  242   0x497a8  1      OPC=nop             
  nop                          #  243   0x497a9  1      OPC=nop             
  nop                          #  244   0x497aa  1      OPC=nop             
  nop                          #  245   0x497ab  1      OPC=nop             
  nop                          #  246   0x497ac  1      OPC=nop             
  nop                          #  247   0x497ad  1      OPC=nop             
  nop                          #  248   0x497ae  1      OPC=nop             
  nop                          #  249   0x497af  1      OPC=nop             
  nop                          #  250   0x497b0  1      OPC=nop             
  nop                          #  251   0x497b1  1      OPC=nop             
  nop                          #  252   0x497b2  1      OPC=nop             
  nop                          #  253   0x497b3  1      OPC=nop             
  nop                          #  254   0x497b4  1      OPC=nop             
  nop                          #  255   0x497b5  1      OPC=nop             
  nop                          #  256   0x497b6  1      OPC=nop             
  nop                          #  257   0x497b7  1      OPC=nop             
  nop                          #  258   0x497b8  1      OPC=nop             
  nop                          #  259   0x497b9  1      OPC=nop             
  nop                          #  260   0x497ba  1      OPC=nop             
  nop                          #  261   0x497bb  1      OPC=nop             
  nop                          #  262   0x497bc  1      OPC=nop             
  nop                          #  263   0x497bd  1      OPC=nop             
  nop                          #  264   0x497be  1      OPC=nop             
  nop                          #  265   0x497bf  1      OPC=nop             
.L_497c0:                      #        0x497c0  0      OPC=<label>         
  addl $0x18, %esp             #  266   0x497c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  267   0x497c3  3      OPC=addq_r64_r64    
  popq %rbx                    #  268   0x497c6  1      OPC=popq_r64_1      
  popq %r12                    #  269   0x497c7  2      OPC=popq_r64_1      
  popq %r13                    #  270   0x497c9  2      OPC=popq_r64_1      
  popq %r14                    #  271   0x497cb  2      OPC=popq_r64_1      
  popq %r11                    #  272   0x497cd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  273   0x497cf  7      OPC=andl_r32_imm32  
  nop                          #  274   0x497d6  1      OPC=nop             
  nop                          #  275   0x497d7  1      OPC=nop             
  nop                          #  276   0x497d8  1      OPC=nop             
  nop                          #  277   0x497d9  1      OPC=nop             
  addq %r15, %r11              #  278   0x497da  3      OPC=addq_r64_r64    
  jmpq %r11                    #  279   0x497dd  3      OPC=jmpq_r64        
  nop                          #  280   0x497e0  1      OPC=nop             
  nop                          #  281   0x497e1  1      OPC=nop             
  nop                          #  282   0x497e2  1      OPC=nop             
  nop                          #  283   0x497e3  1      OPC=nop             
  nop                          #  284   0x497e4  1      OPC=nop             
  nop                          #  285   0x497e5  1      OPC=nop             
  nop                          #  286   0x497e6  1      OPC=nop             
.L_497e0:                      #        0x497e7  0      OPC=<label>         
  cmpl %r12d, %r14d            #  287   0x497e7  3      OPC=cmpl_r32_r32    
  je .L_497c0                  #  288   0x497ea  2      OPC=je_label        
  cmpl $0x1, %ebx              #  289   0x497ec  3      OPC=cmpl_r32_imm8   
  jle .L_497c0                 #  290   0x497ef  2      OPC=jle_label       
  movl $0x1, %eax              #  291   0x497f1  5      OPC=movl_r32_imm32  
  xchgw %ax, %ax               #  292   0x497f6  2      OPC=xchgw_ax_r16    
  nop                          #  293   0x497f8  1      OPC=nop             
  nop                          #  294   0x497f9  1      OPC=nop             
  nop                          #  295   0x497fa  1      OPC=nop             
  nop                          #  296   0x497fb  1      OPC=nop             
  nop                          #  297   0x497fc  1      OPC=nop             
  nop                          #  298   0x497fd  1      OPC=nop             
  nop                          #  299   0x497fe  1      OPC=nop             
  nop                          #  300   0x497ff  1      OPC=nop             
  nop                          #  301   0x49800  1      OPC=nop             
  nop                          #  302   0x49801  1      OPC=nop             
  nop                          #  303   0x49802  1      OPC=nop             
  nop                          #  304   0x49803  1      OPC=nop             
  nop                          #  305   0x49804  1      OPC=nop             
  nop                          #  306   0x49805  1      OPC=nop             
  nop                          #  307   0x49806  1      OPC=nop             
.L_49800:                      #        0x49807  0      OPC=<label>         
  movl %r12d, %ecx             #  308   0x49807  3      OPC=movl_r32_r32    
  addl $0x1, %eax              #  309   0x4980a  3      OPC=addl_r32_imm8   
  movl %r14d, %edx             #  310   0x4980d  3      OPC=movl_r32_r32    
  movl %ecx, %ecx              #  311   0x49810  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rcx,1), %ecx  #  312   0x49812  5      OPC=movl_r32_m32    
  addl $0x4, %r12d             #  313   0x49817  4      OPC=addl_r32_imm8   
  addl $0x4, %r14d             #  314   0x4981b  4      OPC=addl_r32_imm8   
  cmpl %ebx, %eax              #  315   0x4981f  2      OPC=cmpl_r32_r32    
  nop                          #  316   0x49821  1      OPC=nop             
  nop                          #  317   0x49822  1      OPC=nop             
  nop                          #  318   0x49823  1      OPC=nop             
  nop                          #  319   0x49824  1      OPC=nop             
  nop                          #  320   0x49825  1      OPC=nop             
  nop                          #  321   0x49826  1      OPC=nop             
  movl %edx, %edx              #  322   0x49827  2      OPC=movl_r32_r32    
  movl %ecx, 0x4(%r15,%rdx,1)  #  323   0x49829  5      OPC=movl_m32_r32    
  jne .L_49800                 #  324   0x4982e  2      OPC=jne_label       
  addl $0x18, %esp             #  325   0x49830  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  326   0x49833  3      OPC=addq_r64_r64    
  popq %rbx                    #  327   0x49836  1      OPC=popq_r64_1      
  popq %r12                    #  328   0x49837  2      OPC=popq_r64_1      
  popq %r13                    #  329   0x49839  2      OPC=popq_r64_1      
  popq %r14                    #  330   0x4983b  2      OPC=popq_r64_1      
  popq %r11                    #  331   0x4983d  2      OPC=popq_r64_1      
  nop                          #  332   0x4983f  1      OPC=nop             
  nop                          #  333   0x49840  1      OPC=nop             
  nop                          #  334   0x49841  1      OPC=nop             
  nop                          #  335   0x49842  1      OPC=nop             
  nop                          #  336   0x49843  1      OPC=nop             
  nop                          #  337   0x49844  1      OPC=nop             
  nop                          #  338   0x49845  1      OPC=nop             
  nop                          #  339   0x49846  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  340   0x49847  7      OPC=andl_r32_imm32  
  nop                          #  341   0x4984e  1      OPC=nop             
  nop                          #  342   0x4984f  1      OPC=nop             
  nop                          #  343   0x49850  1      OPC=nop             
  nop                          #  344   0x49851  1      OPC=nop             
  addq %r15, %r11              #  345   0x49852  3      OPC=addq_r64_r64    
  jmpq %r11                    #  346   0x49855  3      OPC=jmpq_r64        
  nop                          #  347   0x49858  1      OPC=nop             
  nop                          #  348   0x49859  1      OPC=nop             
  nop                          #  349   0x4985a  1      OPC=nop             
  nop                          #  350   0x4985b  1      OPC=nop             
  nop                          #  351   0x4985c  1      OPC=nop             
  nop                          #  352   0x4985d  1      OPC=nop             
  nop                          #  353   0x4985e  1      OPC=nop             
  nop                          #  354   0x4985f  1      OPC=nop             
  nop                          #  355   0x49860  1      OPC=nop             
  nop                          #  356   0x49861  1      OPC=nop             
  nop                          #  357   0x49862  1      OPC=nop             
  nop                          #  358   0x49863  1      OPC=nop             
  nop                          #  359   0x49864  1      OPC=nop             
  nop                          #  360   0x49865  1      OPC=nop             
  nop                          #  361   0x49866  1      OPC=nop             
  nop                          #  362   0x49867  1      OPC=nop             
  nop                          #  363   0x49868  1      OPC=nop             
  nop                          #  364   0x49869  1      OPC=nop             
  nop                          #  365   0x4986a  1      OPC=nop             
  nop                          #  366   0x4986b  1      OPC=nop             
  nop                          #  367   0x4986c  1      OPC=nop             
  nop                          #  368   0x4986d  1      OPC=nop             
.L_49860:                      #        0x4986e  0      OPC=<label>         
  movl 0xc(%rsp), %ecx         #  369   0x4986e  4      OPC=movl_r32_m32    
  movl %r12d, %edx             #  370   0x49872  3      OPC=movl_r32_r32    
  movl %r13d, %esi             #  371   0x49875  3      OPC=movl_r32_r32    
  movl %r12d, %edi             #  372   0x49878  3      OPC=movl_r32_r32    
  nop                          #  373   0x4987b  1      OPC=nop             
  nop                          #  374   0x4987c  1      OPC=nop             
  nop                          #  375   0x4987d  1      OPC=nop             
  nop                          #  376   0x4987e  1      OPC=nop             
  nop                          #  377   0x4987f  1      OPC=nop             
  nop                          #  378   0x49880  1      OPC=nop             
  nop                          #  379   0x49881  1      OPC=nop             
  nop                          #  380   0x49882  1      OPC=nop             
  nop                          #  381   0x49883  1      OPC=nop             
  nop                          #  382   0x49884  1      OPC=nop             
  nop                          #  383   0x49885  1      OPC=nop             
  nop                          #  384   0x49886  1      OPC=nop             
  nop                          #  385   0x49887  1      OPC=nop             
  nop                          #  386   0x49888  1      OPC=nop             
  callq .__gmpn_add_n          #  387   0x49889  5      OPC=callq_label     
  jmpq .L_49600                #  388   0x4988e  5      OPC=jmpq_label_1    
  nop                          #  389   0x49893  1      OPC=nop             
  nop                          #  390   0x49894  1      OPC=nop             
  nop                          #  391   0x49895  1      OPC=nop             
  nop                          #  392   0x49896  1      OPC=nop             
  nop                          #  393   0x49897  1      OPC=nop             
  nop                          #  394   0x49898  1      OPC=nop             
  nop                          #  395   0x49899  1      OPC=nop             
  nop                          #  396   0x4989a  1      OPC=nop             
  nop                          #  397   0x4989b  1      OPC=nop             
  nop                          #  398   0x4989c  1      OPC=nop             
  nop                          #  399   0x4989d  1      OPC=nop             
  nop                          #  400   0x4989e  1      OPC=nop             
  nop                          #  401   0x4989f  1      OPC=nop             
  nop                          #  402   0x498a0  1      OPC=nop             
  nop                          #  403   0x498a1  1      OPC=nop             
  nop                          #  404   0x498a2  1      OPC=nop             
  nop                          #  405   0x498a3  1      OPC=nop             
  nop                          #  406   0x498a4  1      OPC=nop             
  nop                          #  407   0x498a5  1      OPC=nop             
  nop                          #  408   0x498a6  1      OPC=nop             
  nop                          #  409   0x498a7  1      OPC=nop             
  nop                          #  410   0x498a8  1      OPC=nop             
  nop                          #  411   0x498a9  1      OPC=nop             
  nop                          #  412   0x498aa  1      OPC=nop             
  nop                          #  413   0x498ab  1      OPC=nop             
  nop                          #  414   0x498ac  1      OPC=nop             
  nop                          #  415   0x498ad  1      OPC=nop             
.L_498a0:                      #        0x498ae  0      OPC=<label>         
  movl $0x2, %eax              #  416   0x498ae  5      OPC=movl_r32_imm32  
  jmpq .L_49760                #  417   0x498b3  5      OPC=jmpq_label_1    
  nop                          #  418   0x498b8  1      OPC=nop             
  nop                          #  419   0x498b9  1      OPC=nop             
  nop                          #  420   0x498ba  1      OPC=nop             
  nop                          #  421   0x498bb  1      OPC=nop             
  nop                          #  422   0x498bc  1      OPC=nop             
  nop                          #  423   0x498bd  1      OPC=nop             
  nop                          #  424   0x498be  1      OPC=nop             
  nop                          #  425   0x498bf  1      OPC=nop             
  nop                          #  426   0x498c0  1      OPC=nop             
  nop                          #  427   0x498c1  1      OPC=nop             
  nop                          #  428   0x498c2  1      OPC=nop             
  nop                          #  429   0x498c3  1      OPC=nop             
  nop                          #  430   0x498c4  1      OPC=nop             
  nop                          #  431   0x498c5  1      OPC=nop             
  nop                          #  432   0x498c6  1      OPC=nop             
  nop                          #  433   0x498c7  1      OPC=nop             
  nop                          #  434   0x498c8  1      OPC=nop             
  nop                          #  435   0x498c9  1      OPC=nop             
  nop                          #  436   0x498ca  1      OPC=nop             
  nop                          #  437   0x498cb  1      OPC=nop             
  nop                          #  438   0x498cc  1      OPC=nop             
  nop                          #  439   0x498cd  1      OPC=nop             
                                                                            
.size __gmpn_toom_couple_handling, .-__gmpn_toom_couple_handling
