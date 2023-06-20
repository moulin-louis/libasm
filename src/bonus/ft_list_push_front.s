section .text
	global ft_list_push_front ;export ft_list_push_front
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

 section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning