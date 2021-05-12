global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_strcpy
extern ___error

section .text

_ft_strdup:
	push rdi
	call _ft_strlen
	mov rdi, rax
	inc rdi
	call _malloc
	jz _reterror
	pop rsi
	mov rdi, rax
	call _ft_strcpy
	ret

_reterror:
	pop rdi
	ret
