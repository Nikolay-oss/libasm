; global _ft_strdup
global ft_strdup

extern malloc
extern ft_strlen
extern ft_strcpy

section .text

; _ft_strdup:
ft_strdup:
	push rdi
	; call _ft_strlen
	call ft_strlen
	mov rdi, rax
	inc rdi
	; call _malloc
	call malloc wrt ..plt
	pop rsi
	mov rdi, rax
	; call _ft_strcpy
	call ft_strcpy
	ret
