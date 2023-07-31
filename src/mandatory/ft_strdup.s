section .text
	global ft_strdup ;export ft_strdup
	extern __errno_location
	extern malloc
	extern ft_strlen
	extern ft_strcpy

ft_strdup: ;char *($rax)ft_strdup(const char *src($rdi))
	mov r8, rdi
	call ft_strlen
	mov rdi, rax
	inc rdi
	call malloc wrt ..plt; call malloc -> void *($rax)malloc(unsigned long size($edi))
	cmp rax, 0x0
	je .end_loop
	mov rdi, rax
	mov rsi, r8
	call ft_strcpy
.end_loop:
	ret ; return

section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning