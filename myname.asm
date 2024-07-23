section .data
    msg db "Entre com o seu nome: ", LF, NULL
    tam equ $-msg
; .bss armazena as variáveis que serão modificadas durante o programa
section .bss
    nome resb 1

section .text
    global _start

    _start:
        mov eax, SYS_WRITE
        mov ebx, STD_OUT
        mov ecx, msg
        mov edx, tam
        int SYS_CALL

        mov eax
        mov ebx
        mov ecx
        mov edx
        int SYS_CALL

fim:
    mov rax, 60
    mov rdi, 0
    syscall