  .text
  .globl __gmp_default_reallocate
  .type __gmp_default_reallocate, @function

#! file-offset 0x77de0
#! rip-offset  0x37de0
#! capacity    224 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmp_default_reallocate:     #        0x37de0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)       #  1     0x37de0  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)        #  2     0x37de5  5      OPC=movq_m64_r64    
  movl %esi, %ebx              #  3     0x37dea  2      OPC=movl_r32_r32    
  subl $0x18, %esp             #  4     0x37dec  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  5     0x37def  3      OPC=addq_r64_r64    
  movl %edi, %edi              #  6     0x37df2  2      OPC=movl_r32_r32    
  movl %edx, %esi              #  7     0x37df4  2      OPC=movl_r32_r32    
  movl %edx, %r12d             #  8     0x37df6  3      OPC=movl_r32_r32    
  xchgw %ax, %ax               #  9     0x37df9  2      OPC=xchgw_ax_r16    
  callq .realloc               #  10    0x37dfb  5      OPC=callq_label     
  movl %eax, %eax              #  11    0x37e00  2      OPC=movl_r32_r32    
  testq %rax, %rax             #  12    0x37e02  3      OPC=testq_r64_r64   
  je .L_37e40                  #  13    0x37e05  2      OPC=je_label        
  movq 0x8(%rsp), %rbx         #  14    0x37e07  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12        #  15    0x37e0c  5      OPC=movq_r64_m64    
  addl $0x18, %esp             #  16    0x37e11  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  17    0x37e14  3      OPC=addq_r64_r64    
  popq %r11                    #  18    0x37e17  2      OPC=popq_r64_1      
  nop                          #  19    0x37e19  1      OPC=nop             
  nop                          #  20    0x37e1a  1      OPC=nop             
  nop                          #  21    0x37e1b  1      OPC=nop             
  nop                          #  22    0x37e1c  1      OPC=nop             
  nop                          #  23    0x37e1d  1      OPC=nop             
  nop                          #  24    0x37e1e  1      OPC=nop             
  nop                          #  25    0x37e1f  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  26    0x37e20  7      OPC=andl_r32_imm32  
  nop                          #  27    0x37e27  1      OPC=nop             
  nop                          #  28    0x37e28  1      OPC=nop             
  nop                          #  29    0x37e29  1      OPC=nop             
  nop                          #  30    0x37e2a  1      OPC=nop             
  addq %r15, %r11              #  31    0x37e2b  3      OPC=addq_r64_r64    
  jmpq %r11                    #  32    0x37e2e  3      OPC=jmpq_r64        
  nop                          #  33    0x37e31  1      OPC=nop             
  nop                          #  34    0x37e32  1      OPC=nop             
  nop                          #  35    0x37e33  1      OPC=nop             
  nop                          #  36    0x37e34  1      OPC=nop             
  nop                          #  37    0x37e35  1      OPC=nop             
  nop                          #  38    0x37e36  1      OPC=nop             
  nop                          #  39    0x37e37  1      OPC=nop             
  nop                          #  40    0x37e38  1      OPC=nop             
  nop                          #  41    0x37e39  1      OPC=nop             
  nop                          #  42    0x37e3a  1      OPC=nop             
  nop                          #  43    0x37e3b  1      OPC=nop             
  nop                          #  44    0x37e3c  1      OPC=nop             
  nop                          #  45    0x37e3d  1      OPC=nop             
  nop                          #  46    0x37e3e  1      OPC=nop             
  nop                          #  47    0x37e3f  1      OPC=nop             
  nop                          #  48    0x37e40  1      OPC=nop             
  nop                          #  49    0x37e41  1      OPC=nop             
  nop                          #  50    0x37e42  1      OPC=nop             
  nop                          #  51    0x37e43  1      OPC=nop             
  nop                          #  52    0x37e44  1      OPC=nop             
  nop                          #  53    0x37e45  1      OPC=nop             
  nop                          #  54    0x37e46  1      OPC=nop             
.L_37e40:                      #        0x37e47  0      OPC=<label>         
  nop                          #  55    0x37e47  1      OPC=nop             
  nop                          #  56    0x37e48  1      OPC=nop             
  nop                          #  57    0x37e49  1      OPC=nop             
  nop                          #  58    0x37e4a  1      OPC=nop             
  nop                          #  59    0x37e4b  1      OPC=nop             
  nop                          #  60    0x37e4c  1      OPC=nop             
  nop                          #  61    0x37e4d  1      OPC=nop             
  nop                          #  62    0x37e4e  1      OPC=nop             
  nop                          #  63    0x37e4f  1      OPC=nop             
  nop                          #  64    0x37e50  1      OPC=nop             
  nop                          #  65    0x37e51  1      OPC=nop             
  nop                          #  66    0x37e52  1      OPC=nop             
  nop                          #  67    0x37e53  1      OPC=nop             
  nop                          #  68    0x37e54  1      OPC=nop             
  nop                          #  69    0x37e55  1      OPC=nop             
  nop                          #  70    0x37e56  1      OPC=nop             
  nop                          #  71    0x37e57  1      OPC=nop             
  nop                          #  72    0x37e58  1      OPC=nop             
  nop                          #  73    0x37e59  1      OPC=nop             
  nop                          #  74    0x37e5a  1      OPC=nop             
  nop                          #  75    0x37e5b  1      OPC=nop             
  nop                          #  76    0x37e5c  1      OPC=nop             
  nop                          #  77    0x37e5d  1      OPC=nop             
  nop                          #  78    0x37e5e  1      OPC=nop             
  nop                          #  79    0x37e5f  1      OPC=nop             
  nop                          #  80    0x37e60  1      OPC=nop             
  nop                          #  81    0x37e61  1      OPC=nop             
  callq .__nacl_read_tp        #  82    0x37e62  5      OPC=callq_label     
  leaq -0x480(%rax), %rax      #  83    0x37e67  7      OPC=leaq_r64_m16    
  movl %r12d, %ecx             #  84    0x37e6e  3      OPC=movl_r32_r32    
  movl %ebx, %edx              #  85    0x37e71  2      OPC=movl_r32_r32    
  movl $0x10039f10, %esi       #  86    0x37e73  5      OPC=movl_r32_imm32  
  movl %eax, %eax              #  87    0x37e78  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  88    0x37e7a  4      OPC=movl_r32_m32    
  movl %eax, %eax              #  89    0x37e7e  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %edi  #  90    0x37e80  5      OPC=movl_r32_m32    
  xorl %eax, %eax              #  91    0x37e85  2      OPC=xorl_r32_r32    
  nop                          #  92    0x37e87  1      OPC=nop             
  nop                          #  93    0x37e88  1      OPC=nop             
  nop                          #  94    0x37e89  1      OPC=nop             
  nop                          #  95    0x37e8a  1      OPC=nop             
  nop                          #  96    0x37e8b  1      OPC=nop             
  nop                          #  97    0x37e8c  1      OPC=nop             
  nop                          #  98    0x37e8d  1      OPC=nop             
  nop                          #  99    0x37e8e  1      OPC=nop             
  nop                          #  100   0x37e8f  1      OPC=nop             
  nop                          #  101   0x37e90  1      OPC=nop             
  nop                          #  102   0x37e91  1      OPC=nop             
  nop                          #  103   0x37e92  1      OPC=nop             
  nop                          #  104   0x37e93  1      OPC=nop             
  nop                          #  105   0x37e94  1      OPC=nop             
  nop                          #  106   0x37e95  1      OPC=nop             
  nop                          #  107   0x37e96  1      OPC=nop             
  nop                          #  108   0x37e97  1      OPC=nop             
  nop                          #  109   0x37e98  1      OPC=nop             
  nop                          #  110   0x37e99  1      OPC=nop             
  nop                          #  111   0x37e9a  1      OPC=nop             
  nop                          #  112   0x37e9b  1      OPC=nop             
  nop                          #  113   0x37e9c  1      OPC=nop             
  nop                          #  114   0x37e9d  1      OPC=nop             
  nop                          #  115   0x37e9e  1      OPC=nop             
  nop                          #  116   0x37e9f  1      OPC=nop             
  nop                          #  117   0x37ea0  1      OPC=nop             
  nop                          #  118   0x37ea1  1      OPC=nop             
  callq .fprintf               #  119   0x37ea2  5      OPC=callq_label     
  nop                          #  120   0x37ea7  1      OPC=nop             
  nop                          #  121   0x37ea8  1      OPC=nop             
  nop                          #  122   0x37ea9  1      OPC=nop             
  nop                          #  123   0x37eaa  1      OPC=nop             
  nop                          #  124   0x37eab  1      OPC=nop             
  nop                          #  125   0x37eac  1      OPC=nop             
  nop                          #  126   0x37ead  1      OPC=nop             
  nop                          #  127   0x37eae  1      OPC=nop             
  nop                          #  128   0x37eaf  1      OPC=nop             
  nop                          #  129   0x37eb0  1      OPC=nop             
  nop                          #  130   0x37eb1  1      OPC=nop             
  nop                          #  131   0x37eb2  1      OPC=nop             
  nop                          #  132   0x37eb3  1      OPC=nop             
  nop                          #  133   0x37eb4  1      OPC=nop             
  nop                          #  134   0x37eb5  1      OPC=nop             
  nop                          #  135   0x37eb6  1      OPC=nop             
  nop                          #  136   0x37eb7  1      OPC=nop             
  nop                          #  137   0x37eb8  1      OPC=nop             
  nop                          #  138   0x37eb9  1      OPC=nop             
  nop                          #  139   0x37eba  1      OPC=nop             
  nop                          #  140   0x37ebb  1      OPC=nop             
  nop                          #  141   0x37ebc  1      OPC=nop             
  nop                          #  142   0x37ebd  1      OPC=nop             
  nop                          #  143   0x37ebe  1      OPC=nop             
  nop                          #  144   0x37ebf  1      OPC=nop             
  nop                          #  145   0x37ec0  1      OPC=nop             
  nop                          #  146   0x37ec1  1      OPC=nop             
  callq .abort                 #  147   0x37ec2  5      OPC=callq_label     
                                                                            
.size __gmp_default_reallocate, .-__gmp_default_reallocate
