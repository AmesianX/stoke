  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x1841a0
#! rip-offset  0x1441a0
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wmemchr:                   #        0x1441a0  0      OPC=<label>         
  nop                       #  1     0x1441a0  1      OPC=nop             
  nop                       #  2     0x1441a1  1      OPC=nop             
  xorq %rcx, %rcx           #  3     0x1441a2  3      OPC=xorq_r64_r64    
  nop                       #  4     0x1441a5  1      OPC=nop             
  testl %edx, %edx          #  5     0x1441a6  2      OPC=testl_r32_r32   
  je .L_144200              #  6     0x1441a8  2      OPC=je_label        
  nop                       #  7     0x1441aa  1      OPC=nop             
  nop                       #  8     0x1441ab  1      OPC=nop             
  nop                       #  9     0x1441ac  1      OPC=nop             
  nop                       #  10    0x1441ad  1      OPC=nop             
  movl %edi, %eax           #  11    0x1441ae  2      OPC=movl_r32_r32_1  
  cmpl %esi, (%r15,%rax,1)  #  12    0x1441b0  4      OPC=cmpl_m32_r32    
  nop                       #  13    0x1441b4  1      OPC=nop             
  nop                       #  14    0x1441b5  1      OPC=nop             
  nop                       #  15    0x1441b6  1      OPC=nop             
  nop                       #  16    0x1441b7  1      OPC=nop             
  nop                       #  17    0x1441b8  1      OPC=nop             
  jne .L_1441e0             #  18    0x1441b9  2      OPC=jne_label       
  jmpq .L_144240            #  19    0x1441bb  5      OPC=jmpq_label_1    
  nop                       #  20    0x1441c0  1      OPC=nop             
  nop                       #  21    0x1441c1  1      OPC=nop             
  nop                       #  22    0x1441c2  1      OPC=nop             
  nop                       #  23    0x1441c3  1      OPC=nop             
.L_1441c0:                  #        0x1441c4  0      OPC=<label>         
  addl $0x4, %eax           #  24    0x1441c4  6      OPC=addl_r32_imm32  
  cmpl %esi, (%r15,%rax,1)  #  25    0x1441ca  4      OPC=cmpl_m32_r32    
  je .L_144220              #  26    0x1441ce  2      OPC=je_label        
.L_1441e0:                  #        0x1441d0  0      OPC=<label>         
  incw %cx                  #  27    0x1441d0  3      OPC=incw_r16        
  cmpl %ecx, %edx           #  28    0x1441d3  2      OPC=cmpl_r32_r32    
  ja .L_1441c0              #  29    0x1441d5  2      OPC=ja_label        
  nop                       #  30    0x1441d7  1      OPC=nop             
  nop                       #  31    0x1441d8  1      OPC=nop             
  nop                       #  32    0x1441d9  1      OPC=nop             
  nop                       #  33    0x1441da  1      OPC=nop             
  nop                       #  34    0x1441db  1      OPC=nop             
  nop                       #  35    0x1441dc  1      OPC=nop             
  nop                       #  36    0x1441dd  1      OPC=nop             
  nop                       #  37    0x1441de  1      OPC=nop             
  nop                       #  38    0x1441df  1      OPC=nop             
  nop                       #  39    0x1441e0  1      OPC=nop             
  nop                       #  40    0x1441e1  1      OPC=nop             
  nop                       #  41    0x1441e2  1      OPC=nop             
  nopl %eax                 #  42    0x1441e3  3      OPC=nopl_r32        
  nop                       #  43    0x1441e6  1      OPC=nop             
  nop                       #  44    0x1441e7  1      OPC=nop             
  nop                       #  45    0x1441e8  1      OPC=nop             
  nop                       #  46    0x1441e9  1      OPC=nop             
  nop                       #  47    0x1441ea  1      OPC=nop             
  nop                       #  48    0x1441eb  1      OPC=nop             
.L_144200:                  #        0x1441ec  0      OPC=<label>         
  nopl %eax                 #  49    0x1441ec  3      OPC=nopl_r32        
  nop                       #  50    0x1441ef  1      OPC=nop             
  nop                       #  51    0x1441f0  1      OPC=nop             
  nop                       #  52    0x1441f1  1      OPC=nop             
  nop                       #  53    0x1441f2  1      OPC=nop             
  nop                       #  54    0x1441f3  1      OPC=nop             
  nop                       #  55    0x1441f4  1      OPC=nop             
  nop                       #  56    0x1441f5  1      OPC=nop             
  nopl %eax                 #  57    0x1441f6  3      OPC=nopl_r32        
  nop                       #  58    0x1441f9  1      OPC=nop             
  xorl %eax, %eax           #  59    0x1441fa  2      OPC=xorl_r32_r32    
  nopl %eax                 #  60    0x1441fc  3      OPC=nopl_r32        
  nop                       #  61    0x1441ff  1      OPC=nop             
  nop                       #  62    0x144200  1      OPC=nop             
  nop                       #  63    0x144201  1      OPC=nop             
  nop                       #  64    0x144202  1      OPC=nop             
  nop                       #  65    0x144203  1      OPC=nop             
  nop                       #  66    0x144204  1      OPC=nop             
  nop                       #  67    0x144205  1      OPC=nop             
  nop                       #  68    0x144206  1      OPC=nop             
  nop                       #  69    0x144207  1      OPC=nop             
.L_144220:                  #        0x144208  0      OPC=<label>         
  nop                       #  70    0x144208  1      OPC=nop             
  nop                       #  71    0x144209  1      OPC=nop             
  nop                       #  72    0x14420a  1      OPC=nop             
  nop                       #  73    0x14420b  1      OPC=nop             
  nop                       #  74    0x14420c  1      OPC=nop             
.L_144240:                  #        0x14420d  0      OPC=<label>         
  retq                      #  75    0x14420d  1      OPC=retq            
                                                                          
.size wmemchr, .-wmemchr