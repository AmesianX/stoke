  .text
  .globl _ZSt13__int_to_charIwmEiPT_T0_PKS0_St13_Ios_Fmtflagsb
  .type _ZSt13__int_to_charIwmEiPT_T0_PKS0_St13_Ios_Fmtflagsb, @function

#! file-offset 0xf2480
#! rip-offset  0xb2480
#! capacity    320 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode    
._ZSt13__int_to_charIwmEiPT_T0_PKS0_St13_Ios_Fmtflagsb:  #        0xb2480  0      OPC=0     
  testb %r8b, %r8b                                       #  1     0xb2480  3      OPC=2440  
  movl %edi, %edi                                        #  2     0xb2483  2      OPC=1157  
  movl %edx, %r9d                                        #  3     0xb2485  3      OPC=1157  
  je .L_b2500                                            #  4     0xb2488  6      OPC=893   
  nop                                                    #  5     0xb248e  1      OPC=1343  
  nop                                                    #  6     0xb248f  1      OPC=1343  
  movq %rdi, %rcx                                        #  7     0xb2490  3      OPC=1162  
  movl $0xcccccccd, %r8d                                 #  8     0xb2493  7      OPC=1155  
  nop                                                    #  9     0xb249a  1      OPC=1343  
  nop                                                    #  10    0xb249b  1      OPC=1343  
  nop                                                    #  11    0xb249c  1      OPC=1343  
  nop                                                    #  12    0xb249d  1      OPC=1343  
  nop                                                    #  13    0xb249e  1      OPC=1343  
  nop                                                    #  14    0xb249f  1      OPC=1343  
  nop                                                    #  15    0xb24a0  1      OPC=1343  
  nop                                                    #  16    0xb24a1  1      OPC=1343  
  nop                                                    #  17    0xb24a2  1      OPC=1343  
  nop                                                    #  18    0xb24a3  1      OPC=1343  
  nop                                                    #  19    0xb24a4  1      OPC=1343  
  nop                                                    #  20    0xb24a5  1      OPC=1343  
  nop                                                    #  21    0xb24a6  1      OPC=1343  
.L_b24a0:                                                #        0xb24a7  0      OPC=0     
  movl %esi, %eax                                        #  22    0xb24a7  2      OPC=1157  
  subl $0x4, %ecx                                        #  23    0xb24a9  3      OPC=2384  
  mull %r8d                                              #  24    0xb24ac  3      OPC=1317  
  shrl $0x3, %edx                                        #  25    0xb24af  3      OPC=2312  
  leal (%rdx,%rdx,4), %eax                               #  26    0xb24b2  3      OPC=1066  
  addl %eax, %eax                                        #  27    0xb24b5  2      OPC=67    
  subl %eax, %esi                                        #  28    0xb24b7  2      OPC=2386  
  testl %edx, %edx                                       #  29    0xb24b9  2      OPC=2436  
  leal 0x10(%r9,%rsi,4), %esi                            #  30    0xb24bb  5      OPC=1066  
  movl %esi, %esi                                        #  31    0xb24c0  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                               #  32    0xb24c2  4      OPC=1156  
  nop                                                    #  33    0xb24c6  1      OPC=1343  
  movl %edx, %esi                                        #  34    0xb24c7  2      OPC=1157  
  movl %ecx, %ecx                                        #  35    0xb24c9  2      OPC=1157  
  movl %eax, (%r15,%rcx,1)                               #  36    0xb24cb  4      OPC=1136  
  jne .L_b24a0                                           #  37    0xb24cf  6      OPC=963   
  nop                                                    #  38    0xb24d5  1      OPC=1343  
  nop                                                    #  39    0xb24d6  1      OPC=1343  
  nop                                                    #  40    0xb24d7  1      OPC=1343  
  nop                                                    #  41    0xb24d8  1      OPC=1343  
  nop                                                    #  42    0xb24d9  1      OPC=1343  
  nop                                                    #  43    0xb24da  1      OPC=1343  
  nop                                                    #  44    0xb24db  1      OPC=1343  
  nop                                                    #  45    0xb24dc  1      OPC=1343  
  nop                                                    #  46    0xb24dd  1      OPC=1343  
  nop                                                    #  47    0xb24de  1      OPC=1343  
  nop                                                    #  48    0xb24df  1      OPC=1343  
  nop                                                    #  49    0xb24e0  1      OPC=1343  
  nop                                                    #  50    0xb24e1  1      OPC=1343  
  nop                                                    #  51    0xb24e2  1      OPC=1343  
  nop                                                    #  52    0xb24e3  1      OPC=1343  
  nop                                                    #  53    0xb24e4  1      OPC=1343  
  nop                                                    #  54    0xb24e5  1      OPC=1343  
  nop                                                    #  55    0xb24e6  1      OPC=1343  
  nop                                                    #  56    0xb24e7  1      OPC=1343  
  nop                                                    #  57    0xb24e8  1      OPC=1343  
  nop                                                    #  58    0xb24e9  1      OPC=1343  
  nop                                                    #  59    0xb24ea  1      OPC=1343  
  nop                                                    #  60    0xb24eb  1      OPC=1343  
  nop                                                    #  61    0xb24ec  1      OPC=1343  
.L_b24e0:                                                #        0xb24ed  0      OPC=0     
  popq %r11                                              #  62    0xb24ed  2      OPC=1694  
  movl %edi, %eax                                        #  63    0xb24ef  2      OPC=1157  
  subl %ecx, %eax                                        #  64    0xb24f1  2      OPC=2386  
  sarl $0x2, %eax                                        #  65    0xb24f3  3      OPC=2096  
  andl $0xffffffe0, %r11d                                #  66    0xb24f6  7      OPC=131   
  nop                                                    #  67    0xb24fd  1      OPC=1343  
  nop                                                    #  68    0xb24fe  1      OPC=1343  
  nop                                                    #  69    0xb24ff  1      OPC=1343  
  nop                                                    #  70    0xb2500  1      OPC=1343  
  addq %r15, %r11                                        #  71    0xb2501  3      OPC=72    
  jmpq %r11                                              #  72    0xb2504  3      OPC=928   
  nop                                                    #  73    0xb2507  1      OPC=1343  
  nop                                                    #  74    0xb2508  1      OPC=1343  
  nop                                                    #  75    0xb2509  1      OPC=1343  
  nop                                                    #  76    0xb250a  1      OPC=1343  
  nop                                                    #  77    0xb250b  1      OPC=1343  
  nop                                                    #  78    0xb250c  1      OPC=1343  
  nop                                                    #  79    0xb250d  1      OPC=1343  
  nop                                                    #  80    0xb250e  1      OPC=1343  
  nop                                                    #  81    0xb250f  1      OPC=1343  
  nop                                                    #  82    0xb2510  1      OPC=1343  
  nop                                                    #  83    0xb2511  1      OPC=1343  
  nop                                                    #  84    0xb2512  1      OPC=1343  
  nop                                                    #  85    0xb2513  1      OPC=1343  
.L_b2500:                                                #        0xb2514  0      OPC=0     
  movl %ecx, %eax                                        #  86    0xb2514  2      OPC=1157  
  andl $0x4a, %eax                                       #  87    0xb2516  3      OPC=132   
  cmpl $0x40, %eax                                       #  88    0xb2519  3      OPC=470   
  je .L_b2560                                            #  89    0xb251c  6      OPC=893   
  nop                                                    #  90    0xb2522  1      OPC=1343  
  nop                                                    #  91    0xb2523  1      OPC=1343  
  andl $0x4000, %ecx                                     #  92    0xb2524  6      OPC=131   
  cmpl $0x1, %ecx                                        #  93    0xb252a  3      OPC=470   
  movq %rdi, %rcx                                        #  94    0xb252d  3      OPC=1162  
  sbbl %eax, %eax                                        #  95    0xb2530  2      OPC=2134  
  andl $0xfffffff0, %eax                                 #  96    0xb2532  6      OPC=131   
  nop                                                    #  97    0xb2538  1      OPC=1343  
  nop                                                    #  98    0xb2539  1      OPC=1343  
  nop                                                    #  99    0xb253a  1      OPC=1343  
  addl $0x14, %eax                                       #  100   0xb253b  3      OPC=65    
  xchgw %ax, %ax                                         #  101   0xb253e  2      OPC=3700  
.L_b2520:                                                #        0xb2540  0      OPC=0     
  movl %esi, %edx                                        #  102   0xb2540  2      OPC=1157  
  shrl $0x4, %esi                                        #  103   0xb2542  3      OPC=2312  
  subl $0x4, %ecx                                        #  104   0xb2545  3      OPC=2384  
  andl $0xf, %edx                                        #  105   0xb2548  3      OPC=132   
  addl %eax, %edx                                        #  106   0xb254b  2      OPC=67    
  testl %esi, %esi                                       #  107   0xb254d  2      OPC=2436  
  leal (%r9,%rdx,4), %edx                                #  108   0xb254f  4      OPC=1066  
  movl %edx, %edx                                        #  109   0xb2553  2      OPC=1157  
  movl (%r15,%rdx,1), %edx                               #  110   0xb2555  4      OPC=1156  
  movl %ecx, %ecx                                        #  111   0xb2559  2      OPC=1157  
  movl %edx, (%r15,%rcx,1)                               #  112   0xb255b  4      OPC=1136  
  nop                                                    #  113   0xb255f  1      OPC=1343  
  jne .L_b2520                                           #  114   0xb2560  6      OPC=963   
  nop                                                    #  115   0xb2566  1      OPC=1343  
  nop                                                    #  116   0xb2567  1      OPC=1343  
  jmpq .L_b24e0                                          #  117   0xb2568  5      OPC=930   
  nop                                                    #  118   0xb256d  1      OPC=1343  
  nop                                                    #  119   0xb256e  1      OPC=1343  
  nop                                                    #  120   0xb256f  1      OPC=1343  
  nop                                                    #  121   0xb2570  1      OPC=1343  
  nop                                                    #  122   0xb2571  1      OPC=1343  
  nop                                                    #  123   0xb2572  1      OPC=1343  
  nop                                                    #  124   0xb2573  1      OPC=1343  
  nop                                                    #  125   0xb2574  1      OPC=1343  
  nop                                                    #  126   0xb2575  1      OPC=1343  
  nop                                                    #  127   0xb2576  1      OPC=1343  
  nop                                                    #  128   0xb2577  1      OPC=1343  
  nop                                                    #  129   0xb2578  1      OPC=1343  
  nop                                                    #  130   0xb2579  1      OPC=1343  
  nop                                                    #  131   0xb257a  1      OPC=1343  
  nop                                                    #  132   0xb257b  1      OPC=1343  
  nop                                                    #  133   0xb257c  1      OPC=1343  
  nop                                                    #  134   0xb257d  1      OPC=1343  
  nop                                                    #  135   0xb257e  1      OPC=1343  
  nop                                                    #  136   0xb257f  1      OPC=1343  
  nop                                                    #  137   0xb2580  1      OPC=1343  
  nop                                                    #  138   0xb2581  1      OPC=1343  
  nop                                                    #  139   0xb2582  1      OPC=1343  
  nop                                                    #  140   0xb2583  1      OPC=1343  
  nop                                                    #  141   0xb2584  1      OPC=1343  
  nop                                                    #  142   0xb2585  1      OPC=1343  
  nop                                                    #  143   0xb2586  1      OPC=1343  
  nop                                                    #  144   0xb2587  1      OPC=1343  
  nop                                                    #  145   0xb2588  1      OPC=1343  
  nop                                                    #  146   0xb2589  1      OPC=1343  
  nop                                                    #  147   0xb258a  1      OPC=1343  
.L_b2560:                                                #        0xb258b  0      OPC=0     
  movq %rdi, %rcx                                        #  148   0xb258b  3      OPC=1162  
  nop                                                    #  149   0xb258e  1      OPC=1343  
  nop                                                    #  150   0xb258f  1      OPC=1343  
  nop                                                    #  151   0xb2590  1      OPC=1343  
  nop                                                    #  152   0xb2591  1      OPC=1343  
  nop                                                    #  153   0xb2592  1      OPC=1343  
  nop                                                    #  154   0xb2593  1      OPC=1343  
  nop                                                    #  155   0xb2594  1      OPC=1343  
  nop                                                    #  156   0xb2595  1      OPC=1343  
  nop                                                    #  157   0xb2596  1      OPC=1343  
  nop                                                    #  158   0xb2597  1      OPC=1343  
  nop                                                    #  159   0xb2598  1      OPC=1343  
  nop                                                    #  160   0xb2599  1      OPC=1343  
  nop                                                    #  161   0xb259a  1      OPC=1343  
  nop                                                    #  162   0xb259b  1      OPC=1343  
  nop                                                    #  163   0xb259c  1      OPC=1343  
  nop                                                    #  164   0xb259d  1      OPC=1343  
  nop                                                    #  165   0xb259e  1      OPC=1343  
  nop                                                    #  166   0xb259f  1      OPC=1343  
  nop                                                    #  167   0xb25a0  1      OPC=1343  
  nop                                                    #  168   0xb25a1  1      OPC=1343  
  nop                                                    #  169   0xb25a2  1      OPC=1343  
  nop                                                    #  170   0xb25a3  1      OPC=1343  
  nop                                                    #  171   0xb25a4  1      OPC=1343  
  nop                                                    #  172   0xb25a5  1      OPC=1343  
  nop                                                    #  173   0xb25a6  1      OPC=1343  
  nop                                                    #  174   0xb25a7  1      OPC=1343  
  nop                                                    #  175   0xb25a8  1      OPC=1343  
  nop                                                    #  176   0xb25a9  1      OPC=1343  
  nop                                                    #  177   0xb25aa  1      OPC=1343  
.L_b2580:                                                #        0xb25ab  0      OPC=0     
  movl %esi, %eax                                        #  178   0xb25ab  2      OPC=1157  
  shrl $0x3, %esi                                        #  179   0xb25ad  3      OPC=2312  
  subl $0x4, %ecx                                        #  180   0xb25b0  3      OPC=2384  
  andl $0x7, %eax                                        #  181   0xb25b3  3      OPC=132   
  testl %esi, %esi                                       #  182   0xb25b6  2      OPC=2436  
  leal 0x10(%r9,%rax,4), %eax                            #  183   0xb25b8  5      OPC=1066  
  movl %eax, %eax                                        #  184   0xb25bd  2      OPC=1157  
  movl (%r15,%rax,1), %eax                               #  185   0xb25bf  4      OPC=1156  
  movl %ecx, %ecx                                        #  186   0xb25c3  2      OPC=1157  
  movl %eax, (%r15,%rcx,1)                               #  187   0xb25c5  4      OPC=1136  
  xchgw %ax, %ax                                         #  188   0xb25c9  2      OPC=3700  
  jne .L_b2580                                           #  189   0xb25cb  6      OPC=963   
  nop                                                    #  190   0xb25d1  1      OPC=1343  
  nop                                                    #  191   0xb25d2  1      OPC=1343  
  jmpq .L_b24e0                                          #  192   0xb25d3  5      OPC=930   
  nop                                                    #  193   0xb25d8  1      OPC=1343  
  nop                                                    #  194   0xb25d9  1      OPC=1343  
  nop                                                    #  195   0xb25da  1      OPC=1343  
  nop                                                    #  196   0xb25db  1      OPC=1343  
  nop                                                    #  197   0xb25dc  1      OPC=1343  
  nop                                                    #  198   0xb25dd  1      OPC=1343  
  nop                                                    #  199   0xb25de  1      OPC=1343  
  nop                                                    #  200   0xb25df  1      OPC=1343  
  nop                                                    #  201   0xb25e0  1      OPC=1343  
  nop                                                    #  202   0xb25e1  1      OPC=1343  
  nop                                                    #  203   0xb25e2  1      OPC=1343  
  nop                                                    #  204   0xb25e3  1      OPC=1343  
  nop                                                    #  205   0xb25e4  1      OPC=1343  
  nop                                                    #  206   0xb25e5  1      OPC=1343  
  nop                                                    #  207   0xb25e6  1      OPC=1343  
  nop                                                    #  208   0xb25e7  1      OPC=1343  
  nop                                                    #  209   0xb25e8  1      OPC=1343  
  nop                                                    #  210   0xb25e9  1      OPC=1343  
  nop                                                    #  211   0xb25ea  1      OPC=1343  
  nop                                                    #  212   0xb25eb  1      OPC=1343  
  nop                                                    #  213   0xb25ec  1      OPC=1343  
  nop                                                    #  214   0xb25ed  1      OPC=1343  
  nop                                                    #  215   0xb25ee  1      OPC=1343  
  nop                                                    #  216   0xb25ef  1      OPC=1343  
  nop                                                    #  217   0xb25f0  1      OPC=1343  
                                                                                            
.size _ZSt13__int_to_charIwmEiPT_T0_PKS0_St13_Ios_Fmtflagsb, .-_ZSt13__int_to_charIwmEiPT_T0_PKS0_St13_Ios_Fmtflagsb
