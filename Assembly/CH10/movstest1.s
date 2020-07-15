.section .data
    value1: .ascii "This is a test string.\n"
.section .bss
    .lcomm output, 23
.section .text
        .global _start

        .text
_start:
        
        leaq value1+22, %rsi
        leaq output+22, %rdi
        std
    
        movsb
        movsw
        movsl
        movsl
        movsl
        movsl
        movsl
        
        movq $1, %rax
        movq $0, %rbx
        int $0x80
        
