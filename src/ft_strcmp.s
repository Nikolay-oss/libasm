global _ft_strcmp

section .text

_ft_strcmp:
	mov rcx, -1
	xor rdx, rdx
	xor rax, rax

_loop:
	inc rcx
	mov al, byte [rdi + rcx]
	mov dl, byte [rsi + rcx]
	cmp al, dl
	je _checkendl
	jmp _getcompareresult

_checkendl:
	cmp al, 0
	jne _loop

_getcompareresult:
	sub rax, rdx
	ret
