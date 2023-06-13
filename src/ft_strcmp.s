section .text
	global ft_strcmp ;export ft_strcmp
ft_strcmp: ;int($eax) strcmp( char *s1($rdi), char *s2($rsi))
	push rbp ; push the stack
	mov rbp, rsp ; update the base stack ptr
.start_loop:
	mov ah, byte [rdi] ; load one char of rdi
	mov al, byte [rsi] ; load one char of rsi
	cmp ah, al
	jne .end_loop
	cmp ah, 0x0
	je .end_loop
	cmp al, 0x0
	je .end_loop
	inc rdi
	inc rsi
	jmp .start_loop
.end_loop:
	; return division of last two digits
	sub ah, al
	movsx eax, ah
	pop rbp ; pop the stack
	ret ; return 