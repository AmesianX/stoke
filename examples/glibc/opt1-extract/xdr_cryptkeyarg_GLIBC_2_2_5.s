  .text
  .globl xdr_cryptkeyarg_GLIBC_2_2_5
  .type xdr_cryptkeyarg_GLIBC_2_2_5, @function

#! file-offset 0x101225
#! rip-offset  0x101225
#! capacity    48 bytes

# Text                               #  Line  RIP       Bytes  Opcode             
.xdr_cryptkeyarg_GLIBC_2_2_5:        #        0x101225  0      OPC=<label>        
  pushq %rbp                         #  1     0x101225  1      OPC=pushq_r64_1    
  pushq %rbx                         #  2     0x101226  1      OPC=pushq_r64_1    
  subq $0x8, %rsp                    #  3     0x101227  4      OPC=subq_r64_imm8  
  movq %rdi, %rbp                    #  4     0x10122b  3      OPC=movq_r64_r64   
  movq %rsi, %rbx                    #  5     0x10122e  3      OPC=movq_r64_r64   
  callq .xdr_netnamestr_GLIBC_2_2_5  #  6     0x101231  5      OPC=callq_label    
  testl %eax, %eax                   #  7     0x101236  2      OPC=testl_r32_r32  
  je .L_10124e                       #  8     0x101238  2      OPC=je_label       
  leaq 0x8(%rbx), %rsi               #  9     0x10123a  4      OPC=leaq_r64_m16   
  movq %rbp, %rdi                    #  10    0x10123e  3      OPC=movq_r64_r64   
  callq .xdr_des_block_GLIBC_2_2_5   #  11    0x101241  5      OPC=callq_label    
  testl %eax, %eax                   #  12    0x101246  2      OPC=testl_r32_r32  
  setne %al                          #  13    0x101248  3      OPC=setne_r8       
  movzbl %al, %eax                   #  14    0x10124b  3      OPC=movzbl_r32_r8  
.L_10124e:                           #        0x10124e  0      OPC=<label>        
  addq $0x8, %rsp                    #  15    0x10124e  4      OPC=addq_r64_imm8  
  popq %rbx                          #  16    0x101252  1      OPC=popq_r64_1     
  popq %rbp                          #  17    0x101253  1      OPC=popq_r64_1     
  retq                               #  18    0x101254  1      OPC=retq           
                                                                                  
.size xdr_cryptkeyarg_GLIBC_2_2_5, .-xdr_cryptkeyarg_GLIBC_2_2_5

