  .text
  .globl __libc_main
  .type __libc_main, @function

#! file-offset 0x20910
#! rip-offset  0x20910
#! capacity    16 bytes

# Text                         #  Line  RIP      Bytes  Opcode             
.__libc_main:                  #        0x20910  0      OPC=<label>        
  subq $0x8, %rsp              #  1     0x20910  4      OPC=subq_r64_imm8  
  callq .__libc_print_version  #  2     0x20914  5      OPC=callq_label    
  xorl %edi, %edi              #  3     0x20919  2      OPC=xorl_r32_r32   
  callq ._exit                 #  4     0x2091b  5      OPC=callq_label    
                                                                           
.size __libc_main, .-__libc_main

