  .text
  .globl llabs
  .type llabs, @function

#! file-offset 0x39be0
#! rip-offset  0x39be0
#! capacity    32 bytes

# Text              #  Line  RIP      Bytes  Opcode             
.llabs:             #        0x39be0  0      OPC=<label>        
  movq %rdi, %rdx   #  1     0x39be0  3      OPC=movq_r64_r64   
  movq %rdi, %rax   #  2     0x39be3  3      OPC=movq_r64_r64   
  sarq $0x3f, %rdx  #  3     0x39be6  4      OPC=sarq_r64_imm8  
  xorq %rdx, %rax   #  4     0x39bea  3      OPC=xorq_r64_r64   
  subq %rdx, %rax   #  5     0x39bed  3      OPC=subq_r64_r64   
  retq              #  6     0x39bf0  1      OPC=retq           
  nop               #  7     0x39bf1  1      OPC=nop            
  nop               #  8     0x39bf2  1      OPC=nop            
  nop               #  9     0x39bf3  1      OPC=nop            
  nop               #  10    0x39bf4  1      OPC=nop            
  nop               #  11    0x39bf5  1      OPC=nop            
  nop               #  12    0x39bf6  1      OPC=nop            
  nop               #  13    0x39bf7  1      OPC=nop            
  nop               #  14    0x39bf8  1      OPC=nop            
  nop               #  15    0x39bf9  1      OPC=nop            
  nop               #  16    0x39bfa  1      OPC=nop            
  nop               #  17    0x39bfb  1      OPC=nop            
  nop               #  18    0x39bfc  1      OPC=nop            
  nop               #  19    0x39bfd  1      OPC=nop            
  nop               #  20    0x39bfe  1      OPC=nop            
  nop               #  21    0x39bff  1      OPC=nop            
                                                                
.size llabs, .-llabs

