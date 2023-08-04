section .text
	global ft_atoi_base ;export ft_atoi_base
get_base_len: ; int[eax]	get_base_length(const char *base[rdi])
    ret

; PLEASE DONT TOUCH RDI AND RSI IN HERE
check_errors: ;int[eax]     check_error(const char *str[rdi], const char *base[rsi])
    ret

get_nb: ; int [eax] get_nb(char c[di], char *base[rsi])
    ret

ft_atoi_base: ;int[rax] ft_atoi_base(const char *str[rdi], const char *base[rsi])
    push rbp ; save base stack pointer
    mov rbp, rsp ;update base pointer
    sub rsp, 5 * 4 ; allocate 5 * 32 bits to save 5 int
    mov DWORD [rsp], 0x0 ; int s = 0;
    mov DWORD [rsp+4], 0x0 ; int res = 0;
    mov DWORD [rsp+8], 0x0 ;int negative = 0;
    mov DWORD [rsp+12], 0x0 ; int base_len = 0;
    mov DWORD [rsp+16], 0x0 ; int i = 0;
    push rdi ; save str in stack
    mov rdi, rsi ; load base into rdi
    call get_base_len ; call get_base_len on rdi
    mov DWORD [rsp+12], eax ; base_len = get_base_len(base)
    pop rdi ; get back rdi value
    cmp rax, 0x0 ; check return value of get_base_len
    je .end_fn ; jump if its 0
    call check_errors
    cmp eax, 0x0
    
    je .end_fn
.end_fn
    add rsp, 5 * 4 ; clean the stack
    pop rbp ;update base pointer to the old one saved
	ret ; exiting the function

 section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning