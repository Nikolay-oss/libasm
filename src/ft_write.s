global _ft_write

extern ___error

section .text

_ft_write:
	mov rax, 0x2000004
	syscall
	jc _reterror
	ret

_reterror:
	push r11
	mov r11, rax
	call ___error
	mov [rax], r11
	mov rax, -1
	pop r11
	ret
