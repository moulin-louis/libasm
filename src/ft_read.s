section .text
	global ft_read ;export ft_read
	extern __errno_location
ft_read: ; long ft_read(int fd, char *buff, unsignedd long buff_size)
	push rbp
	mov rbp, rsp
	; fd loaded in $edi, buff loaded in rsi, buff_size loaded in $edx
	mov rax, 0x00 ;load up syscall code 0 (read) into rax
	movsxd rdi, edi ; move edi arg into rdi (load fd into rdi registser)
	; buff is already where it should be, inside $rsi register
	movsxd rdx, edx ;find register to load (load buff_size into rdx register)
	syscall ; calling the syscall (here read)
	cmp eax, 0x00
	jl .error_handle
	pop rbp
	ret
.error_handle:
	neg eax
	mov edx, eax
	call __errno_location
	mov [eax], edx
	mov eax, -0x01
	pop rbp
	ret

section .note.GNU-stack noalloc noexec nowrite progbits ;use to silence some warning
