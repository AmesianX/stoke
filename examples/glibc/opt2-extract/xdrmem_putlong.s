  .text
  .globl xdrmem_putlong
  .type xdrmem_putlong, @function

#! file-offset 0x114710
#! rip-offset  0x114710
#! capacity    48 bytes

# Text                   #  Line  RIP       Bytes  Opcode              
.xdrmem_putlong:         #        0x114710  0      OPC=<label>         
  movl 0x28(%rdi), %edx  #  1     0x114710  3      OPC=movl_r32_m32    
  xorl %eax, %eax        #  2     0x114713  2      OPC=xorl_r32_r32    
  cmpl $0x3, %edx        #  3     0x114715  3      OPC=cmpl_r32_imm8   
  jbe .L_114739          #  4     0x114718  2      OPC=jbe_label       
  subl $0x4, %edx        #  5     0x11471a  3      OPC=subl_r32_imm8   
  movq 0x18(%rdi), %rax  #  6     0x11471d  4      OPC=movq_r64_m64    
  movl %edx, 0x28(%rdi)  #  7     0x114721  3      OPC=movl_m32_r32    
  movq (%rsi), %rdx      #  8     0x114724  3      OPC=movq_r64_m64    
  addq $0x4, %rax        #  9     0x114727  4      OPC=addq_r64_imm8   
  bswap %edx             #  10    0x11472b  2      OPC=bswap_r32       
  movl %edx, -0x4(%rax)  #  11    0x11472d  3      OPC=movl_m32_r32    
  movq %rax, 0x18(%rdi)  #  12    0x114730  4      OPC=movq_m64_r64    
  movl $0x1, %eax        #  13    0x114734  5      OPC=movl_r32_imm32  
.L_114739:               #        0x114739  0      OPC=<label>         
  retq                   #  14    0x114739  1      OPC=retq            
  nop                    #  15    0x11473a  1      OPC=nop             
  nop                    #  16    0x11473b  1      OPC=nop             
  nop                    #  17    0x11473c  1      OPC=nop             
  nop                    #  18    0x11473d  1      OPC=nop             
  nop                    #  19    0x11473e  1      OPC=nop             
  nop                    #  20    0x11473f  1      OPC=nop             
                                                                       
.size xdrmem_putlong, .-xdrmem_putlong

