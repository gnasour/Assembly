.section .data
    format:
        .asciz "%qd\n"
    result:
        .quad 0
.section .text
    .globl main

main:
    xor %rax, %rax
    xor %rbx, %rbx
    xor %rdx, %rdx
    movl $165432, %eax
    movl $315814, %ebx
    mull %ebx
    movq $format, %rdi
    movl %eax, result
    movl %edx, result+4
    movq $result, %rsi
    xor %rax, %rax
    call printf
    movq $1, %rax
    movq $0, %rbx
    int $0x80
