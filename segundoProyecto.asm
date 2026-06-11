global main
extern scanf
extern printf

section .data
buffer db 100 dup(0)
fmt db "%s", 0
msg db "%s", 0

section .text
main:
	sub rsp, 40


	mov rcx, fmt
	mov rdx, buffer
	call scanf
	mov rcx, fmt
	mov rdx, buffer
	call printf

	add rsp, 40
	ret