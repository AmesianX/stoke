  .text
  .globl nl_langinfo
  .type nl_langinfo, @function

#! file-offset 0x2b680
#! rip-offset  0x2b680
#! capacity    16 bytes

# Text                       #  Line  RIP      Bytes  Opcode            
.nl_langinfo:                #        0x2b680  0      OPC=<label>       
  movq 0x36f759(%rip), %rax  #  1     0x2b680  7      OPC=movq_r64_m64  
  movq (%rax), %rsi          #  2     0x2b687  3      OPC=movq_r64_m64  
  nop                        #  3     0x2b68a  1      OPC=nop           
  jmpq .__nl_langinfo_l      #  4     0x2b68b  5      OPC=jmpq_label_1  
                                                                        
.size nl_langinfo, .-nl_langinfo

