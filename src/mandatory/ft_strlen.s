section .text
	global ft_strlen ;export ft_strlen
ft_strlen: ;unsigned long($rax) ft_strlen(const char *str($rdi))
    mov eax, -1
.loop:
    inc eax
    cmp BYTE [rdi], 0x0
    lea rdi, [rdi + 1]
    jne .loop
    ret