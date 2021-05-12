global _ft_read

extern ___error

section .text

_ft_read:
	mov rax, 0x2000003
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
