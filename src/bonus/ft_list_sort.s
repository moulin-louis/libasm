section .text
	global ft_list_sort ;export ft_list_sort
ft_list_sort: ; void ft_list_sort(t_list **head($rdi), int(*cmp)($rsi))
	push rbp ; push the stack
	mov rbp, rsp ; update the base stack ptr
    mov rdi, [rdi] ; switch t_list **head to t_list *head
	sub rbp, 20 ; allocate space for 2 64 bits ptr and one 32 bits int
	mov QWORD [rbp], 0x0 ; init lptr to NULL
.1rt_segment:
	mov QWORD [rbp+8], rdi; init ptr1 to head
	mov DWORD [rbp+16], 0x0 ; init swapped to 0
.2nd_segment:
    mov rdx, QWORD [rbp+8]
    add rdx, 8
    mov rdx, QWORD [rdx]
    cmp rdx, QWORD[rbp] ; compare ptr1->next != lptr
    je .4th_segment ; if cmp false, jump
	mov rdx, QWORD [rbp+8] ; load the address of data for ptr1
	mov rdx, QWORD [rdx] ; deref the addres and get the value, store inside rdx
	mov rax, QWORD [rbp+8]
	add rax, 8
	mov rax, QWORD [rax]
	mov rax, QWORD [rax]
	cmp rdx, rax ; if (ptr1->data > ptr1->next->data)
	jle .3rd_segment ; jump if ptr1->data <= ptr1->next->data
    mov rax, QWORD [rbp+8] ; load ptr1
    mov r12, QWORD [rax] ; deref ptr1, attempt to save (*ptr1).data
    mov rsi, QWORD [rbp+8]
    mov rsi, QWORD [rsi]
    add rsi, 8
    mov rsi, QWORD [rsi]

.3rd_segment:
    mov rax, QWORD [rbp+8]
    add rax, 8
    mov QWORD [rbp+8], rax
    jmp .2nd_segment
.4th_segment:
    mov rax, QWORD [rbp]
    mov rax, QWORD [rbp+8]
    jmp .1rt_segment
.5th_segment:
    add rbp, 0x14
	pop rbp ; pop the stack
	ret ; exiting the function

; section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning