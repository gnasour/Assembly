.section .data
data1:
    .quad 7252051615
data2: 
    .quad 5732348928
output:
    .asciz "%qd\n"
.section .text
    .globl main
main:
    movl data1, %ebx
    movl data1+4, %eax
    movl data2, %edx
    movl data2+4, %ecx
    subl %ebx, %edx
    sbbl %eax, %ecx
    push %rdx
    push %rax
    push $output
    call printf
    add $12, %esp
    call exit
