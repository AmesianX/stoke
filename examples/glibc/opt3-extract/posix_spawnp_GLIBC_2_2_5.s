  .text
  .globl posix_spawnp_GLIBC_2_2_5
  .type posix_spawnp_GLIBC_2_2_5, @function

#! file-offset 0x141a90
#! rip-offset  0x141a90
#! capacity    16 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.posix_spawnp_GLIBC_2_2_5:  #        0x141a90  0      OPC=<label>        
  subq $0x10, %rsp          #  1     0x141a90  4      OPC=subq_r64_imm8  
  pushq $0x3                #  2     0x141a94  2      OPC=pushq_imm8     
  callq .__spawni           #  3     0x141a96  5      OPC=callq_label    
  addq $0x18, %rsp          #  4     0x141a9b  4      OPC=addq_r64_imm8  
  retq                      #  5     0x141a9f  1      OPC=retq           
                                                                         
.size posix_spawnp_GLIBC_2_2_5, .-posix_spawnp_GLIBC_2_2_5

