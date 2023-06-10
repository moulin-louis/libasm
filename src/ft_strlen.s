section .text
	global ft_strlen ;export ft_strlen
ft_strlen:
	mov rdx, rdi ; copy rdi to rdx
	.start_loop:
		cmp byte [rdi], 0 ; compare deref ptr store in rdi with 0
		jz .end_loop ;jump to end loop if ptr is 0
		inc rdi ; increment the pointer inside rdi
		jmp .start_loop ; jump to start loop, if ptr unequal to 0
	.end_loop:
		sub rdi, rdx ; substract the save ptr in rdx to the new one in rdi
		mov rax, rdi ; store it in rax
		ret ; exiting the function

 section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning
 