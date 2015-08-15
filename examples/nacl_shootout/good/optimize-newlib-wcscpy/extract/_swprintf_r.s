  .text
  .globl _swprintf_r
  .type _swprintf_r, @function

#! file-offset 0x192000
#! rip-offset  0x152000
#! capacity    512 bytes

# Text                              #  Line  RIP       Bytes  Opcode                
._swprintf_r:                       #        0x152000  0      OPC=<label>           
  pushq %r12                        #  1     0x152000  2      OPC=pushq_r64_1       
  movl %esi, %esi                   #  2     0x152002  2      OPC=movl_r32_r32      
  movl %edi, %r12d                  #  3     0x152004  3      OPC=movl_r32_r32      
  pushq %rbx                        #  4     0x152007  1      OPC=pushq_r64_1       
  movl %edx, %ebx                   #  5     0x152008  2      OPC=movl_r32_r32      
  movl %ecx, %edx                   #  6     0x15200a  2      OPC=movl_r32_r32      
  subl $0x148, %esp                 #  7     0x15200c  6      OPC=subl_r32_imm32    
  addq %r15, %rsp                   #  8     0x152012  3      OPC=addq_r64_r64      
  cmpl $0x1fffffff, %ebx            #  9     0x152015  6      OPC=cmpl_r32_imm32    
  nop                               #  10    0x15201b  1      OPC=nop               
  nop                               #  11    0x15201c  1      OPC=nop               
  nop                               #  12    0x15201d  1      OPC=nop               
  nop                               #  13    0x15201e  1      OPC=nop               
  nop                               #  14    0x15201f  1      OPC=nop               
  leal 0x13f(%rsp), %eax            #  15    0x152020  7      OPC=leal_r32_m16      
  movq %r8, 0xb0(%rsp)              #  16    0x152027  8      OPC=movq_m64_r64      
  movq %r9, 0xb8(%rsp)              #  17    0x15202f  8      OPC=movq_m64_r64      
  movl %eax, %eax                   #  18    0x152037  2      OPC=movl_r32_r32      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  19    0x152039  6      OPC=movaps_m128_xmm   
  nop                               #  20    0x15203f  1      OPC=nop               
  movl %eax, %eax                   #  21    0x152040  2      OPC=movl_r32_r32      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  22    0x152042  6      OPC=movaps_m128_xmm   
  movl %eax, %eax                   #  23    0x152048  2      OPC=movl_r32_r32      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  24    0x15204a  6      OPC=movaps_m128_xmm   
  movl %eax, %eax                   #  25    0x152050  2      OPC=movl_r32_r32      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  26    0x152052  6      OPC=movaps_m128_xmm   
  movl %eax, %eax                   #  27    0x152058  2      OPC=movl_r32_r32      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  28    0x15205a  6      OPC=movaps_m128_xmm   
  movl %eax, %eax                   #  29    0x152060  2      OPC=movl_r32_r32      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  30    0x152062  6      OPC=movaps_m128_xmm   
  movl %eax, %eax                   #  31    0x152068  2      OPC=movl_r32_r32      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  32    0x15206a  6      OPC=movaps_m128_xmm   
  movl %eax, %eax                   #  33    0x152070  2      OPC=movl_r32_r32      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  34    0x152072  6      OPC=movaps_m128_xmm   
  ja .L_152120                      #  35    0x152078  6      OPC=ja_label_1        
  testl %ebx, %ebx                  #  36    0x15207e  2      OPC=testl_r32_r32     
  movw $0x208, 0xc(%rsp)            #  37    0x152080  7      OPC=movw_m16_imm16    
  movl %esi, (%rsp)                 #  38    0x152087  3      OPC=movl_m32_r32      
  movl %esi, 0x10(%rsp)             #  39    0x15208a  4      OPC=movl_m32_r32      
  je .L_152160                      #  40    0x15208e  6      OPC=je_label_1        
  leal -0x4(,%rbx,4), %eax          #  41    0x152094  7      OPC=leal_r32_m16      
  nop                               #  42    0x15209b  1      OPC=nop               
  nop                               #  43    0x15209c  1      OPC=nop               
  nop                               #  44    0x15209d  1      OPC=nop               
  nop                               #  45    0x15209e  1      OPC=nop               
  nop                               #  46    0x15209f  1      OPC=nop               
  leal 0x80(%rsp), %ecx             #  47    0x1520a0  7      OPC=leal_r32_m16      
  movl %esp, %esi                   #  48    0x1520a7  2      OPC=movl_r32_r32      
  movl %r12d, %edi                  #  49    0x1520a9  3      OPC=movl_r32_r32      
  movw $0xffff, 0xe(%rsp)           #  50    0x1520ac  7      OPC=movw_m16_imm16    
  movl $0x20, 0x80(%rsp)            #  51    0x1520b3  11     OPC=movl_m32_imm32    
  xchgw %ax, %ax                    #  52    0x1520be  2      OPC=xchgw_ax_r16      
  movl %eax, 0x8(%rsp)              #  53    0x1520c0  4      OPC=movl_m32_r32      
  movl %eax, 0x14(%rsp)             #  54    0x1520c4  4      OPC=movl_m32_r32      
  leal 0x160(%rsp), %eax            #  55    0x1520c8  7      OPC=leal_r32_m16      
  movl $0x30, 0x84(%rsp)            #  56    0x1520cf  11     OPC=movl_m32_imm32    
  nop                               #  57    0x1520da  1      OPC=nop               
  nop                               #  58    0x1520db  1      OPC=nop               
  nop                               #  59    0x1520dc  1      OPC=nop               
  nop                               #  60    0x1520dd  1      OPC=nop               
  nop                               #  61    0x1520de  1      OPC=nop               
  nop                               #  62    0x1520df  1      OPC=nop               
  movl %eax, 0x88(%rsp)             #  63    0x1520e0  7      OPC=movl_m32_r32      
  leal 0x90(%rsp), %eax             #  64    0x1520e7  7      OPC=leal_r32_m16      
  movl %eax, 0x8c(%rsp)             #  65    0x1520ee  7      OPC=movl_m32_r32      
  nop                               #  66    0x1520f5  1      OPC=nop               
  nop                               #  67    0x1520f6  1      OPC=nop               
  nop                               #  68    0x1520f7  1      OPC=nop               
  nop                               #  69    0x1520f8  1      OPC=nop               
  nop                               #  70    0x1520f9  1      OPC=nop               
  nop                               #  71    0x1520fa  1      OPC=nop               
  callq ._svfwprintf_r              #  72    0x1520fb  5      OPC=callq_label       
  movl (%rsp), %edx                 #  73    0x152100  3      OPC=movl_r32_m32      
  cmpl %eax, %ebx                   #  74    0x152103  2      OPC=cmpl_r32_r32      
  movl %edx, %edx                   #  75    0x152105  2      OPC=movl_r32_r32      
  movl $0x0, (%r15,%rdx,1)          #  76    0x152107  8      OPC=movl_m32_imm32    
  ja .L_152140                      #  77    0x15210f  2      OPC=ja_label          
  nop                               #  78    0x152111  1      OPC=nop               
  nop                               #  79    0x152112  1      OPC=nop               
  nop                               #  80    0x152113  1      OPC=nop               
  nop                               #  81    0x152114  1      OPC=nop               
  nop                               #  82    0x152115  1      OPC=nop               
  nop                               #  83    0x152116  1      OPC=nop               
  nop                               #  84    0x152117  1      OPC=nop               
  nop                               #  85    0x152118  1      OPC=nop               
  nop                               #  86    0x152119  1      OPC=nop               
  nop                               #  87    0x15211a  1      OPC=nop               
  nop                               #  88    0x15211b  1      OPC=nop               
  nop                               #  89    0x15211c  1      OPC=nop               
  nop                               #  90    0x15211d  1      OPC=nop               
  nop                               #  91    0x15211e  1      OPC=nop               
  nop                               #  92    0x15211f  1      OPC=nop               
.L_152120:                          #        0x152120  0      OPC=<label>           
  movl %r12d, %r12d                 #  93    0x152120  3      OPC=movl_r32_r32      
  movl $0x4b, (%r15,%r12,1)         #  94    0x152123  8      OPC=movl_m32_imm32    
  movl $0xffffffff, %eax            #  95    0x15212b  6      OPC=movl_r32_imm32_1  
  nop                               #  96    0x152131  1      OPC=nop               
  nop                               #  97    0x152132  1      OPC=nop               
  nop                               #  98    0x152133  1      OPC=nop               
  nop                               #  99    0x152134  1      OPC=nop               
  nop                               #  100   0x152135  1      OPC=nop               
  nop                               #  101   0x152136  1      OPC=nop               
  nop                               #  102   0x152137  1      OPC=nop               
  nop                               #  103   0x152138  1      OPC=nop               
  nop                               #  104   0x152139  1      OPC=nop               
  nop                               #  105   0x15213a  1      OPC=nop               
  nop                               #  106   0x15213b  1      OPC=nop               
  nop                               #  107   0x15213c  1      OPC=nop               
  nop                               #  108   0x15213d  1      OPC=nop               
  nop                               #  109   0x15213e  1      OPC=nop               
  nop                               #  110   0x15213f  1      OPC=nop               
  nop                               #  111   0x152140  1      OPC=nop               
.L_152140:                          #        0x152141  0      OPC=<label>           
  addl $0x148, %esp                 #  112   0x152141  6      OPC=addl_r32_imm32    
  addq %r15, %rsp                   #  113   0x152147  3      OPC=addq_r64_r64      
  popq %rbx                         #  114   0x15214a  1      OPC=popq_r64_1        
  popq %r12                         #  115   0x15214b  2      OPC=popq_r64_1        
  popq %r11                         #  116   0x15214d  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d           #  117   0x15214f  7      OPC=andl_r32_imm32    
  nop                               #  118   0x152156  1      OPC=nop               
  nop                               #  119   0x152157  1      OPC=nop               
  nop                               #  120   0x152158  1      OPC=nop               
  nop                               #  121   0x152159  1      OPC=nop               
  addq %r15, %r11                   #  122   0x15215a  3      OPC=addq_r64_r64      
  jmpq %r11                         #  123   0x15215d  3      OPC=jmpq_r64          
  nop                               #  124   0x152160  1      OPC=nop               
  nop                               #  125   0x152161  1      OPC=nop               
  nop                               #  126   0x152162  1      OPC=nop               
  nop                               #  127   0x152163  1      OPC=nop               
  nop                               #  128   0x152164  1      OPC=nop               
  nop                               #  129   0x152165  1      OPC=nop               
  nop                               #  130   0x152166  1      OPC=nop               
  nop                               #  131   0x152167  1      OPC=nop               
.L_152160:                          #        0x152168  0      OPC=<label>           
  leal 0x160(%rsp), %eax            #  132   0x152168  7      OPC=leal_r32_m16      
  leal 0x80(%rsp), %ecx             #  133   0x15216f  7      OPC=leal_r32_m16      
  movl %esp, %esi                   #  134   0x152176  2      OPC=movl_r32_r32      
  movl %r12d, %edi                  #  135   0x152178  3      OPC=movl_r32_r32      
  movl $0x0, 0x8(%rsp)              #  136   0x15217b  8      OPC=movl_m32_imm32    
  nop                               #  137   0x152183  1      OPC=nop               
  nop                               #  138   0x152184  1      OPC=nop               
  nop                               #  139   0x152185  1      OPC=nop               
  nop                               #  140   0x152186  1      OPC=nop               
  nop                               #  141   0x152187  1      OPC=nop               
  movl $0x0, 0x14(%rsp)             #  142   0x152188  8      OPC=movl_m32_imm32    
  movl %eax, 0x88(%rsp)             #  143   0x152190  7      OPC=movl_m32_r32      
  leal 0x90(%rsp), %eax             #  144   0x152197  7      OPC=leal_r32_m16      
  movw $0xffff, 0xe(%rsp)           #  145   0x15219e  7      OPC=movw_m16_imm16    
  nop                               #  146   0x1521a5  1      OPC=nop               
  nop                               #  147   0x1521a6  1      OPC=nop               
  nop                               #  148   0x1521a7  1      OPC=nop               
  movl $0x20, 0x80(%rsp)            #  149   0x1521a8  11     OPC=movl_m32_imm32    
  movl $0x30, 0x84(%rsp)            #  150   0x1521b3  11     OPC=movl_m32_imm32    
  movl %eax, 0x8c(%rsp)             #  151   0x1521be  7      OPC=movl_m32_r32      
  nop                               #  152   0x1521c5  1      OPC=nop               
  nop                               #  153   0x1521c6  1      OPC=nop               
  nop                               #  154   0x1521c7  1      OPC=nop               
  nop                               #  155   0x1521c8  1      OPC=nop               
  nop                               #  156   0x1521c9  1      OPC=nop               
  nop                               #  157   0x1521ca  1      OPC=nop               
  nop                               #  158   0x1521cb  1      OPC=nop               
  nop                               #  159   0x1521cc  1      OPC=nop               
  nop                               #  160   0x1521cd  1      OPC=nop               
  nop                               #  161   0x1521ce  1      OPC=nop               
  nop                               #  162   0x1521cf  1      OPC=nop               
  nop                               #  163   0x1521d0  1      OPC=nop               
  nop                               #  164   0x1521d1  1      OPC=nop               
  nop                               #  165   0x1521d2  1      OPC=nop               
  nop                               #  166   0x1521d3  1      OPC=nop               
  nop                               #  167   0x1521d4  1      OPC=nop               
  nop                               #  168   0x1521d5  1      OPC=nop               
  nop                               #  169   0x1521d6  1      OPC=nop               
  nop                               #  170   0x1521d7  1      OPC=nop               
  nop                               #  171   0x1521d8  1      OPC=nop               
  nop                               #  172   0x1521d9  1      OPC=nop               
  nop                               #  173   0x1521da  1      OPC=nop               
  nop                               #  174   0x1521db  1      OPC=nop               
  nop                               #  175   0x1521dc  1      OPC=nop               
  nop                               #  176   0x1521dd  1      OPC=nop               
  nop                               #  177   0x1521de  1      OPC=nop               
  nop                               #  178   0x1521df  1      OPC=nop               
  nop                               #  179   0x1521e0  1      OPC=nop               
  nop                               #  180   0x1521e1  1      OPC=nop               
  nop                               #  181   0x1521e2  1      OPC=nop               
  callq ._svfwprintf_r              #  182   0x1521e3  5      OPC=callq_label       
  jmpq .L_152120                    #  183   0x1521e8  5      OPC=jmpq_label_1      
  nop                               #  184   0x1521ed  1      OPC=nop               
  nop                               #  185   0x1521ee  1      OPC=nop               
  nop                               #  186   0x1521ef  1      OPC=nop               
  nop                               #  187   0x1521f0  1      OPC=nop               
  nop                               #  188   0x1521f1  1      OPC=nop               
  nop                               #  189   0x1521f2  1      OPC=nop               
  nop                               #  190   0x1521f3  1      OPC=nop               
  nop                               #  191   0x1521f4  1      OPC=nop               
  nop                               #  192   0x1521f5  1      OPC=nop               
  nop                               #  193   0x1521f6  1      OPC=nop               
  nop                               #  194   0x1521f7  1      OPC=nop               
  nop                               #  195   0x1521f8  1      OPC=nop               
  nop                               #  196   0x1521f9  1      OPC=nop               
  nop                               #  197   0x1521fa  1      OPC=nop               
  nop                               #  198   0x1521fb  1      OPC=nop               
  nop                               #  199   0x1521fc  1      OPC=nop               
  nop                               #  200   0x1521fd  1      OPC=nop               
  nop                               #  201   0x1521fe  1      OPC=nop               
  nop                               #  202   0x1521ff  1      OPC=nop               
  nop                               #  203   0x152200  1      OPC=nop               
  nop                               #  204   0x152201  1      OPC=nop               
  nop                               #  205   0x152202  1      OPC=nop               
  nop                               #  206   0x152203  1      OPC=nop               
  nop                               #  207   0x152204  1      OPC=nop               
  nop                               #  208   0x152205  1      OPC=nop               
  nop                               #  209   0x152206  1      OPC=nop               
  nop                               #  210   0x152207  1      OPC=nop               
                                                                                    
.size _swprintf_r, .-_swprintf_r
