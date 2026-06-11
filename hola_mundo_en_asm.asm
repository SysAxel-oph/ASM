global main
extern printf

section .data
msg db "hola mundo", 0

section .text
main:
	sub rsp, 40

	mov rcx, msg
	call printf

	add rsp, 40
	ret