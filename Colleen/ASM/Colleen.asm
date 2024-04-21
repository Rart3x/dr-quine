bits 64

section .data
    message db '#include <stdio.h>', 0x0A, 0x0A, \
        'static char* print() {', 0x0A, \
        '    return ("Hello, World!");', 0x0A, \
        '}', 0x0A, 0x0A, \
        'int main(void) {', 0x0A, \
        '    //---------------------------------First Comment---------------------------------//', 0x0A, \
        '    printf("%s\\n", print());', 0x0A, \
        '    return (0);', 0x0A, \
        '}', 0x0A, 0x0A, \
        '//---------------------------------Second Comment---------------------------------//', 0x0A, \

section .text
    global _start
    _start:
        mov rax, 1
        mov rdi, 1
        mov rsi, message
        mov rdx, 317
        syscall

        mov rax, 60
        mov rdi, 0
        syscall