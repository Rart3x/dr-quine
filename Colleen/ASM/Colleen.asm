bits 64

section .data
    filename    db 'Colleen.asm', 0
    buffer      resb 4096

section .text
    global _start

_start:
    mov     rdi, filename               ; RDI contains the file name to open
    mov     rax, 2                      ; System call number for `open`
    xor     rsi, rsi                    ; RSI contains flags and permissions (0 for just reading)
    syscall

    ; Call to the system call to read the content of the file
    mov     rdi, rax                    ; RDI contains the file descriptor
    mov     rsi, buffer                 ; RSI points to the buffer to store the read data
    mov     rdx, 4096
    mov     rax, 0                      ; System call number for `read`
    syscall

    ; Call to the system call to write the read content to standard output
    mov     rdi, 1                      ; RDI contains the file descriptor for standard output (stdout)
    mov     rsi, buffer                 ; RSI points to the buffer containing the read content
    mov     rdx, rax                    ; RDX contains the number of bytes read (returned by the read call)
    mov     rax, 1                      ; System call number for `write`
    syscall

    ; Terminate the program
    mov     rax, 60
    xor     rdi, rdi
    syscall