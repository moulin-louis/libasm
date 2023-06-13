section .text
	global ft_strlen ;export ft_strlen
ft_strlen: ;unsigned long($rax) ft_strlen(const char *str($rdi))
	push rbp ; push the stack
	mov rbp, rsp ; update the base stack ptr
	mov rdx, rdi ; copy rdi to rdx
	.start_loop:
		cmp byte [rdi], 0 ; compare deref ptr store in rdi with 0
		jz .end_loop ;jump to end loop if ptr is 0
		inc rdi ; increment the pointer inside rdi
		jmp .start_loop ; jump to start loop, if ptr unequal to 0
	.end_loop:
		sub rdi, rdx ; substract the save ptr in rdx to the new one in rdi
		mov rax, rdi ; store it in rax
		pop rbp ; pop the stack
		ret ; exiting the function

 