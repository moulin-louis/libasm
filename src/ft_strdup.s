section .text
	global ft_strdup ;export ft_strdup
	extern __errno_location
	extern malloc
	extern ft_strlen
ft_strdup: ;char *($rax)ft_strdup(const char *src($rdi))
	push rbp ; push the stack
	mov rbp, rsp ; update the base stack ptr
	mov r11, rdi
	call ft_strlen
	mov rdi, rax
	inc rdi
	call malloc wrt ..plt; call malloc -> void *($rax)malloc(unsigned long size($edi))
	mov rdi, rax ; load the result of malloc inside rdi
	mov rsi, r11 ; load the source/src inside rsi
.start_loop:
	mov al, byte [rsi] ; load one char of src
	cmp al, 0x0 ; cmp loaded char of src with 0
	je .end_loop ; if equal to 0, jump to end_loop
	lea r11, byte [rdi] ; load the addres of the char pointed by rdi inside r11
	mov [r11], al ; change the value pointy by r11 by src char loaded
	inc rdi ; increment rdi ptr
	inc rsi ; increment rsi ptr
	jmp .start_loop ; start over the loop
.end_loop:
	lea r11, byte [rdi]
	mov al, 0x0
	mov [r11], al
	pop rbp ; pop the stack
	ret ; return 

section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning