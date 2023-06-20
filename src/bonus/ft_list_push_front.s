section .text
	global ft_list_push_front ;export ft_list_push_front
	extern calloc
ft_list_push_front: ;void	ft_list_push_front(t_list **beg_list, void *data)
	test rdi, rdi ; test if rdi is non-null
	je .end ; jump if null
	mov r12, rdi ; save the 1rst args inside r12
	mov r13, rsi ; save the 2nd args inside r13
	mov rdi, 0x1 ; load value 16 for next calloc call
	mov rsi, 0x16 ; load value 1 for next calloc call
	call calloc wrt ..plt ; call calloc, result in rax
	mov rsi, [r12]
	mov QWORD [rax+0x8], rsi
	mov QWORD [rax], r13
.end:
	ret

 section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning