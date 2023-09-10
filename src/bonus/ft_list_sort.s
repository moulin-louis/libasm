;struct s_list {
;   uint64_t content;
;   s_list  *next;
;} t_list;
; sort the list based on the cmp function
section .text
	global ft_list_sort ;export ft_list_sort
ft_list_sort: ; void ft_list_sort(t_list **head($rdi), int(*cmp)($rsi))
    push rbp ; save base stack pointer
    mov rbp, rsp ;update base pointer
	sub rsp, 48 ; allocate space for 6 64 bits ptr
	cmp rdi, 0x0 ; cmp rdi with 0
	je .end_loop ; jump if equal
	cmp rsi, 0x0 ; cmp rsi with 0
    je .end_loop ; jump if equal
	mov QWORD [rsp + 8], rsi ; store cmp fn
	mov rdi, QWORD [rdi] ; deref head
	mov QWORD [rsp + 16], rdi ; t_list *tmp = *head;
	mov QWORD [rsp + 24], 0x0 ; t_list *node = NULL;
	mov QWORD [rsp + 32], 0x0 ; uint64_t data = 0;
.start_loop:
    mov rax, QWORD [rsp+16] ; load tmp
    cmp rax, 0x0 ; check if tmp if NULL
    je .end_loop ; jump if its NULL
    add rax, 8 ; rax == tmp->next
    mov rax, QWORD [rax] ; load value of tmp->next
    mov QWORD [rsp+24], rax; node = tmp->next
.start_2nd_loop:
    mov rax, QWORD [rsp+24] ; load node
    cmp rax, 0x0 ; compare node with NULL
    je .end_2nd_loop ; jump if its NULL
    mov rdi, QWORD [rsp+16] ; load tmp->content
    mov rdi, QWORD [rdi] ; load value of tmp->content
    mov rsi, QWORD [rsp+24] ; load node->content
    mov rsi, QWORD [rsi] ; load value of node->content
    call QWORD [rsp+8] ; call cmp fn
    cmp rax, 0x0 ; compare return value with 0
    jl .end_if
    mov rax, QWORD [rsp+16] ; load tmp->content
    mov rax, QWORD [rax] ; load value of tmp->content
    mov QWORD [rsp+32], rax ; data = tmp->content
    mov rax, QWORD [rsp+16] ; load tmp->content
    mov rdi, QWORD [rsp+24] ; load node->content
    mov rdi, QWORD [rdi] ; load value of node->content
    mov [rax], rdi ; tmp->content = node->content
    mov rax, QWORD [rsp+24] ; load node->content
    mov rdi, QWORD [rsp+32] ; load data;
    mov [rax], rdi; ; node->content = data;
.end_if:
    mov rax, QWORD [rsp+24] ; load node
    mov rax, QWORD [rax+8] ; load value of node->next
    mov QWORD [rsp+24], rax ; node = node->next
    jmp .start_2nd_loop
.end_2nd_loop:
    mov rax, QWORD [rsp+16] ; load tmp
    mov rax, QWORD [rax+8] ; load value of tmp->next
    mov QWORD [rsp+16], rax ;tmp = tmp->next
    jmp .start_loop
.end_loop:
    add rsp, 48 ;clean the stack
    pop rbp ;update base pointer to the old one saved
	ret ; exiting the function

 section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning