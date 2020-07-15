.section .data
    data:
        .int 41
    number: 
       .asciz "%d\n"

.section .text
    .globl main
    main:
        xor %rax, %rax
        xor %rsi, %rsi
        movl $0, %eax
        movl $0, %ebx
        movl $0, %ecx
        movb $20, %al
        subb $11, %al
        movl $number, %edi
        movsx %al, %esi
        xor  %rax, %rax
        call printf
        movl $1, %eax
        movl $0, %ebx
        int $0x80 
