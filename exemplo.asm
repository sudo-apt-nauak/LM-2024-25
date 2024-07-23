;Exemplo de execução 
;nasm -f elf64 exemplo.asm
;ld exemplo.o -o exemplo.x

section.data
	v1 : db 0x55
	v2 : db 0x55, 0x56, 0x57
	v3 : db 'a', 0x55
	v4 : db 'hello', 13, 10, '$' ; uma string finalizada por /n
	v5 : dw 0x1234
	v6 : dw 'a'
	v7 : dw 'ab'
	v8 : dw 'abc'
	v9 : dd 0x12345678
section .text
	global _start
_start:;o start funciona como o int main em C
	mov rax, 60
	mov rdi, 0
fim: 

	syscall 
