section .text
	global ft_strdup ;export ft_strdup
	extern __errno_location
ft_strdup:
	push rbp ; push the stack
	mov rbp, rsp ; update the base stack ptr
	pop rbp ; pop the stack
	ret ; return 