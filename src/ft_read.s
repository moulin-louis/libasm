section .text
	global ft_read ;export ft_read
ft_read:
	mov rax, 0 ;load up syscall code 0 (read) into rax
	movsxd rdi, edi ; move edi arg into rdi
	movsxd rsi, esi ; find register to load
	movsxd rdx, edx ;find register to load
	syscall

section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning
