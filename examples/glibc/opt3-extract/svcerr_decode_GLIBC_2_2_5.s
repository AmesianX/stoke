  .text
  .globl svcerr_decode_GLIBC_2_2_5
  .type svcerr_decode_GLIBC_2_2_5, @function

#! file-offset 0x1361c0
#! rip-offset  0x1361c0
#! capacity    80 bytes

# Text                       #  Line  RIP       Bytes  Opcode              
.svcerr_decode_GLIBC_2_2_5:  #        0x1361c0  0      OPC=<label>         
  subq $0x68, %rsp           #  1     0x1361c0  4      OPC=subq_r64_imm8   
  movq 0x28(%rdi), %rax      #  2     0x1361c4  4      OPC=movq_r64_m64    
  movl $0x1, 0x8(%rsp)       #  3     0x1361c8  8      OPC=movl_m32_imm32  
  movl $0x0, 0x10(%rsp)      #  4     0x1361d0  8      OPC=movl_m32_imm32  
  movq %rsp, %rsi            #  5     0x1361d8  3      OPC=movq_r64_r64    
  movl $0x4, 0x30(%rsp)      #  6     0x1361db  8      OPC=movl_m32_imm32  
  movq %rax, 0x18(%rsp)      #  7     0x1361e3  5      OPC=movq_m64_r64    
  movq 0x30(%rdi), %rax      #  8     0x1361e8  4      OPC=movq_r64_m64    
  movq %rax, 0x20(%rsp)      #  9     0x1361ec  5      OPC=movq_m64_r64    
  movq 0x38(%rdi), %rax      #  10    0x1361f1  4      OPC=movq_r64_m64    
  movq %rax, 0x28(%rsp)      #  11    0x1361f5  5      OPC=movq_m64_r64    
  movq 0x8(%rdi), %rax       #  12    0x1361fa  4      OPC=movq_r64_m64    
  callq 0x18(%rax)           #  13    0x1361fe  3      OPC=callq_m64       
  addq $0x68, %rsp           #  14    0x136201  4      OPC=addq_r64_imm8   
  retq                       #  15    0x136205  1      OPC=retq            
  nop                        #  16    0x136206  1      OPC=nop             
  nop                        #  17    0x136207  1      OPC=nop             
  nop                        #  18    0x136208  1      OPC=nop             
  nop                        #  19    0x136209  1      OPC=nop             
  nop                        #  20    0x13620a  1      OPC=nop             
  nop                        #  21    0x13620b  1      OPC=nop             
  nop                        #  22    0x13620c  1      OPC=nop             
  nop                        #  23    0x13620d  1      OPC=nop             
  nop                        #  24    0x13620e  1      OPC=nop             
  nop                        #  25    0x13620f  1      OPC=nop             
                                                                           
.size svcerr_decode_GLIBC_2_2_5, .-svcerr_decode_GLIBC_2_2_5

