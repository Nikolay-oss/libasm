global _ft_strcpy

section .text

_ft_strcpy:
	mov rcx, -1

_loop:
	inc rcx
	mov al, byte [rsi + rcx]
	mov [rdi + rcx], al
	cmp byte [rdi + rcx], 0
	jne _loop
	mov rax, rdi
	ret
