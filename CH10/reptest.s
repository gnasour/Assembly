.section .data
    value1: .ascii "This is a test string./n"
.section  .bss
    .lcomm output, 23
.section .text
    .global start
start:
    movq $10, %rcx
    shrq $1, %rcx

    movq $1, %rax
    movq $0, %rbx

    int $0x80
    