section .text
	global ft_list_sort ;export ft_list_sort
ft_list_sort: ; void ft_list_sort(t_list **head($rdi), int(*cmp)($rsi))
    push rbp ; save base stack pointer
    mov rbp, rsp ;update base pointer
    sub rsp, 32 ; allocate 24 bytes for local variables
    mov QWORD [rsp], rdi ;  t_list **save = head;
    mov rdi, QWORD [rdi] ; deref head
    mov QWORD [rsp + 8], rdi ; parcour = *head
    mov QWORD [rsp + 24], rsi ; save cmp into the stack
.start_loop:
    mov rdi, QWORD [rsp] ; load head
    mov rdi, QWORD [rdi] ; deref head
    mov rdi, QWORD [rdi + 8] ; load value of (*head)->next
    cmp rdi, 0x0 ; check if null
    je .end_loop ; jump if null
    mov rdi, QWORD [rsp] ; load head
    mov rdi, QWORD [rdi] ; deref head
    mov rsi, QWORD [rsp] ; load head
    mov rsi, QWORD [rsi] ; deref head
    mov rsi, QWORD [rsi + 8] ; load value of (*head)->next->value
    call QWORD [rsp + 24] ; call cmp((*head)->data, (*head)->next->data)
    cmp rax, 1 ; compare rax with 1
    jl .continue_loop ; jump if rax < 1
    mov rdi, QWORD [rsp] ; load head
    mov rdi, QWORD [rdi] ; deref head
    mov QWORD [rsp + 16], rdi ; data = (*head)->data
    jmp .start_loop ; start over the loop
.continue_loop:
    mov rdi, QWORD [rsp] ; load head
    mov rsi, QWORD [rsp] ; load head
    mov rsi, QWORD [rsi + 8] ; load (*head)->next
    mov QWORD [rdi], rsi ; (*head) = (*head)->next
    jmp .start_loop

.end_loop:
    mov rdi, QWORD [rsp] ; load head
    mov rsi, QWORD [rsp + 8] ; load parcour into rsi
    mov QWORD [rdi], rsi ; *head = parcour
    add rsp, 32 ; clean the stack
    pop rbp ;update base pointer to the old one saved
	ret ; exiting the function

 section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning
