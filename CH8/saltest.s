.section .text
.globl main
main:
    movl $10, %eax
    movw $7, %bx
    xor %rcx, %rcx
    movb $2, %cl
    sall %eax
    salw $2,%bx
    salb %cl
    xor %rax, %rax
    xor %rbx, %rbx
    movl $1, %eax
    syscall
