;atividade da aula 3

section .data
	v1 : db 0x10
	v2 : dw 0x2020
	v3 : dd 0x30303030
	v4 : dq 0x4040404040404040
	v5 : db 0x00
	v6 : dw 0x0000
	v7 : dd 0x00000000
	v8 : dq 0x0000000000000000

section .text
	global _start

_start:

	; da variável para o registrador
	mov r8, [v4]
	mov eax, [v3]
	mov ax, [v2]
	mov al, [v1]

pt1:
	; do registrador para a variável
	mov [v8], r8
	mov [v7], eax
	mov [v6], ax
	mov [v5], al

pt2:
	; da constante para registrador
	mov r8, 0x1000100010001000
	mov eax, 0x20002000
	mov ax, 0x3030
	mov al, 0x40
	
fim:
	mov rax, 60
	mov rdi, 0
	syscall