global _ft_read

section .text

_ft_read:
	mov rax, 0 ; on macOS 0x2000003
	syscall
	jc _reterror
	ret

_reterror:
	mov r11, rax
	; call error
	mov [rax], r11
	mov rax, -1
	ret
