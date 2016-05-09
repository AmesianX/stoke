  .text
  .globl __openat64_2
  .type __openat64_2, @function

#! file-offset 0xd2c3e
#! rip-offset  0xd2c3e
#! capacity    50 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.__openat64_2:              #        0xd2c3e  0      OPC=<label>         
  subq $0x8, %rsp           #  1     0xd2c3e  4      OPC=subq_r64_imm8   
  testb $0x40, %dl          #  2     0xd2c42  3      OPC=testb_r8_imm8   
  jne .L_d2c55              #  3     0xd2c45  2      OPC=jne_label       
  movl %edx, %eax           #  4     0xd2c47  2      OPC=movl_r32_r32    
  andl $0x410000, %eax      #  5     0xd2c49  5      OPC=andl_eax_imm32  
  cmpl $0x410000, %eax      #  6     0xd2c4e  5      OPC=cmpl_eax_imm32  
  jne .L_d2c61              #  7     0xd2c53  2      OPC=jne_label       
.L_d2c55:                   #        0xd2c55  0      OPC=<label>         
  leaq 0x8a6ac(%rip), %rdi  #  8     0xd2c55  7      OPC=leaq_r64_m16    
  callq .__fortify_fail     #  9     0xd2c5c  5      OPC=callq_label     
.L_d2c61:                   #        0xd2c61  0      OPC=<label>         
  movl $0x0, %eax           #  10    0xd2c61  5      OPC=movl_r32_imm32  
  callq .openat             #  11    0xd2c66  5      OPC=callq_label     
  addq $0x8, %rsp           #  12    0xd2c6b  4      OPC=addq_r64_imm8   
  retq                      #  13    0xd2c6f  1      OPC=retq            
                                                                         
.size __openat64_2, .-__openat64_2
