global _ft_strcpy

section .text

_ft_strcpy:
	mov rcx, -1

_loop:
	inc rcx
	mov al, byte [rsi + rcx]
	mov [rdi + rcx], al
	
	
	;cmp rcx, 6
	;jne _loop
	ret
	; mov al, byte [r8 + rcx]
	; mov byte [rax + rcx], al
	; inc rcx
	; cmp rcx, 4
	; jne _loop
	; ret
	;inc r8
	;mov al, byte [rsi]
	;mov byte [rax + rcx], al
