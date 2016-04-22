  .text
  .globl putc_unlocked
  .type putc_unlocked, @function

#! file-offset 0x6c54f
#! rip-offset  0x6c54f
#! capacity    52 bytes

# Text                   #  Line  RIP      Bytes  Opcode             
.putc_unlocked:          #        0x6c54f  0      OPC=<label>        
  movq %rsi, %rdx        #  1     0x6c54f  3      OPC=movq_r64_r64   
  movq 0x28(%rsi), %rax  #  2     0x6c552  4      OPC=movq_r64_m64   
  cmpq 0x30(%rsi), %rax  #  3     0x6c556  4      OPC=cmpq_r64_m64   
  jb .L_6c56e            #  4     0x6c55a  2      OPC=jb_label       
  subq $0x8, %rsp        #  5     0x6c55c  4      OPC=subq_r64_imm8  
  movzbl %dil, %esi      #  6     0x6c560  4      OPC=movzbl_r32_r8  
  movq %rdx, %rdi        #  7     0x6c564  3      OPC=movq_r64_r64   
  callq .__overflow      #  8     0x6c567  5      OPC=callq_label    
  jmpq .L_6c57e          #  9     0x6c56c  2      OPC=jmpq_label     
.L_6c56e:                #        0x6c56e  0      OPC=<label>        
  leaq 0x1(%rax), %rcx   #  10    0x6c56e  4      OPC=leaq_r64_m16   
  movq %rcx, 0x28(%rsi)  #  11    0x6c572  4      OPC=movq_m64_r64   
  movb %dil, (%rax)      #  12    0x6c576  3      OPC=movb_m8_r8     
  movzbl %dil, %eax      #  13    0x6c579  4      OPC=movzbl_r32_r8  
  retq                   #  14    0x6c57d  1      OPC=retq           
.L_6c57e:                #        0x6c57e  0      OPC=<label>        
  addq $0x8, %rsp        #  15    0x6c57e  4      OPC=addq_r64_imm8  
  retq                   #  16    0x6c582  1      OPC=retq           
                                                                     
.size putc_unlocked, .-putc_unlocked

