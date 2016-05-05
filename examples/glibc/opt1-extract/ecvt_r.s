  .text
  .globl ecvt_r
  .type ecvt_r, @function

#! file-offset 0xdb6c1
#! rip-offset  0xdb6c1
#! capacity    404 bytes

# Text                          #  Line  RIP      Bytes  Opcode                
.ecvt_r:                        #        0xdb6c1  0      OPC=<label>           
  pushq %rbp                    #  1     0xdb6c1  1      OPC=pushq_r64_1       
  pushq %rbx                    #  2     0xdb6c2  1      OPC=pushq_r64_1       
  subq $0x8, %rsp               #  3     0xdb6c3  4      OPC=subq_r64_imm8     
  movq %rsi, %rbp               #  4     0xdb6c7  3      OPC=movq_r64_r64      
  movsd 0x8306e(%rip), %xmm1    #  5     0xdb6ca  8      OPC=movsd_xmm_m64     
  andpd %xmm0, %xmm1            #  6     0xdb6d2  4      OPC=andpd_xmm_xmm     
  movsd 0x83bea(%rip), %xmm2    #  7     0xdb6d6  8      OPC=movsd_xmm_m64     
  ucomisd %xmm1, %xmm2          #  8     0xdb6de  4      OPC=ucomisd_xmm_xmm   
  jb .L_db83e                   #  9     0xdb6e2  6      OPC=jb_label_1        
  ucomisd 0x83be0(%rip), %xmm0  #  10    0xdb6e8  8      OPC=ucomisd_xmm_m64   
  jp .L_db6f8                   #  11    0xdb6f0  2      OPC=jp_label          
  je .L_db7bb                   #  12    0xdb6f2  6      OPC=je_label_1        
.L_db6f8:                       #        0xdb6f8  0      OPC=<label>           
  pxor %xmm1, %xmm1             #  13    0xdb6f8  4      OPC=pxor_xmm_xmm      
  movapd %xmm0, %xmm2           #  14    0xdb6fc  4      OPC=movapd_xmm_xmm    
  ucomisd %xmm0, %xmm1          #  15    0xdb700  4      OPC=ucomisd_xmm_xmm   
  jbe .L_db714                  #  16    0xdb704  2      OPC=jbe_label         
  movsd 0x83022(%rip), %xmm2    #  17    0xdb706  8      OPC=movsd_xmm_m64     
  xorpd %xmm0, %xmm2            #  18    0xdb70e  4      OPC=xorpd_xmm_xmm     
  jmpq .L_db714                 #  19    0xdb712  2      OPC=jmpq_label        
.L_db714:                       #        0xdb714  0      OPC=<label>           
  movsd 0x83c04(%rip), %xmm1    #  20    0xdb714  8      OPC=movsd_xmm_m64     
  movl $0x0, %ebx               #  21    0xdb71c  5      OPC=movl_r32_imm32    
  ucomisd %xmm2, %xmm1          #  22    0xdb721  4      OPC=ucomisd_xmm_xmm   
  jbe .L_db751                  #  23    0xdb725  2      OPC=jbe_label         
  divsd %xmm1, %xmm0            #  24    0xdb727  4      OPC=divsd_xmm_xmm     
  pxor %xmm1, %xmm1             #  25    0xdb72b  4      OPC=pxor_xmm_xmm      
  movapd %xmm0, %xmm2           #  26    0xdb72f  4      OPC=movapd_xmm_xmm    
  movl $0xfffffecd, %ebx        #  27    0xdb733  6      OPC=movl_r32_imm32_1  
  ucomisd %xmm0, %xmm1          #  28    0xdb739  4      OPC=ucomisd_xmm_xmm   
  jbe .L_db751                  #  29    0xdb73d  2      OPC=jbe_label         
  movsd 0x82fea(%rip), %xmm2    #  30    0xdb73f  8      OPC=movsd_xmm_m64     
  xorpd %xmm0, %xmm2            #  31    0xdb747  4      OPC=xorpd_xmm_xmm     
  movl $0xfffffecd, %ebx        #  32    0xdb74b  6      OPC=movl_r32_imm32_1  
  jmpq .L_db751                 #  33    0xdb751  2      OPC=jmpq_label        
.L_db751:                       #        0xdb753  0      OPC=<label>           
  movsd 0x83b7f(%rip), %xmm1    #  34    0xdb753  8      OPC=movsd_xmm_m64     
  ucomisd %xmm2, %xmm1          #  35    0xdb75b  4      OPC=ucomisd_xmm_xmm   
  jbe .L_db786                  #  36    0xdb75f  2      OPC=jbe_label         
  movsd 0x83bc1(%rip), %xmm5    #  37    0xdb761  8      OPC=movsd_xmm_m64     
  movapd %xmm1, %xmm4           #  38    0xdb769  4      OPC=movapd_xmm_xmm    
.L_db76b:                       #        0xdb76d  0      OPC=<label>           
  mulsd %xmm5, %xmm1            #  39    0xdb76d  4      OPC=mulsd_xmm_xmm     
  subl $0x1, %ebx               #  40    0xdb771  3      OPC=subl_r32_imm8     
  movapd %xmm2, %xmm3           #  41    0xdb774  4      OPC=movapd_xmm_xmm    
  mulsd %xmm1, %xmm3            #  42    0xdb778  4      OPC=mulsd_xmm_xmm     
  ucomisd %xmm3, %xmm4          #  43    0xdb77c  4      OPC=ucomisd_xmm_xmm   
  ja .L_db76b                   #  44    0xdb780  2      OPC=ja_label          
  mulsd %xmm1, %xmm0            #  45    0xdb782  4      OPC=mulsd_xmm_xmm     
  jmpq .L_db7c0                 #  46    0xdb786  2      OPC=jmpq_label        
.L_db786:                       #        0xdb788  0      OPC=<label>           
  ucomisd 0x83b9a(%rip), %xmm2  #  47    0xdb788  8      OPC=ucomisd_xmm_m64   
  jb .L_db7c0                   #  48    0xdb790  2      OPC=jb_label          
  movsd 0x83b40(%rip), %xmm1    #  49    0xdb792  8      OPC=movsd_xmm_m64     
  movsd 0x83b88(%rip), %xmm3    #  50    0xdb79a  8      OPC=movsd_xmm_m64     
.L_db7a0:                       #        0xdb7a2  0      OPC=<label>           
  mulsd %xmm3, %xmm1            #  51    0xdb7a2  4      OPC=mulsd_xmm_xmm     
  addl $0x1, %ebx               #  52    0xdb7a6  3      OPC=addl_r32_imm8     
  movapd %xmm1, %xmm4           #  53    0xdb7a9  4      OPC=movapd_xmm_xmm    
  mulsd %xmm3, %xmm4            #  54    0xdb7ad  4      OPC=mulsd_xmm_xmm     
  ucomisd %xmm4, %xmm2          #  55    0xdb7b1  4      OPC=ucomisd_xmm_xmm   
  jae .L_db7a0                  #  56    0xdb7b5  2      OPC=jae_label         
  divsd %xmm1, %xmm0            #  57    0xdb7b7  4      OPC=divsd_xmm_xmm     
  jmpq .L_db7c0                 #  58    0xdb7bb  2      OPC=jmpq_label        
.L_db7bb:                       #        0xdb7bd  0      OPC=<label>           
  movl $0x0, %ebx               #  59    0xdb7bd  5      OPC=movl_r32_imm32    
.L_db7c0:                       #        0xdb7c2  0      OPC=<label>           
  testl %edi, %edi              #  60    0xdb7c2  2      OPC=testl_r32_r32     
  jg .L_db7fd                   #  61    0xdb7c4  2      OPC=jg_label          
  testq %r8, %r8                #  62    0xdb7c6  3      OPC=testq_r64_r64     
  je .L_db7fd                   #  63    0xdb7c9  2      OPC=je_label          
  movb $0x0, (%rcx)             #  64    0xdb7cb  3      OPC=movb_m8_imm8      
  movl $0x1, (%rbp)             #  65    0xdb7ce  7      OPC=movl_m32_imm32    
  movsd 0x82f65(%rip), %xmm1    #  66    0xdb7d5  8      OPC=movsd_xmm_m64     
  andpd %xmm0, %xmm1            #  67    0xdb7dd  4      OPC=andpd_xmm_xmm     
  movl $0x0, %eax               #  68    0xdb7e1  5      OPC=movl_r32_imm32    
  movsd 0x83adc(%rip), %xmm2    #  69    0xdb7e6  8      OPC=movsd_xmm_m64     
  ucomisd %xmm1, %xmm2          #  70    0xdb7ee  4      OPC=ucomisd_xmm_xmm   
  jb .L_db7f9                   #  71    0xdb7f2  2      OPC=jb_label          
  movmskpd %xmm0, %eax          #  72    0xdb7f4  4      OPC=movmskpd_r32_xmm  
  andl $0x1, %eax               #  73    0xdb7f8  3      OPC=andl_r32_imm8     
.L_db7f9:                       #        0xdb7fb  0      OPC=<label>           
  movl %eax, (%rdx)             #  74    0xdb7fb  2      OPC=movl_m32_r32      
  jmpq .L_db817                 #  75    0xdb7fd  2      OPC=jmpq_label        
.L_db7fd:                       #        0xdb7ff  0      OPC=<label>           
  cmpl $0x11, %edi              #  76    0xdb7ff  3      OPC=cmpl_r32_imm8     
  movl $0x11, %eax              #  77    0xdb802  5      OPC=movl_r32_imm32    
  cmovgl %eax, %edi             #  78    0xdb807  3      OPC=cmovgl_r32_r32    
  subl $0x1, %edi               #  79    0xdb80a  3      OPC=subl_r32_imm8     
  movq %rbp, %rsi               #  80    0xdb80d  3      OPC=movq_r64_r64      
  callq .fcvt_r                 #  81    0xdb810  5      OPC=callq_label       
  testl %eax, %eax              #  82    0xdb815  2      OPC=testl_r32_r32     
  jne .L_db821                  #  83    0xdb817  2      OPC=jne_label         
.L_db817:                       #        0xdb819  0      OPC=<label>           
  addl %ebx, (%rbp)             #  84    0xdb819  3      OPC=addl_m32_r32      
  movl $0x0, %eax               #  85    0xdb81c  5      OPC=movl_r32_imm32    
  jmpq .L_db84e                 #  86    0xdb821  2      OPC=jmpq_label        
.L_db821:                       #        0xdb823  0      OPC=<label>           
  movl $0xffffffff, %eax        #  87    0xdb823  6      OPC=movl_r32_imm32_1  
  jmpq .L_db84e                 #  88    0xdb829  2      OPC=jmpq_label        
.L_db828:                       #        0xdb82b  0      OPC=<label>           
  movb $0x0, (%rcx)             #  89    0xdb82b  3      OPC=movb_m8_imm8      
  movl $0x1, (%rbp)             #  90    0xdb82e  7      OPC=movl_m32_imm32    
  movl $0x0, %ebx               #  91    0xdb835  5      OPC=movl_r32_imm32    
  movl $0x0, %eax               #  92    0xdb83a  5      OPC=movl_r32_imm32    
  jmpq .L_db7f9                 #  93    0xdb83f  2      OPC=jmpq_label        
.L_db83e:                       #        0xdb841  0      OPC=<label>           
  testl %edi, %edi              #  94    0xdb841  2      OPC=testl_r32_r32     
  jg .L_db847                   #  95    0xdb843  2      OPC=jg_label          
  testq %r8, %r8                #  96    0xdb845  3      OPC=testq_r64_r64     
  jne .L_db828                  #  97    0xdb848  2      OPC=jne_label         
.L_db847:                       #        0xdb84a  0      OPC=<label>           
  movl $0x0, %ebx               #  98    0xdb84a  5      OPC=movl_r32_imm32    
  jmpq .L_db7fd                 #  99    0xdb84f  2      OPC=jmpq_label        
.L_db84e:                       #        0xdb851  0      OPC=<label>           
  addq $0x8, %rsp               #  100   0xdb851  4      OPC=addq_r64_imm8     
  popq %rbx                     #  101   0xdb855  1      OPC=popq_r64_1        
  popq %rbp                     #  102   0xdb856  1      OPC=popq_r64_1        
  retq                          #  103   0xdb857  1      OPC=retq              
                                                                               
.size ecvt_r, .-ecvt_r
