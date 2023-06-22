section .text
	global ft_list_push_front ;export ft_list_push_front
<<<<<<< HEAD
	extern malloc
ft_list_push_front: ;void	ft_list_push_front(t_list **beg_list($rdi), void *data($rsi))
	mov r12, rdi ; save the 1rst args inside r12
	mov r13, rsi ; save the 2nd args inside r13
    mov edi, 0x10 ; load size with a value of 16
    call malloc wrt ..plt ; void *calloc(size_t nmenb, size_t size); alloc 1x16 so 16 octets
    mov QWORD [rax], r13 ; result->content = data;
    mov rdi, [r12] ; load the deref of head inside rdi
    mov QWORD [rax+8], rdi ; result->next = *head
    mov [r12], rax ; *head = result
	ret ; return
=======
	extern calloc
ft_list_push_front: ;void	ft_list_push_front(t_list **beg_list, void *data)
    push rbp
    mov rbp, rdi
    mov edi, 0x1
    push rbx
    mov rbx, rsi
    mov esi, 0x10
    sub rsp, 0x8
    call calloc wrt ..plt
    test rax, rax
    je .end
    movq   xmm0,rbx
    movhps xmm0,QWORD [rbp+0x0]
    mov    QWORD [rbp+0x0],rax
    movups ga[rax],xmm0
.end:
    add    rsp,0x8
    pop    rbp
    pop    rbx
	ret
>>>>>>> 382fb3ec85ec01664a2a15c193f6ce39e418f856

    ; section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning