global ft_strlen ;try to export _ft_strlen
ft_strlen:
	mov rsi, rdx ; copy rsi to rdx
	.start_loop:
	cmp byte [rsi], 0 ; compare deref ptr store in rsi with 0
	jz ft_strlen.end_loop ;jump to end loop if ptr is 0
	add rsi, 1 ; increment the pointer
	jmp ft_strlen.start_loop ; jump to start loop, if ptr unequal to 0
	.end_loop:
	sub rsi, rdi ; substract the save ptr to the new one
	mov rsi, rax ; store it in rax
	ret

 section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning