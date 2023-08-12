section .text
	global ft_atoi_base ;export ft_atoi_base
base_error: ; int[eax]		base_error(const char *base[rdi])
    ret
; PLEASE DONT TOUCH RDI AND RSI IN HERE

base_test: ;int[eax]     base_test(char c[dil], const char *base[rsi])
    xor eax, eax ; int i = 0
.start_loop:
    mov al, BYTE [rsi + rax] ; base[i]
    cmp al, 0x0 ; while(base[i])
    je .char_not_found ; end loop if base[i] = '\0'
    cmp dil, al ; check if base[i] == c
    je .char_found ; jump if its equal
    inc eax ; inc eax by one
    jmp .start_loop ; start over
.char_found:
    ret ; end fn with result in eax
.char_not_found:
    mov eax, -1 ; return value will be -1
    ret ; end fn
; PLEASE DONT TOUCH RDI AND RSI IN HERE

base_search: ;int[eax]		base_search(const char *str[rdi], int *i[rsi])
    ret
; PLEASE DONT TOUCH RDI AND RSI IN HERE

;mov ah, BYTE [rdi + rdx] ; mov into ah str[s]
;    test ah, ah ; check if ah is null
;    jz .end_loop_1 ; jump if its null
;    cmp ah, 32 ; cmp ah with char space
;    je .is_wh ; jmp if its a space
;    cmp ah, 9 ; cmp ah with char \t
;    jb .end_loop_1 ; jump if its bellow
;    cmp ah, 13 ; cmp ah with char \r
;    ja .end_loop_1 ; jump if its above

ft_atoi_base: ;int[rax] ft_atoi_base(const char *str[rdi], const char *base[rsi])
    push rbp ; save base stack pointer
    mov rbp, rsp ;update base pointer
    sub rsp, 5 * 4 ; allocate 5 * 32 bits to save 5 int
    push rsi
    mov rsi, rdi
    call base_error
    pop rsi
    mov DWORD [rsp], eax ; int len = base_error(base);
    cmp eax, 0x0 ; compare return value with 0
    jl .end_fn
    mov DWORD [rsp+4], 0x0 ; int i = 0;
    push rsi
    lea rsi, [rsp+4]
    call base_search
    mov DWORD [rsp+8], eax;int mult = base_search(str, &i);
    pop rsi
    mov DWORD [rsp+12], 0x0 ; int nb = 0;
    push rdi
    mov eax, DWORD [rsp+4]
    mov dil, BYTE [rdi+rax]
    call base_test
    cmp eax, -1
    je .end_fn
    mov DWORD [rsp+16], eax ; int tmp = base_test(str[i], base);
    pop rdi

.end_fn:
    add rsp, 5 * 4 ; clean the stack
    pop rbp ;update base pointer to the old one saved
	ret ; exiting the function

 section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning