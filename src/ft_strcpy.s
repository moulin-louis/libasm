section .text
	global ft_strcpy ;export ft_strcpy
ft_strcpy: ; char *($rax) ft_strpcy(char *dest($rdi), const char *src($rsi));
	push rbp ; push the stack
	mov rbp, rsp ; update the base stack ptr
	mov r11, rdi ;save base dest ptr to r11
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
	lea r11, byte [rdi] ; load the addres of the char pointed by rdi inside r11
	mov al, 0x0 ; load char of value 0
	mov [r11], al ; zero terminate the string
	mov rax, r11 ; move the save dest ptr to rax
	pop rbp ; pop the stack
	ret ; return 