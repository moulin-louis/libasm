section .text
	global ft_strcpy ;export ft_strcpy
ft_strcpy:
	push rbp ; push the stack
	mov rbp, rsp ; update the base stack ptr
	pop rbp ; pop the stack
	ret ; return 