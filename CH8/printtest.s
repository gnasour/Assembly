.section .data
    format: .ascii "Hi Elie\n"
.section .text
    .globl main

    main:
        mov $0, %rax
        mov $format, %edi
        call printf
        add $12, %esp
        mov $1, %rax
        mov $0, %rbx
        int $0x80
