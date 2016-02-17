  .text
  .globl __sread
  .type __sread, @function

#! file-offset 0x166d80
#! rip-offset  0x126d80
#! capacity    96 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__sread:                         #        0x126d80  0      OPC=<label>         
  pushq %rbx                      #  1     0x126d80  1      OPC=pushq_r64_1     
  movl %esi, %ebx                 #  2     0x126d81  2      OPC=movl_r32_r32    
  movl %edx, %esi                 #  3     0x126d83  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                 #  4     0x126d85  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x126d87  6      OPC=movswl_r32_m16  
  movl %ecx, %edx                 #  6     0x126d8d  2      OPC=movl_r32_r32    
  nop                             #  7     0x126d8f  1      OPC=nop             
  nop                             #  8     0x126d90  1      OPC=nop             
  nop                             #  9     0x126d91  1      OPC=nop             
  nop                             #  10    0x126d92  1      OPC=nop             
  nop                             #  11    0x126d93  1      OPC=nop             
  nop                             #  12    0x126d94  1      OPC=nop             
  nop                             #  13    0x126d95  1      OPC=nop             
  nop                             #  14    0x126d96  1      OPC=nop             
  nop                             #  15    0x126d97  1      OPC=nop             
  nop                             #  16    0x126d98  1      OPC=nop             
  nop                             #  17    0x126d99  1      OPC=nop             
  nop                             #  18    0x126d9a  1      OPC=nop             
  callq .read                     #  19    0x126d9b  5      OPC=callq_label     
  testl %eax, %eax                #  20    0x126da0  2      OPC=testl_r32_r32   
  js .L_126dc0                    #  21    0x126da2  2      OPC=js_label        
  movslq %eax, %rdx               #  22    0x126da4  3      OPC=movslq_r64_r32  
  movl %ebx, %ebx                 #  23    0x126da7  2      OPC=movl_r32_r32    
  addq %rdx, 0x50(%r15,%rbx,1)    #  24    0x126da9  5      OPC=addq_m64_r64    
  popq %rbx                       #  25    0x126dae  1      OPC=popq_r64_1      
  popq %r11                       #  26    0x126daf  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  27    0x126db1  7      OPC=andl_r32_imm32  
  nop                             #  28    0x126db8  1      OPC=nop             
  nop                             #  29    0x126db9  1      OPC=nop             
  nop                             #  30    0x126dba  1      OPC=nop             
  nop                             #  31    0x126dbb  1      OPC=nop             
  addq %r15, %r11                 #  32    0x126dbc  3      OPC=addq_r64_r64    
  jmpq %r11                       #  33    0x126dbf  3      OPC=jmpq_r64        
  nop                             #  34    0x126dc2  1      OPC=nop             
  nop                             #  35    0x126dc3  1      OPC=nop             
  nop                             #  36    0x126dc4  1      OPC=nop             
  nop                             #  37    0x126dc5  1      OPC=nop             
  nop                             #  38    0x126dc6  1      OPC=nop             
.L_126dc0:                        #        0x126dc7  0      OPC=<label>         
  movl %ebx, %ebx                 #  39    0x126dc7  2      OPC=movl_r32_r32    
  andw $0xefff, 0xc(%r15,%rbx,1)  #  40    0x126dc9  8      OPC=andw_m16_imm16  
  popq %rbx                       #  41    0x126dd1  1      OPC=popq_r64_1      
  popq %r11                       #  42    0x126dd2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  43    0x126dd4  7      OPC=andl_r32_imm32  
  nop                             #  44    0x126ddb  1      OPC=nop             
  nop                             #  45    0x126ddc  1      OPC=nop             
  nop                             #  46    0x126ddd  1      OPC=nop             
  nop                             #  47    0x126dde  1      OPC=nop             
  addq %r15, %r11                 #  48    0x126ddf  3      OPC=addq_r64_r64    
  jmpq %r11                       #  49    0x126de2  3      OPC=jmpq_r64        
  nop                             #  50    0x126de5  1      OPC=nop             
  nop                             #  51    0x126de6  1      OPC=nop             
  nop                             #  52    0x126de7  1      OPC=nop             
  nop                             #  53    0x126de8  1      OPC=nop             
  nop                             #  54    0x126de9  1      OPC=nop             
  nop                             #  55    0x126dea  1      OPC=nop             
  nop                             #  56    0x126deb  1      OPC=nop             
  nop                             #  57    0x126dec  1      OPC=nop             
  nop                             #  58    0x126ded  1      OPC=nop             
                                                                                
.size __sread, .-__sread
