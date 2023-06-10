section .text
	global ft_strlen ;try to export _ft_strlen
ft_strlen:
	; mov rdi, 1 ; put 1 into rdi
	mov rdx, rdi ; put rdi to rdx
	.start_loop:
		cmp byte [rdi], 0 ; compare deref ptr store in rdi with 0
		jz .end_loop ;jump to end loop if ptr is 0
		add rdi, 1 ; increment the pointer
		jmp .start_loop ; jump to start loop, if ptr unequal to 0
	.end_loop:
		sub rdi, rdx ; substract the save ptr to the new one
		mov rax, rdi ; store it in rax
		ret

 section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning
 