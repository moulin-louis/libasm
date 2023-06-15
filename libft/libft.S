In archive libft.a:

ft_atoi.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ft_is_wp>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	89 f8                	mov    eax,edi
   a:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
   d:	80 7d fc 20          	cmp    BYTE PTR [rbp-0x4],0x20
  11:	74 1e                	je     31 <ft_is_wp+0x31>
  13:	80 7d fc 09          	cmp    BYTE PTR [rbp-0x4],0x9
  17:	74 18                	je     31 <ft_is_wp+0x31>
  19:	80 7d fc 0a          	cmp    BYTE PTR [rbp-0x4],0xa
  1d:	74 12                	je     31 <ft_is_wp+0x31>
  1f:	80 7d fc 0b          	cmp    BYTE PTR [rbp-0x4],0xb
  23:	74 0c                	je     31 <ft_is_wp+0x31>
  25:	80 7d fc 0c          	cmp    BYTE PTR [rbp-0x4],0xc
  29:	74 06                	je     31 <ft_is_wp+0x31>
  2b:	80 7d fc 0d          	cmp    BYTE PTR [rbp-0x4],0xd
  2f:	75 07                	jne    38 <ft_is_wp+0x38>
  31:	b8 01 00 00 00       	mov    eax,0x1
  36:	eb 05                	jmp    3d <ft_is_wp+0x3d>
  38:	b8 00 00 00 00       	mov    eax,0x0
  3d:	5d                   	pop    rbp
  3e:	c3                   	ret

000000000000003f <libft_ft_atoi>:
  3f:	f3 0f 1e fa          	endbr64
  43:	55                   	push   rbp
  44:	48 89 e5             	mov    rbp,rsp
  47:	48 83 ec 18          	sub    rsp,0x18
  4b:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4f:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  56:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [rbp-0xc],0x1
  5d:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  64:	00 
  65:	eb 04                	jmp    6b <libft_ft_atoi+0x2c>
  67:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
  6b:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  6e:	48 63 d0             	movsxd rdx,eax
  71:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  75:	48 01 d0             	add    rax,rdx
  78:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  7b:	0f be c0             	movsx  eax,al
  7e:	89 c7                	mov    edi,eax
  80:	e8 7b ff ff ff       	call   0 <ft_is_wp>
  85:	85 c0                	test   eax,eax
  87:	75 de                	jne    67 <libft_ft_atoi+0x28>
  89:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  8c:	48 63 d0             	movsxd rdx,eax
  8f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  93:	48 01 d0             	add    rax,rdx
  96:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  99:	3c 2d                	cmp    al,0x2d
  9b:	75 07                	jne    a4 <libft_ft_atoi+0x65>
  9d:	c7 45 f4 ff ff ff ff 	mov    DWORD PTR [rbp-0xc],0xffffffff
  a4:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  a7:	48 63 d0             	movsxd rdx,eax
  aa:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  ae:	48 01 d0             	add    rax,rdx
  b1:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  b4:	3c 2d                	cmp    al,0x2d
  b6:	74 14                	je     cc <libft_ft_atoi+0x8d>
  b8:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  bb:	48 63 d0             	movsxd rdx,eax
  be:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  c2:	48 01 d0             	add    rax,rdx
  c5:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  c8:	3c 2b                	cmp    al,0x2b
  ca:	75 3d                	jne    109 <libft_ft_atoi+0xca>
  cc:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
  d0:	eb 37                	jmp    109 <libft_ft_atoi+0xca>
  d2:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  d6:	48 89 d0             	mov    rax,rdx
  d9:	48 c1 e0 02          	shl    rax,0x2
  dd:	48 01 d0             	add    rax,rdx
  e0:	48 01 c0             	add    rax,rax
  e3:	48 89 c1             	mov    rcx,rax
  e6:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  e9:	48 63 d0             	movsxd rdx,eax
  ec:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  f0:	48 01 d0             	add    rax,rdx
  f3:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  f6:	0f be c0             	movsx  eax,al
  f9:	83 e8 30             	sub    eax,0x30
  fc:	48 98                	cdqe
  fe:	48 01 c8             	add    rax,rcx
 101:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 105:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
 109:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
 10c:	48 63 d0             	movsxd rdx,eax
 10f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 113:	48 01 d0             	add    rax,rdx
 116:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 119:	3c 2f                	cmp    al,0x2f
 11b:	7e 14                	jle    131 <libft_ft_atoi+0xf2>
 11d:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
 120:	48 63 d0             	movsxd rdx,eax
 123:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 127:	48 01 d0             	add    rax,rdx
 12a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 12d:	3c 39                	cmp    al,0x39
 12f:	7e a1                	jle    d2 <libft_ft_atoi+0x93>
 131:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 134:	48 98                	cdqe
 136:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 13a:	48 0f af c2          	imul   rax,rdx
 13e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 142:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 146:	c9                   	leave
 147:	c3                   	ret

ft_calloc.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_calloc>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 20          	sub    rsp,0x20
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  14:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  19:	74 1f                	je     3a <libft_ft_calloc+0x3a>
  1b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1f:	48 0f af 45 e0       	imul   rax,QWORD PTR [rbp-0x20]
  24:	ba 00 00 00 00       	mov    edx,0x0
  29:	48 f7 75 e8          	div    QWORD PTR [rbp-0x18]
  2d:	48 39 45 e0          	cmp    QWORD PTR [rbp-0x20],rax
  31:	74 07                	je     3a <libft_ft_calloc+0x3a>
  33:	b8 00 00 00 00       	mov    eax,0x0
  38:	eb 46                	jmp    80 <libft_ft_calloc+0x80>
  3a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  3e:	48 0f af 45 e0       	imul   rax,QWORD PTR [rbp-0x20]
  43:	48 89 c7             	mov    rdi,rax
  46:	e8 00 00 00 00       	call   4b <libft_ft_calloc+0x4b>
  4b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4f:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  54:	75 07                	jne    5d <libft_ft_calloc+0x5d>
  56:	b8 00 00 00 00       	mov    eax,0x0
  5b:	eb 23                	jmp    80 <libft_ft_calloc+0x80>
  5d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  61:	89 c2                	mov    edx,eax
  63:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  67:	0f af c2             	imul   eax,edx
  6a:	48 63 d0             	movsxd rdx,eax
  6d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  71:	48 89 d6             	mov    rsi,rdx
  74:	48 89 c7             	mov    rdi,rax
  77:	e8 00 00 00 00       	call   7c <libft_ft_calloc+0x7c>
  7c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  80:	c9                   	leave
  81:	c3                   	ret

ft_isascii.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_isascii>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
   b:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
   f:	78 0d                	js     1e <libft_ft_isascii+0x1e>
  11:	83 7d fc 7f          	cmp    DWORD PTR [rbp-0x4],0x7f
  15:	7f 07                	jg     1e <libft_ft_isascii+0x1e>
  17:	b8 01 00 00 00       	mov    eax,0x1
  1c:	eb 05                	jmp    23 <libft_ft_isascii+0x23>
  1e:	b8 00 00 00 00       	mov    eax,0x0
  23:	5d                   	pop    rbp
  24:	c3                   	ret

ft_bzero.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_bzero>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   c:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  10:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  14:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  18:	eb 11                	jmp    2b <libft_ft_bzero+0x2b>
  1a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1e:	c6 00 00             	mov    BYTE PTR [rax],0x0
  21:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  26:	48 83 6d e0 01       	sub    QWORD PTR [rbp-0x20],0x1
  2b:	48 83 7d e0 00       	cmp    QWORD PTR [rbp-0x20],0x0
  30:	75 e8                	jne    1a <libft_ft_bzero+0x1a>
  32:	90                   	nop
  33:	90                   	nop
  34:	5d                   	pop    rbp
  35:	c3                   	ret

ft_isalnum.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_isalnum>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
   b:	83 7d fc 40          	cmp    DWORD PTR [rbp-0x4],0x40
   f:	7e 06                	jle    17 <libft_ft_isalnum+0x17>
  11:	83 7d fc 5a          	cmp    DWORD PTR [rbp-0x4],0x5a
  15:	7e 18                	jle    2f <libft_ft_isalnum+0x2f>
  17:	83 7d fc 60          	cmp    DWORD PTR [rbp-0x4],0x60
  1b:	7e 06                	jle    23 <libft_ft_isalnum+0x23>
  1d:	83 7d fc 7a          	cmp    DWORD PTR [rbp-0x4],0x7a
  21:	7e 0c                	jle    2f <libft_ft_isalnum+0x2f>
  23:	83 7d fc 2f          	cmp    DWORD PTR [rbp-0x4],0x2f
  27:	7e 0d                	jle    36 <libft_ft_isalnum+0x36>
  29:	83 7d fc 39          	cmp    DWORD PTR [rbp-0x4],0x39
  2d:	7f 07                	jg     36 <libft_ft_isalnum+0x36>
  2f:	b8 01 00 00 00       	mov    eax,0x1
  34:	eb 05                	jmp    3b <libft_ft_isalnum+0x3b>
  36:	b8 00 00 00 00       	mov    eax,0x0
  3b:	5d                   	pop    rbp
  3c:	c3                   	ret

ft_isalpha.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_isalpha>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
   b:	83 7d fc 40          	cmp    DWORD PTR [rbp-0x4],0x40
   f:	7e 06                	jle    17 <libft_ft_isalpha+0x17>
  11:	83 7d fc 5a          	cmp    DWORD PTR [rbp-0x4],0x5a
  15:	7e 0c                	jle    23 <libft_ft_isalpha+0x23>
  17:	83 7d fc 60          	cmp    DWORD PTR [rbp-0x4],0x60
  1b:	7e 0d                	jle    2a <libft_ft_isalpha+0x2a>
  1d:	83 7d fc 7a          	cmp    DWORD PTR [rbp-0x4],0x7a
  21:	7f 07                	jg     2a <libft_ft_isalpha+0x2a>
  23:	b8 01 00 00 00       	mov    eax,0x1
  28:	eb 05                	jmp    2f <libft_ft_isalpha+0x2f>
  2a:	b8 00 00 00 00       	mov    eax,0x0
  2f:	5d                   	pop    rbp
  30:	c3                   	ret

ft_isdigit.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_isdigit>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
   b:	83 7d fc 2f          	cmp    DWORD PTR [rbp-0x4],0x2f
   f:	7e 0d                	jle    1e <libft_ft_isdigit+0x1e>
  11:	83 7d fc 39          	cmp    DWORD PTR [rbp-0x4],0x39
  15:	7f 07                	jg     1e <libft_ft_isdigit+0x1e>
  17:	b8 01 00 00 00       	mov    eax,0x1
  1c:	eb 05                	jmp    23 <libft_ft_isdigit+0x23>
  1e:	b8 00 00 00 00       	mov    eax,0x0
  23:	5d                   	pop    rbp
  24:	c3                   	ret

ft_isprint.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_isprint>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
   b:	83 7d fc 1f          	cmp    DWORD PTR [rbp-0x4],0x1f
   f:	7e 0d                	jle    1e <libft_ft_isprint+0x1e>
  11:	83 7d fc 7e          	cmp    DWORD PTR [rbp-0x4],0x7e
  15:	7f 07                	jg     1e <libft_ft_isprint+0x1e>
  17:	b8 01 00 00 00       	mov    eax,0x1
  1c:	eb 05                	jmp    23 <libft_ft_isprint+0x23>
  1e:	b8 00 00 00 00       	mov    eax,0x0
  23:	5d                   	pop    rbp
  24:	c3                   	ret

ft_memchr.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_memchr>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   c:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
   f:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  13:	83 7d e4 00          	cmp    DWORD PTR [rbp-0x1c],0x0
  17:	7e 09                	jle    22 <libft_ft_memchr+0x22>
  19:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  1c:	0f be c0             	movsx  eax,al
  1f:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  22:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  27:	75 07                	jne    30 <libft_ft_memchr+0x30>
  29:	b8 00 00 00 00       	mov    eax,0x0
  2e:	eb 3d                	jmp    6d <libft_ft_memchr+0x6d>
  30:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  37:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  3b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  3f:	eb 1e                	jmp    5f <libft_ft_memchr+0x5f>
  41:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  45:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  48:	0f be c0             	movsx  eax,al
  4b:	39 45 e4             	cmp    DWORD PTR [rbp-0x1c],eax
  4e:	75 06                	jne    56 <libft_ft_memchr+0x56>
  50:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  54:	eb 17                	jmp    6d <libft_ft_memchr+0x6d>
  56:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
  5a:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  5f:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  63:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
  66:	7c d9                	jl     41 <libft_ft_memchr+0x41>
  68:	b8 00 00 00 00       	mov    eax,0x0
  6d:	5d                   	pop    rbp
  6e:	c3                   	ret

ft_memcmp.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_memcmp>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   c:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  10:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  14:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  18:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  1c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  20:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  24:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  29:	75 16                	jne    41 <libft_ft_memcmp+0x41>
  2b:	ba 00 00 00 00       	mov    edx,0x0
  30:	eb 3e                	jmp    70 <libft_ft_memcmp+0x70>
  32:	48 83 45 f0 01       	add    QWORD PTR [rbp-0x10],0x1
  37:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  3c:	48 83 6d d8 01       	sub    QWORD PTR [rbp-0x28],0x1
  41:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  45:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  48:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4c:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4f:	38 c2                	cmp    dl,al
  51:	75 07                	jne    5a <libft_ft_memcmp+0x5a>
  53:	48 83 7d d8 01       	cmp    QWORD PTR [rbp-0x28],0x1
  58:	75 d8                	jne    32 <libft_ft_memcmp+0x32>
  5a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  5e:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  61:	0f b6 d0             	movzx  edx,al
  64:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  68:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  6b:	0f b6 c0             	movzx  eax,al
  6e:	29 c2                	sub    edx,eax
  70:	89 d0                	mov    eax,edx
  72:	5d                   	pop    rbp
  73:	c3                   	ret

ft_memcpy.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_memcpy>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
   c:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  10:	48 89 55 c8          	mov    QWORD PTR [rbp-0x38],rdx
  14:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  1b:	00 
  1c:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  21:	75 0e                	jne    31 <libft_ft_memcpy+0x31>
  23:	48 83 7d d0 00       	cmp    QWORD PTR [rbp-0x30],0x0
  28:	75 07                	jne    31 <libft_ft_memcpy+0x31>
  2a:	b8 00 00 00 00       	mov    eax,0x0
  2f:	eb 49                	jmp    7a <libft_ft_memcpy+0x7a>
  31:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  35:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  39:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  3d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  41:	eb 1c                	jmp    5f <libft_ft_memcpy+0x5f>
  43:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  47:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  4a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4e:	88 10                	mov    BYTE PTR [rax],dl
  50:	48 83 45 f0 01       	add    QWORD PTR [rbp-0x10],0x1
  55:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  5a:	48 83 45 e8 01       	add    QWORD PTR [rbp-0x18],0x1
  5f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  63:	48 3b 45 c8          	cmp    rax,QWORD PTR [rbp-0x38]
  67:	72 da                	jb     43 <libft_ft_memcpy+0x43>
  69:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  6d:	48 f7 d8             	neg    rax
  70:	48 89 c2             	mov    rdx,rax
  73:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  77:	48 01 d0             	add    rax,rdx
  7a:	5d                   	pop    rbp
  7b:	c3                   	ret

ft_strdup.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_strdup>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 20          	sub    rsp,0x20
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  14:	48 89 c7             	mov    rdi,rax
  17:	e8 00 00 00 00       	call   1c <libft_ft_strdup+0x1c>
  1c:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  1f:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  22:	83 c0 01             	add    eax,0x1
  25:	48 98                	cdqe
  27:	48 89 c7             	mov    rdi,rax
  2a:	e8 00 00 00 00       	call   2f <libft_ft_strdup+0x2f>
  2f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  33:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  38:	75 07                	jne    41 <libft_ft_strdup+0x41>
  3a:	b8 00 00 00 00       	mov    eax,0x0
  3f:	eb 54                	jmp    95 <libft_ft_strdup+0x95>
  41:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  48:	eb 23                	jmp    6d <libft_ft_strdup+0x6d>
  4a:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  4d:	48 63 d0             	movsxd rdx,eax
  50:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  54:	48 01 d0             	add    rax,rdx
  57:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
  5a:	48 63 ca             	movsxd rcx,edx
  5d:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  61:	48 01 ca             	add    rdx,rcx
  64:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  67:	88 02                	mov    BYTE PTR [rdx],al
  69:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
  6d:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  70:	48 63 d0             	movsxd rdx,eax
  73:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  77:	48 01 d0             	add    rax,rdx
  7a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  7d:	84 c0                	test   al,al
  7f:	75 c9                	jne    4a <libft_ft_strdup+0x4a>
  81:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  84:	48 63 d0             	movsxd rdx,eax
  87:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  8b:	48 01 d0             	add    rax,rdx
  8e:	c6 00 00             	mov    BYTE PTR [rax],0x0
  91:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  95:	c9                   	leave
  96:	c3                   	ret

ft_memmove.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_memmove>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
   c:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  10:	48 89 55 c8          	mov    QWORD PTR [rbp-0x38],rdx
  14:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  18:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  1c:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  20:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  24:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  2b:	00 
  2c:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  31:	75 0e                	jne    41 <libft_ft_memmove+0x41>
  33:	48 83 7d d0 00       	cmp    QWORD PTR [rbp-0x30],0x0
  38:	75 07                	jne    41 <libft_ft_memmove+0x41>
  3a:	b8 00 00 00 00       	mov    eax,0x0
  3f:	eb 68                	jmp    a9 <libft_ft_memmove+0xa9>
  41:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  45:	48 39 45 f0          	cmp    QWORD PTR [rbp-0x10],rax
  49:	73 50                	jae    9b <libft_ft_memmove+0x9b>
  4b:	eb 1b                	jmp    68 <libft_ft_memmove+0x68>
  4d:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  51:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  55:	48 01 d0             	add    rax,rdx
  58:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  5c:	48 8b 55 c8          	mov    rdx,QWORD PTR [rbp-0x38]
  60:	48 01 ca             	add    rdx,rcx
  63:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  66:	88 02                	mov    BYTE PTR [rdx],al
  68:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  6c:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  70:	48 89 55 c8          	mov    QWORD PTR [rbp-0x38],rdx
  74:	48 85 c0             	test   rax,rax
  77:	75 d4                	jne    4d <libft_ft_memmove+0x4d>
  79:	eb 2a                	jmp    a5 <libft_ft_memmove+0xa5>
  7b:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  7f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  83:	48 01 d0             	add    rax,rdx
  86:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  8a:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  8e:	48 01 ca             	add    rdx,rcx
  91:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  94:	88 02                	mov    BYTE PTR [rdx],al
  96:	48 83 45 e8 01       	add    QWORD PTR [rbp-0x18],0x1
  9b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  9f:	48 3b 45 c8          	cmp    rax,QWORD PTR [rbp-0x38]
  a3:	72 d6                	jb     7b <libft_ft_memmove+0x7b>
  a5:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  a9:	5d                   	pop    rbp
  aa:	c3                   	ret

ft_memset.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_memset>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   c:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
   f:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  13:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  17:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  1b:	eb 15                	jmp    32 <libft_ft_memset+0x32>
  1d:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  20:	89 c2                	mov    edx,eax
  22:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  26:	88 10                	mov    BYTE PTR [rax],dl
  28:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  2d:	48 83 6d d8 01       	sub    QWORD PTR [rbp-0x28],0x1
  32:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  37:	75 e4                	jne    1d <libft_ft_memset+0x1d>
  39:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  3d:	5d                   	pop    rbp
  3e:	c3                   	ret

ft_strchr.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_strchr>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
   c:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
   f:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
  13:	7e 09                	jle    1e <libft_ft_strchr+0x1e>
  15:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  18:	0f be c0             	movsx  eax,al
  1b:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  1e:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
  22:	75 32                	jne    56 <libft_ft_strchr+0x56>
  24:	eb 05                	jmp    2b <libft_ft_strchr+0x2b>
  26:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  2b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  2f:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  32:	84 c0                	test   al,al
  34:	75 f0                	jne    26 <libft_ft_strchr+0x26>
  36:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  3a:	eb 2a                	jmp    66 <libft_ft_strchr+0x66>
  3c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  43:	0f be c0             	movsx  eax,al
  46:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
  49:	75 06                	jne    51 <libft_ft_strchr+0x51>
  4b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4f:	eb 15                	jmp    66 <libft_ft_strchr+0x66>
  51:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  56:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  5a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  5d:	84 c0                	test   al,al
  5f:	75 db                	jne    3c <libft_ft_strchr+0x3c>
  61:	b8 00 00 00 00       	mov    eax,0x0
  66:	5d                   	pop    rbp
  67:	c3                   	ret

ft_strlcat.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_strlcat>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 30          	sub    rsp,0x30
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  14:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  18:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  1f:	00 
  20:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  27:	00 
  28:	eb 05                	jmp    2f <libft_ft_strlcat+0x2f>
  2a:	48 83 45 f0 01       	add    QWORD PTR [rbp-0x10],0x1
  2f:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  33:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  37:	48 01 d0             	add    rax,rdx
  3a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  3d:	84 c0                	test   al,al
  3f:	74 0a                	je     4b <libft_ft_strlcat+0x4b>
  41:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  45:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
  49:	72 df                	jb     2a <libft_ft_strlcat+0x2a>
  4b:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  50:	74 0a                	je     5c <libft_ft_strlcat+0x5c>
  52:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  56:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
  5a:	72 18                	jb     74 <libft_ft_strlcat+0x74>
  5c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  60:	48 89 c7             	mov    rdi,rax
  63:	e8 00 00 00 00       	call   68 <libft_ft_strlcat+0x68>
  68:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  6c:	48 01 d0             	add    rax,rdx
  6f:	e9 83 00 00 00       	jmp    f7 <libft_ft_strlcat+0xf7>
  74:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  7b:	00 
  7c:	eb 27                	jmp    a5 <libft_ft_strlcat+0xa5>
  7e:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  82:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  86:	48 01 d0             	add    rax,rdx
  89:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  8d:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  91:	48 01 d1             	add    rcx,rdx
  94:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  98:	48 01 ca             	add    rdx,rcx
  9b:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  9e:	88 02                	mov    BYTE PTR [rdx],al
  a0:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  a5:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  a9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  ad:	48 01 d0             	add    rax,rdx
  b0:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  b3:	84 c0                	test   al,al
  b5:	74 18                	je     cf <libft_ft_strlcat+0xcf>
  b7:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  bb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  bf:	48 01 c2             	add    rdx,rax
  c2:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  c6:	48 83 e8 01          	sub    rax,0x1
  ca:	48 39 c2             	cmp    rdx,rax
  cd:	72 af                	jb     7e <libft_ft_strlcat+0x7e>
  cf:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  d3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  d7:	48 01 c2             	add    rdx,rax
  da:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  de:	48 01 d0             	add    rax,rdx
  e1:	c6 00 00             	mov    BYTE PTR [rax],0x0
  e4:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  e8:	48 89 c7             	mov    rdi,rax
  eb:	e8 00 00 00 00       	call   f0 <libft_ft_strlcat+0xf0>
  f0:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  f4:	48 01 d0             	add    rax,rdx
  f7:	c9                   	leave
  f8:	c3                   	ret

ft_strlcpy.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_strlcpy>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   c:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  10:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  14:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1b:	eb 1d                	jmp    3a <libft_ft_strlcpy+0x3a>
  1d:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  20:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  24:	48 01 d0             	add    rax,rdx
  27:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
  2a:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  2e:	48 01 ca             	add    rdx,rcx
  31:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  34:	88 02                	mov    BYTE PTR [rdx],al
  36:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  3a:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  3f:	74 21                	je     62 <libft_ft_strlcpy+0x62>
  41:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  44:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  48:	48 83 e8 01          	sub    rax,0x1
  4c:	48 39 c2             	cmp    rdx,rax
  4f:	73 11                	jae    62 <libft_ft_strlcpy+0x62>
  51:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  54:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  58:	48 01 d0             	add    rax,rdx
  5b:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  5e:	84 c0                	test   al,al
  60:	75 bb                	jne    1d <libft_ft_strlcpy+0x1d>
  62:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  65:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
  69:	73 13                	jae    7e <libft_ft_strlcpy+0x7e>
  6b:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  6e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  72:	48 01 d0             	add    rax,rdx
  75:	c6 00 00             	mov    BYTE PTR [rax],0x0
  78:	eb 04                	jmp    7e <libft_ft_strlcpy+0x7e>
  7a:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  7e:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  81:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  85:	48 01 d0             	add    rax,rdx
  88:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  8b:	84 c0                	test   al,al
  8d:	75 eb                	jne    7a <libft_ft_strlcpy+0x7a>
  8f:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  92:	5d                   	pop    rbp
  93:	c3                   	ret

ft_strlen.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_strlen>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi ; move the string into the stack and allocate some space for a size_t
   c:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0 ; initialize the size_t to 0
  13:	00 
  14:	eb 05                	jmp    1b <libft_ft_strlen+0x1b> ; jmp to strlen+0x1b, dont want to increment the size_t before the first comparaison
  16:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1 ; add 1 to the size_t
  1b:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18] ; load the string to rdx
  1f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8] ; load the size_t to rax
  23:	48 01 d0             	add    rax,rdx ; add rdx into rax
  26:	0f b6 00             	movzx  eax,BYTE PTR [rax] ; (THEORY )put some zero to compare without problem in the next instruction
                            ; al is a sub register of eax, eax is a sub register of rax
  29:	84 c0                	test   al,al ; perform a AND operation, set the ZF flag to 1 if al == 0
  2b:	75 e9                	jne    16 <libft_ft_strlen+0x16> ; check the ZF flag, is equal to 0, jump (start over the loop if the char isnt 0)
  2d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8] ; mov the result save into the stack to rax
  31:	5d                   	pop    rbp ; clean the stack 
  32:	c3                   	ret ; return

ft_strncmp.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_strncmp>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   c:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  10:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  14:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1b:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  20:	75 0b                	jne    2d <libft_ft_strncmp+0x2d>
  22:	ba 00 00 00 00       	mov    edx,0x0
  27:	eb 76                	jmp    9f <libft_ft_strncmp+0x9f>
  29:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  2d:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  30:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  34:	48 01 d0             	add    rax,rdx
  37:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  3a:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
  3d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  41:	48 01 c8             	add    rax,rcx
  44:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  47:	38 c2                	cmp    dl,al
  49:	75 32                	jne    7d <libft_ft_strncmp+0x7d>
  4b:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  4e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  52:	48 01 d0             	add    rax,rdx
  55:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  58:	84 c0                	test   al,al
  5a:	74 21                	je     7d <libft_ft_strncmp+0x7d>
  5c:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  5f:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  63:	48 01 d0             	add    rax,rdx
  66:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  69:	84 c0                	test   al,al
  6b:	74 10                	je     7d <libft_ft_strncmp+0x7d>
  6d:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  70:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  74:	48 83 e8 01          	sub    rax,0x1
  78:	48 39 c2             	cmp    rdx,rax
  7b:	72 ac                	jb     29 <libft_ft_strncmp+0x29>
  7d:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  80:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  84:	48 01 d0             	add    rax,rdx
  87:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  8a:	0f b6 d0             	movzx  edx,al
  8d:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
  90:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  94:	48 01 c8             	add    rax,rcx
  97:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  9a:	0f b6 c0             	movzx  eax,al
  9d:	29 c2                	sub    edx,eax
  9f:	89 d0                	mov    eax,edx
  a1:	5d                   	pop    rbp
  a2:	c3                   	ret

ft_strnstr.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_strnstr>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 30          	sub    rsp,0x30
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  14:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  18:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1c:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  1f:	84 c0                	test   al,al
  21:	75 09                	jne    2c <libft_ft_strnstr+0x2c>
  23:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  27:	e9 db 00 00 00       	jmp    107 <libft_ft_strnstr+0x107>
  2c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  33:	e9 ab 00 00 00       	jmp    e3 <libft_ft_strnstr+0xe3>
  38:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  3c:	48 89 c7             	mov    rdi,rax
  3f:	e8 00 00 00 00       	call   44 <libft_ft_strnstr+0x44>
  44:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
  48:	73 0a                	jae    54 <libft_ft_strnstr+0x54>
  4a:	b8 00 00 00 00       	mov    eax,0x0
  4f:	e9 b3 00 00 00       	jmp    107 <libft_ft_strnstr+0x107>
  54:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  5b:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  5e:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  61:	eb 08                	jmp    6b <libft_ft_strnstr+0x6b>
  63:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
  67:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  6b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  6e:	48 63 d0             	movsxd rdx,eax
  71:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  75:	48 01 d0             	add    rax,rdx
  78:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  7b:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  7e:	48 63 c8             	movsxd rcx,eax
  81:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  85:	48 01 c8             	add    rax,rcx
  88:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  8b:	38 c2                	cmp    dl,al
  8d:	75 28                	jne    b7 <libft_ft_strnstr+0xb7>
  8f:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  92:	48 63 d0             	movsxd rdx,eax
  95:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  99:	48 01 d0             	add    rax,rdx
  9c:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  9f:	84 c0                	test   al,al
  a1:	74 14                	je     b7 <libft_ft_strnstr+0xb7>
  a3:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  a6:	48 63 d0             	movsxd rdx,eax
  a9:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  ad:	48 01 d0             	add    rax,rdx
  b0:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  b3:	84 c0                	test   al,al
  b5:	75 ac                	jne    63 <libft_ft_strnstr+0x63>
  b7:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  ba:	48 63 d0             	movsxd rdx,eax
  bd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  c1:	48 01 d0             	add    rax,rdx
  c4:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  c7:	84 c0                	test   al,al
  c9:	75 0f                	jne    da <libft_ft_strnstr+0xda>
  cb:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  ce:	48 63 d0             	movsxd rdx,eax
  d1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  d5:	48 01 d0             	add    rax,rdx
  d8:	eb 2d                	jmp    107 <libft_ft_strnstr+0x107>
  da:	48 83 6d d8 01       	sub    QWORD PTR [rbp-0x28],0x1
  df:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
  e3:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  e6:	48 63 d0             	movsxd rdx,eax
  e9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  ed:	48 01 d0             	add    rax,rdx
  f0:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  f3:	84 c0                	test   al,al
  f5:	74 0b                	je     102 <libft_ft_strnstr+0x102>
  f7:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  fc:	0f 85 36 ff ff ff    	jne    38 <libft_ft_strnstr+0x38>
 102:	b8 00 00 00 00       	mov    eax,0x0
 107:	c9                   	leave
 108:	c3                   	ret

ft_strrchr.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_strrchr>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   c:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
   f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  16:	83 7d e4 00          	cmp    DWORD PTR [rbp-0x1c],0x0
  1a:	7e 14                	jle    30 <libft_ft_strrchr+0x30>
  1c:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  1f:	0f be c0             	movsx  eax,al
  22:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  25:	eb 09                	jmp    30 <libft_ft_strrchr+0x30>
  27:	48 83 45 e8 01       	add    QWORD PTR [rbp-0x18],0x1
  2c:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  30:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  34:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  37:	84 c0                	test   al,al
  39:	75 ec                	jne    27 <libft_ft_strrchr+0x27>
  3b:	eb 1e                	jmp    5b <libft_ft_strrchr+0x5b>
  3d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  41:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  44:	0f be c0             	movsx  eax,al
  47:	39 45 e4             	cmp    DWORD PTR [rbp-0x1c],eax
  4a:	75 06                	jne    52 <libft_ft_strrchr+0x52>
  4c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  50:	eb 14                	jmp    66 <libft_ft_strrchr+0x66>
  52:	48 83 6d e8 01       	sub    QWORD PTR [rbp-0x18],0x1
  57:	83 6d fc 01          	sub    DWORD PTR [rbp-0x4],0x1
  5b:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
  5f:	79 dc                	jns    3d <libft_ft_strrchr+0x3d>
  61:	b8 00 00 00 00       	mov    eax,0x0
  66:	5d                   	pop    rbp
  67:	c3                   	ret

ft_tolower.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_tolower>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
   b:	83 7d fc 40          	cmp    DWORD PTR [rbp-0x4],0x40
   f:	7e 0a                	jle    1b <libft_ft_tolower+0x1b>
  11:	83 7d fc 5a          	cmp    DWORD PTR [rbp-0x4],0x5a
  15:	7f 04                	jg     1b <libft_ft_tolower+0x1b>
  17:	83 45 fc 20          	add    DWORD PTR [rbp-0x4],0x20
  1b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  1e:	5d                   	pop    rbp
  1f:	c3                   	ret

ft_toupper.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_toupper>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
   b:	83 7d fc 60          	cmp    DWORD PTR [rbp-0x4],0x60
   f:	7e 0a                	jle    1b <libft_ft_toupper+0x1b>
  11:	83 7d fc 7a          	cmp    DWORD PTR [rbp-0x4],0x7a
  15:	7f 04                	jg     1b <libft_ft_toupper+0x1b>
  17:	83 6d fc 20          	sub    DWORD PTR [rbp-0x4],0x20
  1b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  1e:	5d                   	pop    rbp
  1f:	c3                   	ret

ft_substr.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ft_count_malloc>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	53                   	push   rbx
   9:	48 83 ec 28          	sub    rsp,0x28
   d:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  11:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  14:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  18:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  1b:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
  1f:	72 14                	jb     35 <ft_count_malloc+0x35>
  21:	8b 5d e4             	mov    ebx,DWORD PTR [rbp-0x1c]
  24:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  28:	48 89 c7             	mov    rdi,rax
  2b:	e8 00 00 00 00       	call   30 <ft_count_malloc+0x30>
  30:	48 39 d8             	cmp    rax,rbx
  33:	73 07                	jae    3c <ft_count_malloc+0x3c>
  35:	b8 01 00 00 00       	mov    eax,0x1
  3a:	eb 4f                	jmp    8b <ft_count_malloc+0x8b>
  3c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40:	48 89 c7             	mov    rdi,rax
  43:	e8 00 00 00 00       	call   48 <ft_count_malloc+0x48>
  48:	48 89 c2             	mov    rdx,rax
  4b:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  4e:	48 29 c2             	sub    rdx,rax
  51:	48 3b 55 d8          	cmp    rdx,QWORD PTR [rbp-0x28]
  55:	73 14                	jae    6b <ft_count_malloc+0x6b>
  57:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  5b:	48 89 c7             	mov    rdi,rax
  5e:	e8 00 00 00 00       	call   63 <ft_count_malloc+0x63>
  63:	2b 45 e4             	sub    eax,DWORD PTR [rbp-0x1c]
  66:	83 c0 01             	add    eax,0x1
  69:	eb 20                	jmp    8b <ft_count_malloc+0x8b>
  6b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  6f:	48 89 c7             	mov    rdi,rax
  72:	e8 00 00 00 00       	call   77 <ft_count_malloc+0x77>
  77:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
  7b:	73 09                	jae    86 <ft_count_malloc+0x86>
  7d:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  81:	83 c0 01             	add    eax,0x1
  84:	eb 05                	jmp    8b <ft_count_malloc+0x8b>
  86:	b8 00 00 00 00       	mov    eax,0x0
  8b:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  8f:	c9                   	leave
  90:	c3                   	ret

0000000000000091 <libft_ft_substr>:
  91:	f3 0f 1e fa          	endbr64
  95:	55                   	push   rbp
  96:	48 89 e5             	mov    rbp,rsp
  99:	48 83 ec 40          	sub    rsp,0x40
  9d:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  a1:	89 75 d4             	mov    DWORD PTR [rbp-0x2c],esi
  a4:	48 89 55 c8          	mov    QWORD PTR [rbp-0x38],rdx
  a8:	48 8b 55 c8          	mov    rdx,QWORD PTR [rbp-0x38]
  ac:	8b 4d d4             	mov    ecx,DWORD PTR [rbp-0x2c]
  af:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  b3:	89 ce                	mov    esi,ecx
  b5:	48 89 c7             	mov    rdi,rax
  b8:	e8 43 ff ff ff       	call   0 <ft_count_malloc>
  bd:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  c0:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  c3:	48 98                	cdqe
  c5:	48 89 c7             	mov    rdi,rax
  c8:	e8 00 00 00 00       	call   cd <libft_ft_substr+0x3c>
  cd:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  d1:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  d6:	75 07                	jne    df <libft_ft_substr+0x4e>
  d8:	b8 00 00 00 00       	mov    eax,0x0
  dd:	eb 7f                	jmp    15e <libft_ft_substr+0xcd>
  df:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  e6:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  ed:	eb 38                	jmp    127 <libft_ft_substr+0x96>
  ef:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  f2:	3b 45 d4             	cmp    eax,DWORD PTR [rbp-0x2c]
  f5:	72 2c                	jb     123 <libft_ft_substr+0x92>
  f7:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  fb:	39 45 f0             	cmp    DWORD PTR [rbp-0x10],eax
  fe:	7d 23                	jge    123 <libft_ft_substr+0x92>
 100:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 103:	48 63 d0             	movsxd rdx,eax
 106:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 10a:	48 01 d0             	add    rax,rdx
 10d:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
 110:	48 63 ca             	movsxd rcx,edx
 113:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 117:	48 01 ca             	add    rdx,rcx
 11a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 11d:	88 02                	mov    BYTE PTR [rdx],al
 11f:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
 123:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
 127:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 12a:	48 63 d0             	movsxd rdx,eax
 12d:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 131:	48 01 d0             	add    rax,rdx
 134:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 137:	84 c0                	test   al,al
 139:	75 b4                	jne    ef <libft_ft_substr+0x5e>
 13b:	83 7d f0 00          	cmp    DWORD PTR [rbp-0x10],0x0
 13f:	75 09                	jne    14a <libft_ft_substr+0xb9>
 141:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 145:	c6 00 00             	mov    BYTE PTR [rax],0x0
 148:	eb 10                	jmp    15a <libft_ft_substr+0xc9>
 14a:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
 14d:	48 63 d0             	movsxd rdx,eax
 150:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 154:	48 01 d0             	add    rax,rdx
 157:	c6 00 00             	mov    BYTE PTR [rax],0x0
 15a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 15e:	c9                   	leave
 15f:	c3                   	ret

ft_strjoin.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_strjoin>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	53                   	push   rbx
   9:	48 83 ec 28          	sub    rsp,0x28
   d:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  11:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  15:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  19:	48 89 c7             	mov    rdi,rax
  1c:	e8 00 00 00 00       	call   21 <libft_ft_strjoin+0x21>
  21:	48 89 c3             	mov    rbx,rax
  24:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  28:	48 89 c7             	mov    rdi,rax
  2b:	e8 00 00 00 00       	call   30 <libft_ft_strjoin+0x30>
  30:	48 01 d8             	add    rax,rbx
  33:	48 83 c0 01          	add    rax,0x1
  37:	48 89 c7             	mov    rdi,rax
  3a:	e8 00 00 00 00       	call   3f <libft_ft_strjoin+0x3f>
  3f:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  43:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  48:	75 0a                	jne    54 <libft_ft_strjoin+0x54>
  4a:	b8 00 00 00 00       	mov    eax,0x0
  4f:	e9 a3 00 00 00       	jmp    f7 <libft_ft_strjoin+0xf7>
  54:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
  5b:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x0
  62:	eb 27                	jmp    8b <libft_ft_strjoin+0x8b>
  64:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  67:	48 63 d0             	movsxd rdx,eax
  6a:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  6e:	48 01 d0             	add    rax,rdx
  71:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
  74:	48 63 ca             	movsxd rcx,edx
  77:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  7b:	48 01 ca             	add    rdx,rcx
  7e:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  81:	88 02                	mov    BYTE PTR [rdx],al
  83:	83 45 e0 01          	add    DWORD PTR [rbp-0x20],0x1
  87:	83 45 e4 01          	add    DWORD PTR [rbp-0x1c],0x1
  8b:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  8e:	48 63 d0             	movsxd rdx,eax
  91:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  95:	48 01 d0             	add    rax,rdx
  98:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  9b:	84 c0                	test   al,al
  9d:	75 c5                	jne    64 <libft_ft_strjoin+0x64>
  9f:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
  a6:	eb 27                	jmp    cf <libft_ft_strjoin+0xcf>
  a8:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  ab:	48 63 d0             	movsxd rdx,eax
  ae:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  b2:	48 01 d0             	add    rax,rdx
  b5:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
  b8:	48 63 ca             	movsxd rcx,edx
  bb:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  bf:	48 01 ca             	add    rdx,rcx
  c2:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  c5:	88 02                	mov    BYTE PTR [rdx],al
  c7:	83 45 e0 01          	add    DWORD PTR [rbp-0x20],0x1
  cb:	83 45 e4 01          	add    DWORD PTR [rbp-0x1c],0x1
  cf:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  d2:	48 63 d0             	movsxd rdx,eax
  d5:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  d9:	48 01 d0             	add    rax,rdx
  dc:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  df:	84 c0                	test   al,al
  e1:	75 c5                	jne    a8 <libft_ft_strjoin+0xa8>
  e3:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  e6:	48 63 d0             	movsxd rdx,eax
  e9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  ed:	48 01 d0             	add    rax,rdx
  f0:	c6 00 00             	mov    BYTE PTR [rax],0x0
  f3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  f7:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  fb:	c9                   	leave
  fc:	c3                   	ret

ft_strtrim.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ft_is_set>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	89 f8                	mov    eax,edi
   a:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
   e:	88 45 ec             	mov    BYTE PTR [rbp-0x14],al
  11:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  18:	eb 20                	jmp    3a <ft_is_set+0x3a>
  1a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  1d:	48 63 d0             	movsxd rdx,eax
  20:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  24:	48 01 d0             	add    rax,rdx
  27:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  2a:	38 45 ec             	cmp    BYTE PTR [rbp-0x14],al
  2d:	75 07                	jne    36 <ft_is_set+0x36>
  2f:	b8 01 00 00 00       	mov    eax,0x1
  34:	eb 1d                	jmp    53 <ft_is_set+0x53>
  36:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  3a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  3d:	48 63 d0             	movsxd rdx,eax
  40:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  44:	48 01 d0             	add    rax,rdx
  47:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4a:	84 c0                	test   al,al
  4c:	75 cc                	jne    1a <ft_is_set+0x1a>
  4e:	b8 00 00 00 00       	mov    eax,0x0
  53:	5d                   	pop    rbp
  54:	c3                   	ret

0000000000000055 <ft_fill_result>:
  55:	f3 0f 1e fa          	endbr64
  59:	55                   	push   rbp
  5a:	48 89 e5             	mov    rbp,rsp
  5d:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  61:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  64:	89 55 e0             	mov    DWORD PTR [rbp-0x20],edx
  67:	48 89 4d d8          	mov    QWORD PTR [rbp-0x28],rcx
  6b:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
  72:	eb 24                	jmp    98 <ft_fill_result+0x43>
  74:	8b 55 e0             	mov    edx,DWORD PTR [rbp-0x20]
  77:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  7a:	01 d0                	add    eax,edx
  7c:	48 63 d0             	movsxd rdx,eax
  7f:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  83:	48 01 d0             	add    rax,rdx
  86:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  89:	48 63 ca             	movsxd rcx,edx
  8c:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  90:	48 01 ca             	add    rdx,rcx
  93:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  96:	88 02                	mov    BYTE PTR [rdx],al
  98:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  9c:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  9f:	2b 45 e0             	sub    eax,DWORD PTR [rbp-0x20]
  a2:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
  a5:	7e cd                	jle    74 <ft_fill_result+0x1f>
  a7:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  aa:	48 63 d0             	movsxd rdx,eax
  ad:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  b1:	48 01 d0             	add    rax,rdx
  b4:	c6 00 00             	mov    BYTE PTR [rax],0x0
  b7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  bb:	5d                   	pop    rbp
  bc:	c3                   	ret

00000000000000bd <libft_ft_strtrim>:
  bd:	f3 0f 1e fa          	endbr64
  c1:	55                   	push   rbp
  c2:	48 89 e5             	mov    rbp,rsp
  c5:	48 83 ec 20          	sub    rsp,0x20
  c9:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  cd:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  d1:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  d8:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  df:	eb 04                	jmp    e5 <libft_ft_strtrim+0x28>
  e1:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
  e5:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  e8:	48 63 d0             	movsxd rdx,eax
  eb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  ef:	48 01 d0             	add    rax,rdx
  f2:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  f5:	0f be c0             	movsx  eax,al
  f8:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  fc:	48 89 d6             	mov    rsi,rdx
  ff:	89 c7                	mov    edi,eax
 101:	e8 fa fe ff ff       	call   0 <ft_is_set>
 106:	85 c0                	test   eax,eax
 108:	74 0b                	je     115 <libft_ft_strtrim+0x58>
 10a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 10e:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 111:	84 c0                	test   al,al
 113:	75 cc                	jne    e1 <libft_ft_strtrim+0x24>
 115:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
 118:	48 63 d0             	movsxd rdx,eax
 11b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 11f:	48 01 d0             	add    rax,rdx
 122:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 125:	84 c0                	test   al,al
 127:	75 33                	jne    15c <libft_ft_strtrim+0x9f>
 129:	bf 01 00 00 00       	mov    edi,0x1
 12e:	e8 00 00 00 00       	call   133 <libft_ft_strtrim+0x76>
 133:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 137:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 13c:	75 0a                	jne    148 <libft_ft_strtrim+0x8b>
 13e:	b8 00 00 00 00       	mov    eax,0x0
 143:	e9 a9 00 00 00       	jmp    1f1 <libft_ft_strtrim+0x134>
 148:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 14c:	c6 00 00             	mov    BYTE PTR [rax],0x0
 14f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 153:	e9 99 00 00 00       	jmp    1f1 <libft_ft_strtrim+0x134>
 158:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
 15c:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 15f:	48 98                	cdqe
 161:	48 8d 50 01          	lea    rdx,[rax+0x1]
 165:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 169:	48 01 d0             	add    rax,rdx
 16c:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 16f:	84 c0                	test   al,al
 171:	75 e5                	jne    158 <libft_ft_strtrim+0x9b>
 173:	eb 04                	jmp    179 <libft_ft_strtrim+0xbc>
 175:	83 6d f4 01          	sub    DWORD PTR [rbp-0xc],0x1
 179:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 17c:	48 63 d0             	movsxd rdx,eax
 17f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 183:	48 01 d0             	add    rax,rdx
 186:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 189:	0f be c0             	movsx  eax,al
 18c:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
 190:	48 89 d6             	mov    rsi,rdx
 193:	89 c7                	mov    edi,eax
 195:	e8 66 fe ff ff       	call   0 <ft_is_set>
 19a:	85 c0                	test   eax,eax
 19c:	74 0b                	je     1a9 <libft_ft_strtrim+0xec>
 19e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 1a2:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 1a5:	84 c0                	test   al,al
 1a7:	75 cc                	jne    175 <libft_ft_strtrim+0xb8>
 1a9:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
 1ad:	79 07                	jns    1b6 <libft_ft_strtrim+0xf9>
 1af:	b8 00 00 00 00       	mov    eax,0x0
 1b4:	eb 3b                	jmp    1f1 <libft_ft_strtrim+0x134>
 1b6:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 1b9:	2b 45 f0             	sub    eax,DWORD PTR [rbp-0x10]
 1bc:	83 c0 02             	add    eax,0x2
 1bf:	48 98                	cdqe
 1c1:	48 89 c7             	mov    rdi,rax
 1c4:	e8 00 00 00 00       	call   1c9 <libft_ft_strtrim+0x10c>
 1c9:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 1cd:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 1d2:	75 07                	jne    1db <libft_ft_strtrim+0x11e>
 1d4:	b8 00 00 00 00       	mov    eax,0x0
 1d9:	eb 16                	jmp    1f1 <libft_ft_strtrim+0x134>
 1db:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
 1df:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
 1e2:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
 1e5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1e9:	48 89 c7             	mov    rdi,rax
 1ec:	e8 64 fe ff ff       	call   55 <ft_fill_result>
 1f1:	c9                   	leave
 1f2:	c3                   	ret

ft_split.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ft_nbr_str>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   c:	89 f0                	mov    eax,esi
   e:	88 45 e4             	mov    BYTE PTR [rbp-0x1c],al
  11:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  18:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1f:	eb 4c                	jmp    6d <ft_nbr_str+0x6d>
  21:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  24:	48 63 d0             	movsxd rdx,eax
  27:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  2b:	48 01 d0             	add    rax,rdx
  2e:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  31:	38 45 e4             	cmp    BYTE PTR [rbp-0x1c],al
  34:	75 0a                	jne    40 <ft_nbr_str+0x40>
  36:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  3a:	eb 31                	jmp    6d <ft_nbr_str+0x6d>
  3c:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  40:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  43:	48 63 d0             	movsxd rdx,eax
  46:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4a:	48 01 d0             	add    rax,rdx
  4d:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  50:	38 45 e4             	cmp    BYTE PTR [rbp-0x1c],al
  53:	74 14                	je     69 <ft_nbr_str+0x69>
  55:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  58:	48 63 d0             	movsxd rdx,eax
  5b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  5f:	48 01 d0             	add    rax,rdx
  62:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  65:	84 c0                	test   al,al
  67:	75 d3                	jne    3c <ft_nbr_str+0x3c>
  69:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
  6d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  70:	48 63 d0             	movsxd rdx,eax
  73:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  77:	48 01 d0             	add    rax,rdx
  7a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  7d:	84 c0                	test   al,al
  7f:	75 a0                	jne    21 <ft_nbr_str+0x21>
  81:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  84:	5d                   	pop    rbp
  85:	c3                   	ret

0000000000000086 <ft_str_len_char>:
  86:	f3 0f 1e fa          	endbr64
  8a:	55                   	push   rbp
  8b:	48 89 e5             	mov    rbp,rsp
  8e:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  92:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  95:	89 d0                	mov    eax,edx
  97:	88 45 e0             	mov    BYTE PTR [rbp-0x20],al
  9a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  a1:	eb 08                	jmp    ab <ft_str_len_char+0x25>
  a3:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  a7:	83 45 e4 01          	add    DWORD PTR [rbp-0x1c],0x1
  ab:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  ae:	48 63 d0             	movsxd rdx,eax
  b1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  b5:	48 01 d0             	add    rax,rdx
  b8:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  bb:	38 45 e0             	cmp    BYTE PTR [rbp-0x20],al
  be:	74 14                	je     d4 <ft_str_len_char+0x4e>
  c0:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  c3:	48 63 d0             	movsxd rdx,eax
  c6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  ca:	48 01 d0             	add    rax,rdx
  cd:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  d0:	84 c0                	test   al,al
  d2:	75 cf                	jne    a3 <ft_str_len_char+0x1d>
  d4:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  d7:	5d                   	pop    rbp
  d8:	c3                   	ret

00000000000000d9 <ft_fill_string>:
  d9:	f3 0f 1e fa          	endbr64
  dd:	55                   	push   rbp
  de:	48 89 e5             	mov    rbp,rsp
  e1:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  e5:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  e9:	89 55 dc             	mov    DWORD PTR [rbp-0x24],edx
  ec:	89 c8                	mov    eax,ecx
  ee:	88 45 d8             	mov    BYTE PTR [rbp-0x28],al
  f1:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
  f8:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  ff:	eb 2b                	jmp    12c <ft_fill_string+0x53>
 101:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
 104:	48 63 d0             	movsxd rdx,eax
 107:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 10b:	48 01 d0             	add    rax,rdx
 10e:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
 111:	48 63 ca             	movsxd rcx,edx
 114:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
 118:	48 01 ca             	add    rdx,rcx
 11b:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 11e:	88 02                	mov    BYTE PTR [rdx],al
 120:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
 124:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
 128:	83 45 dc 01          	add    DWORD PTR [rbp-0x24],0x1
 12c:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
 12f:	48 63 d0             	movsxd rdx,eax
 132:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 136:	48 01 d0             	add    rax,rdx
 139:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 13c:	38 45 d8             	cmp    BYTE PTR [rbp-0x28],al
 13f:	74 14                	je     155 <ft_fill_string+0x7c>
 141:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
 144:	48 63 d0             	movsxd rdx,eax
 147:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 14b:	48 01 d0             	add    rax,rdx
 14e:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 151:	84 c0                	test   al,al
 153:	75 ac                	jne    101 <ft_fill_string+0x28>
 155:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 158:	48 63 d0             	movsxd rdx,eax
 15b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 15f:	48 01 d0             	add    rax,rdx
 162:	c6 00 00             	mov    BYTE PTR [rax],0x0
 165:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
 168:	5d                   	pop    rbp
 169:	c3                   	ret

000000000000016a <ft_fil_result>:
 16a:	f3 0f 1e fa          	endbr64
 16e:	55                   	push   rbp
 16f:	48 89 e5             	mov    rbp,rsp
 172:	53                   	push   rbx
 173:	48 83 ec 38          	sub    rsp,0x38
 177:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
 17b:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
 17f:	89 d0                	mov    eax,edx
 181:	88 45 cc             	mov    BYTE PTR [rbp-0x34],al
 184:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
 18b:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
 192:	eb 04                	jmp    198 <ft_fil_result+0x2e>
 194:	83 45 e8 01          	add    DWORD PTR [rbp-0x18],0x1
 198:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 19b:	48 63 d0             	movsxd rdx,eax
 19e:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 1a2:	48 01 d0             	add    rax,rdx
 1a5:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 1a8:	38 45 cc             	cmp    BYTE PTR [rbp-0x34],al
 1ab:	0f 85 d2 00 00 00    	jne    283 <ft_fil_result+0x119>
 1b1:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 1b4:	48 63 d0             	movsxd rdx,eax
 1b7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 1bb:	48 01 d0             	add    rax,rdx
 1be:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 1c1:	84 c0                	test   al,al
 1c3:	75 cf                	jne    194 <ft_fil_result+0x2a>
 1c5:	e9 b9 00 00 00       	jmp    283 <ft_fil_result+0x119>
 1ca:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 1cd:	48 63 d0             	movsxd rdx,eax
 1d0:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 1d4:	48 01 d0             	add    rax,rdx
 1d7:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 1da:	38 45 cc             	cmp    BYTE PTR [rbp-0x34],al
 1dd:	0f 84 88 00 00 00    	je     26b <ft_fil_result+0x101>
 1e3:	0f be 55 cc          	movsx  edx,BYTE PTR [rbp-0x34]
 1e7:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
 1ea:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 1ee:	89 ce                	mov    esi,ecx
 1f0:	48 89 c7             	mov    rdi,rax
 1f3:	e8 8e fe ff ff       	call   86 <ft_str_len_char>
 1f8:	83 c0 01             	add    eax,0x1
 1fb:	48 98                	cdqe
 1fd:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
 200:	48 63 d2             	movsxd rdx,edx
 203:	48 8d 0c d5 00 00 00 	lea    rcx,[rdx*8+0x0]
 20a:	00 
 20b:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
 20f:	48 8d 1c 11          	lea    rbx,[rcx+rdx*1]
 213:	48 89 c7             	mov    rdi,rax
 216:	e8 00 00 00 00       	call   21b <ft_fil_result+0xb1>
 21b:	48 89 03             	mov    QWORD PTR [rbx],rax
 21e:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 221:	48 98                	cdqe
 223:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
 22a:	00 
 22b:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 22f:	48 01 d0             	add    rax,rdx
 232:	48 8b 00             	mov    rax,QWORD PTR [rax]
 235:	48 85 c0             	test   rax,rax
 238:	74 63                	je     29d <ft_fil_result+0x133>
 23a:	0f be 4d cc          	movsx  ecx,BYTE PTR [rbp-0x34]
 23e:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 241:	48 98                	cdqe
 243:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
 24a:	00 
 24b:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 24f:	48 01 d0             	add    rax,rdx
 252:	48 8b 00             	mov    rax,QWORD PTR [rax]
 255:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
 258:	48 8b 75 d8          	mov    rsi,QWORD PTR [rbp-0x28]
 25c:	48 89 c7             	mov    rdi,rax
 25f:	e8 75 fe ff ff       	call   d9 <ft_fill_string>
 264:	01 45 e8             	add    DWORD PTR [rbp-0x18],eax
 267:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
 26b:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 26e:	48 63 d0             	movsxd rdx,eax
 271:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 275:	48 01 d0             	add    rax,rdx
 278:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 27b:	84 c0                	test   al,al
 27d:	74 21                	je     2a0 <ft_fil_result+0x136>
 27f:	83 45 e8 01          	add    DWORD PTR [rbp-0x18],0x1
 283:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 286:	48 63 d0             	movsxd rdx,eax
 289:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 28d:	48 01 d0             	add    rax,rdx
 290:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 293:	84 c0                	test   al,al
 295:	0f 85 2f ff ff ff    	jne    1ca <ft_fil_result+0x60>
 29b:	eb 04                	jmp    2a1 <ft_fil_result+0x137>
 29d:	90                   	nop
 29e:	eb 01                	jmp    2a1 <ft_fil_result+0x137>
 2a0:	90                   	nop
 2a1:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
 2a5:	c9                   	leave
 2a6:	c3                   	ret

00000000000002a7 <libft_ft_split>:
 2a7:	f3 0f 1e fa          	endbr64
 2ab:	55                   	push   rbp
 2ac:	48 89 e5             	mov    rbp,rsp
 2af:	48 83 ec 20          	sub    rsp,0x20
 2b3:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 2b7:	89 f0                	mov    eax,esi
 2b9:	88 45 e4             	mov    BYTE PTR [rbp-0x1c],al
 2bc:	0f be 55 e4          	movsx  edx,BYTE PTR [rbp-0x1c]
 2c0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 2c4:	89 d6                	mov    esi,edx
 2c6:	48 89 c7             	mov    rdi,rax
 2c9:	e8 32 fd ff ff       	call   0 <ft_nbr_str>
 2ce:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
 2d1:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 2d4:	83 c0 01             	add    eax,0x1
 2d7:	48 98                	cdqe
 2d9:	48 c1 e0 03          	shl    rax,0x3
 2dd:	48 89 c7             	mov    rdi,rax
 2e0:	e8 00 00 00 00       	call   2e5 <libft_ft_split+0x3e>
 2e5:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 2e9:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 2ee:	75 07                	jne    2f7 <libft_ft_split+0x50>
 2f0:	b8 00 00 00 00       	mov    eax,0x0
 2f5:	eb 36                	jmp    32d <libft_ft_split+0x86>
 2f7:	0f be 55 e4          	movsx  edx,BYTE PTR [rbp-0x1c]
 2fb:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
 2ff:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 303:	48 89 ce             	mov    rsi,rcx
 306:	48 89 c7             	mov    rdi,rax
 309:	e8 5c fe ff ff       	call   16a <ft_fil_result>
 30e:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 311:	48 98                	cdqe
 313:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
 31a:	00 
 31b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 31f:	48 01 d0             	add    rax,rdx
 322:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
 329:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 32d:	c9                   	leave
 32e:	c3                   	ret

ft_itoa.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <ft_size_nbr>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  13:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  18:	75 34                	jne    4e <ft_size_nbr+0x4e>
  1a:	b8 01 00 00 00       	mov    eax,0x1
  1f:	eb 42                	jmp    63 <ft_size_nbr+0x63>
  21:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  25:	48 ba 67 66 66 66 66 	movabs rdx,0x6666666666666667
  2c:	66 66 66 
  2f:	48 89 c8             	mov    rax,rcx
  32:	48 f7 ea             	imul   rdx
  35:	48 89 d0             	mov    rax,rdx
  38:	48 c1 f8 02          	sar    rax,0x2
  3c:	48 c1 f9 3f          	sar    rcx,0x3f
  40:	48 89 ca             	mov    rdx,rcx
  43:	48 29 d0             	sub    rax,rdx
  46:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  4a:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  4e:	48 83 7d e8 01       	cmp    QWORD PTR [rbp-0x18],0x1
  53:	7f cc                	jg     21 <ft_size_nbr+0x21>
  55:	48 83 7d e8 01       	cmp    QWORD PTR [rbp-0x18],0x1
  5a:	75 04                	jne    60 <ft_size_nbr+0x60>
  5c:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  60:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  63:	5d                   	pop    rbp
  64:	c3                   	ret

0000000000000065 <ft_fill_result>:
  65:	f3 0f 1e fa          	endbr64
  69:	55                   	push   rbp
  6a:	48 89 e5             	mov    rbp,rsp
  6d:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  71:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  74:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  78:	89 4d f0             	mov    DWORD PTR [rbp-0x10],ecx
  7b:	83 7d f0 01          	cmp    DWORD PTR [rbp-0x10],0x1
  7f:	0f 85 87 00 00 00    	jne    10c <ft_fill_result+0xa7>
  85:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  89:	c6 00 2d             	mov    BYTE PTR [rax],0x2d
  8c:	eb 78                	jmp    106 <ft_fill_result+0xa1>
  8e:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  92:	48 ba 67 66 66 66 66 	movabs rdx,0x6666666666666667
  99:	66 66 66 
  9c:	48 89 c8             	mov    rax,rcx
  9f:	48 f7 ea             	imul   rdx
  a2:	48 c1 fa 02          	sar    rdx,0x2
  a6:	48 89 c8             	mov    rax,rcx
  a9:	48 c1 f8 3f          	sar    rax,0x3f
  ad:	48 29 c2             	sub    rdx,rax
  b0:	48 89 d0             	mov    rax,rdx
  b3:	48 c1 e0 02          	shl    rax,0x2
  b7:	48 01 d0             	add    rax,rdx
  ba:	48 01 c0             	add    rax,rax
  bd:	48 29 c1             	sub    rcx,rax
  c0:	48 89 ca             	mov    rdx,rcx
  c3:	89 d0                	mov    eax,edx
  c5:	8d 48 30             	lea    ecx,[rax+0x30]
  c8:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  cb:	48 63 d0             	movsxd rdx,eax
  ce:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  d2:	48 01 d0             	add    rax,rdx
  d5:	89 ca                	mov    edx,ecx
  d7:	88 10                	mov    BYTE PTR [rax],dl
  d9:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  dd:	48 ba 67 66 66 66 66 	movabs rdx,0x6666666666666667
  e4:	66 66 66 
  e7:	48 89 c8             	mov    rax,rcx
  ea:	48 f7 ea             	imul   rdx
  ed:	48 89 d0             	mov    rax,rdx
  f0:	48 c1 f8 02          	sar    rax,0x2
  f4:	48 c1 f9 3f          	sar    rcx,0x3f
  f8:	48 89 ca             	mov    rdx,rcx
  fb:	48 29 d0             	sub    rax,rdx
  fe:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
 102:	83 6d f4 01          	sub    DWORD PTR [rbp-0xc],0x1
 106:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
 10a:	75 82                	jne    8e <ft_fill_result+0x29>
 10c:	83 7d f0 00          	cmp    DWORD PTR [rbp-0x10],0x0
 110:	0f 85 84 00 00 00    	jne    19a <ft_fill_result+0x135>
 116:	83 6d f4 01          	sub    DWORD PTR [rbp-0xc],0x1
 11a:	eb 78                	jmp    194 <ft_fill_result+0x12f>
 11c:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
 120:	48 ba 67 66 66 66 66 	movabs rdx,0x6666666666666667
 127:	66 66 66 
 12a:	48 89 c8             	mov    rax,rcx
 12d:	48 f7 ea             	imul   rdx
 130:	48 c1 fa 02          	sar    rdx,0x2
 134:	48 89 c8             	mov    rax,rcx
 137:	48 c1 f8 3f          	sar    rax,0x3f
 13b:	48 29 c2             	sub    rdx,rax
 13e:	48 89 d0             	mov    rax,rdx
 141:	48 c1 e0 02          	shl    rax,0x2
 145:	48 01 d0             	add    rax,rdx
 148:	48 01 c0             	add    rax,rax
 14b:	48 29 c1             	sub    rcx,rax
 14e:	48 89 ca             	mov    rdx,rcx
 151:	89 d0                	mov    eax,edx
 153:	8d 48 30             	lea    ecx,[rax+0x30]
 156:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 159:	48 63 d0             	movsxd rdx,eax
 15c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 160:	48 01 d0             	add    rax,rdx
 163:	89 ca                	mov    edx,ecx
 165:	88 10                	mov    BYTE PTR [rax],dl
 167:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
 16b:	48 ba 67 66 66 66 66 	movabs rdx,0x6666666666666667
 172:	66 66 66 
 175:	48 89 c8             	mov    rax,rcx
 178:	48 f7 ea             	imul   rdx
 17b:	48 89 d0             	mov    rax,rdx
 17e:	48 c1 f8 02          	sar    rax,0x2
 182:	48 c1 f9 3f          	sar    rcx,0x3f
 186:	48 89 ca             	mov    rdx,rcx
 189:	48 29 d0             	sub    rax,rdx
 18c:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
 190:	83 6d f4 01          	sub    DWORD PTR [rbp-0xc],0x1
 194:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
 198:	79 82                	jns    11c <ft_fill_result+0xb7>
 19a:	90                   	nop
 19b:	5d                   	pop    rbp
 19c:	c3                   	ret

000000000000019d <ft_add_null_terminal_number>:
 19d:	f3 0f 1e fa          	endbr64
 1a1:	55                   	push   rbp
 1a2:	48 89 e5             	mov    rbp,rsp
 1a5:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
 1a9:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
 1ac:	89 55 f0             	mov    DWORD PTR [rbp-0x10],edx
 1af:	83 7d f0 01          	cmp    DWORD PTR [rbp-0x10],0x1
 1b3:	75 13                	jne    1c8 <ft_add_null_terminal_number+0x2b>
 1b5:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 1b8:	48 98                	cdqe
 1ba:	48 8d 50 01          	lea    rdx,[rax+0x1]
 1be:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1c2:	48 01 d0             	add    rax,rdx
 1c5:	c6 00 00             	mov    BYTE PTR [rax],0x0
 1c8:	83 7d f0 00          	cmp    DWORD PTR [rbp-0x10],0x0
 1cc:	75 10                	jne    1de <ft_add_null_terminal_number+0x41>
 1ce:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 1d1:	48 63 d0             	movsxd rdx,eax
 1d4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1d8:	48 01 d0             	add    rax,rdx
 1db:	c6 00 00             	mov    BYTE PTR [rax],0x0
 1de:	90                   	nop
 1df:	5d                   	pop    rbp
 1e0:	c3                   	ret

00000000000001e1 <ft_nbr_0>:
 1e1:	f3 0f 1e fa          	endbr64
 1e5:	55                   	push   rbp
 1e6:	48 89 e5             	mov    rbp,rsp
 1e9:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
 1ed:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1f1:	c6 00 30             	mov    BYTE PTR [rax],0x30
 1f4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1f8:	48 83 c0 01          	add    rax,0x1
 1fc:	c6 00 00             	mov    BYTE PTR [rax],0x0
 1ff:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 203:	5d                   	pop    rbp
 204:	c3                   	ret

0000000000000205 <libft_ft_itoa>:
 205:	f3 0f 1e fa          	endbr64
 209:	55                   	push   rbp
 20a:	48 89 e5             	mov    rbp,rsp
 20d:	48 83 ec 30          	sub    rsp,0x30
 211:	89 7d dc             	mov    DWORD PTR [rbp-0x24],edi
 214:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
 217:	48 98                	cdqe
 219:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
 21d:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
 224:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
 229:	79 0b                	jns    236 <libft_ft_itoa+0x31>
 22b:	48 f7 5d f0          	neg    QWORD PTR [rbp-0x10]
 22f:	c7 45 e8 01 00 00 00 	mov    DWORD PTR [rbp-0x18],0x1
 236:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 23a:	48 89 c7             	mov    rdi,rax
 23d:	e8 be fd ff ff       	call   0 <ft_size_nbr>
 242:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
 245:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
 248:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 24b:	01 d0                	add    eax,edx
 24d:	83 c0 01             	add    eax,0x1
 250:	48 98                	cdqe
 252:	48 89 c7             	mov    rdi,rax
 255:	e8 00 00 00 00       	call   25a <libft_ft_itoa+0x55>
 25a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 25e:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 263:	75 07                	jne    26c <libft_ft_itoa+0x67>
 265:	b8 00 00 00 00       	mov    eax,0x0
 26a:	eb 43                	jmp    2af <libft_ft_itoa+0xaa>
 26c:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
 271:	75 0e                	jne    281 <libft_ft_itoa+0x7c>
 273:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 277:	48 89 c7             	mov    rdi,rax
 27a:	e8 62 ff ff ff       	call   1e1 <ft_nbr_0>
 27f:	eb 2e                	jmp    2af <libft_ft_itoa+0xaa>
 281:	8b 4d e8             	mov    ecx,DWORD PTR [rbp-0x18]
 284:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
 288:	8b 75 ec             	mov    esi,DWORD PTR [rbp-0x14]
 28b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 28f:	48 89 c7             	mov    rdi,rax
 292:	e8 ce fd ff ff       	call   65 <ft_fill_result>
 297:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
 29a:	8b 4d ec             	mov    ecx,DWORD PTR [rbp-0x14]
 29d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 2a1:	89 ce                	mov    esi,ecx
 2a3:	48 89 c7             	mov    rdi,rax
 2a6:	e8 f2 fe ff ff       	call   19d <ft_add_null_terminal_number>
 2ab:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 2af:	c9                   	leave
 2b0:	c3                   	ret

ft_strmapi.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_strmapi>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	53                   	push   rbx
   9:	48 83 ec 28          	sub    rsp,0x28
   d:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  11:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  15:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x0
  1c:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  20:	48 89 c7             	mov    rdi,rax
  23:	e8 00 00 00 00       	call   28 <libft_ft_strmapi+0x28>
  28:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  2c:	48 83 7d d0 00       	cmp    QWORD PTR [rbp-0x30],0x0
  31:	74 0e                	je     41 <libft_ft_strmapi+0x41>
  33:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  38:	74 07                	je     41 <libft_ft_strmapi+0x41>
  3a:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  3f:	75 3b                	jne    7c <libft_ft_strmapi+0x7c>
  41:	b8 00 00 00 00       	mov    eax,0x0
  46:	eb 4c                	jmp    94 <libft_ft_strmapi+0x94>
  48:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  4b:	48 63 d0             	movsxd rdx,eax
  4e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  52:	48 01 d0             	add    rax,rdx
  55:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  58:	0f be d0             	movsx  edx,al
  5b:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  5e:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
  61:	48 63 f1             	movsxd rsi,ecx
  64:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  68:	48 8d 1c 0e          	lea    rbx,[rsi+rcx*1]
  6c:	48 8b 4d d0          	mov    rcx,QWORD PTR [rbp-0x30]
  70:	89 d6                	mov    esi,edx
  72:	89 c7                	mov    edi,eax
  74:	ff d1                	call   rcx
  76:	88 03                	mov    BYTE PTR [rbx],al
  78:	83 45 e4 01          	add    DWORD PTR [rbp-0x1c],0x1
  7c:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  7f:	48 63 d0             	movsxd rdx,eax
  82:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  86:	48 01 d0             	add    rax,rdx
  89:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  8c:	84 c0                	test   al,al
  8e:	75 b8                	jne    48 <libft_ft_strmapi+0x48>
  90:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  94:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  98:	c9                   	leave
  99:	c3                   	ret

ft_striteri.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_striteri>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 20          	sub    rsp,0x20
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  14:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1b:	48 83 7d e0 00       	cmp    QWORD PTR [rbp-0x20],0x0
  20:	74 3f                	je     61 <libft_ft_striteri+0x61>
  22:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  27:	74 38                	je     61 <libft_ft_striteri+0x61>
  29:	eb 20                	jmp    4b <libft_ft_striteri+0x4b>
  2b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  2e:	48 63 d0             	movsxd rdx,eax
  31:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  35:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  39:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  3c:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  40:	48 89 ce             	mov    rsi,rcx
  43:	89 c7                	mov    edi,eax
  45:	ff d2                	call   rdx
  47:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  4b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4e:	48 63 d0             	movsxd rdx,eax
  51:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  55:	48 01 d0             	add    rax,rdx
  58:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  5b:	84 c0                	test   al,al
  5d:	75 cc                	jne    2b <libft_ft_striteri+0x2b>
  5f:	eb 01                	jmp    62 <libft_ft_striteri+0x62>
  61:	90                   	nop
  62:	c9                   	leave
  63:	c3                   	ret

ft_putchar_fd.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_putchar_fd>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 10          	sub    rsp,0x10
   c:	89 f8                	mov    eax,edi
   e:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
  11:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
  14:	48 8d 4d fc          	lea    rcx,[rbp-0x4]
  18:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  1b:	ba 01 00 00 00       	mov    edx,0x1
  20:	48 89 ce             	mov    rsi,rcx
  23:	89 c7                	mov    edi,eax
  25:	e8 00 00 00 00       	call   2a <libft_ft_putchar_fd+0x2a>
  2a:	90                   	nop
  2b:	c9                   	leave
  2c:	c3                   	ret

ft_putstr_fd.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_putstr_fd>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 10          	sub    rsp,0x10
   c:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  13:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  17:	48 89 c7             	mov    rdi,rax
  1a:	e8 00 00 00 00       	call   1f <libft_ft_putstr_fd+0x1f>
  1f:	48 89 c2             	mov    rdx,rax
  22:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  26:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  29:	48 89 ce             	mov    rsi,rcx
  2c:	89 c7                	mov    edi,eax
  2e:	e8 00 00 00 00       	call   33 <libft_ft_putstr_fd+0x33>
  33:	90                   	nop
  34:	c9                   	leave
  35:	c3                   	ret

ft_putendl_fd.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_putendl_fd>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 20          	sub    rsp,0x20
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  13:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  1a:	eb 24                	jmp    40 <libft_ft_putendl_fd+0x40>
  1c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  1f:	48 63 d0             	movsxd rdx,eax
  22:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  26:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  2a:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  2d:	ba 01 00 00 00       	mov    edx,0x1
  32:	48 89 ce             	mov    rsi,rcx
  35:	89 c7                	mov    edi,eax
  37:	e8 00 00 00 00       	call   3c <libft_ft_putendl_fd+0x3c>
  3c:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  40:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  43:	48 63 d0             	movsxd rdx,eax
  46:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4a:	48 01 d0             	add    rax,rdx
  4d:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  50:	84 c0                	test   al,al
  52:	75 c8                	jne    1c <libft_ft_putendl_fd+0x1c>
  54:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  57:	ba 01 00 00 00       	mov    edx,0x1
  5c:	48 8d 0d 00 00 00 00 	lea    rcx,[rip+0x0]        # 63 <libft_ft_putendl_fd+0x63>
  63:	48 89 ce             	mov    rsi,rcx
  66:	89 c7                	mov    edi,eax
  68:	e8 00 00 00 00       	call   6d <libft_ft_putendl_fd+0x6d>
  6d:	90                   	nop
  6e:	c9                   	leave
  6f:	c3                   	ret

ft_putnbr_fd.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_putnbr_fd>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 20          	sub    rsp,0x20
   c:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
   f:	89 75 e8             	mov    DWORD PTR [rbp-0x18],esi
  12:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  15:	48 98                	cdqe
  17:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  1b:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  20:	79 13                	jns    35 <libft_ft_putnbr_fd+0x35>
  22:	48 f7 5d f8          	neg    QWORD PTR [rbp-0x8]
  26:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  29:	89 c6                	mov    esi,eax
  2b:	bf 2d 00 00 00       	mov    edi,0x2d
  30:	e8 00 00 00 00       	call   35 <libft_ft_putnbr_fd+0x35>
  35:	48 83 7d f8 09       	cmp    QWORD PTR [rbp-0x8],0x9
  3a:	7e 6f                	jle    ab <libft_ft_putnbr_fd+0xab>
  3c:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  40:	48 ba 67 66 66 66 66 	movabs rdx,0x6666666666666667
  47:	66 66 66 
  4a:	48 89 c8             	mov    rax,rcx
  4d:	48 f7 ea             	imul   rdx
  50:	48 c1 fa 02          	sar    rdx,0x2
  54:	48 89 c8             	mov    rax,rcx
  57:	48 c1 f8 3f          	sar    rax,0x3f
  5b:	48 29 c2             	sub    rdx,rax
  5e:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  61:	89 c6                	mov    esi,eax
  63:	89 d7                	mov    edi,edx
  65:	e8 00 00 00 00       	call   6a <libft_ft_putnbr_fd+0x6a>
  6a:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  6e:	48 ba 67 66 66 66 66 	movabs rdx,0x6666666666666667
  75:	66 66 66 
  78:	48 89 c8             	mov    rax,rcx
  7b:	48 f7 ea             	imul   rdx
  7e:	48 c1 fa 02          	sar    rdx,0x2
  82:	48 89 c8             	mov    rax,rcx
  85:	48 c1 f8 3f          	sar    rax,0x3f
  89:	48 29 c2             	sub    rdx,rax
  8c:	48 89 d0             	mov    rax,rdx
  8f:	48 c1 e0 02          	shl    rax,0x2
  93:	48 01 d0             	add    rax,rdx
  96:	48 01 c0             	add    rax,rax
  99:	48 29 c1             	sub    rcx,rax
  9c:	48 89 ca             	mov    rdx,rcx
  9f:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  a2:	89 c6                	mov    esi,eax
  a4:	89 d7                	mov    edi,edx
  a6:	e8 00 00 00 00       	call   ab <libft_ft_putnbr_fd+0xab>
  ab:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  b0:	78 1d                	js     cf <libft_ft_putnbr_fd+0xcf>
  b2:	48 83 7d f8 09       	cmp    QWORD PTR [rbp-0x8],0x9
  b7:	7f 16                	jg     cf <libft_ft_putnbr_fd+0xcf>
  b9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  bd:	83 c0 30             	add    eax,0x30
  c0:	0f be c0             	movsx  eax,al
  c3:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
  c6:	89 d6                	mov    esi,edx
  c8:	89 c7                	mov    edi,eax
  ca:	e8 00 00 00 00       	call   cf <libft_ft_putnbr_fd+0xcf>
  cf:	90                   	nop
  d0:	c9                   	leave
  d1:	c3                   	ret

ft_lstadd_back.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <flibft_t_lstadd_back>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 20          	sub    rsp,0x20
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  14:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  18:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1b:	48 85 c0             	test   rax,rax
  1e:	75 0d                	jne    2d <flibft_t_lstadd_back+0x2d>
  20:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  24:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  28:	48 89 10             	mov    QWORD PTR [rax],rdx
  2b:	eb 1f                	jmp    4c <flibft_t_lstadd_back+0x4c>
  2d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  31:	48 8b 00             	mov    rax,QWORD PTR [rax]
  34:	48 89 c7             	mov    rdi,rax
  37:	e8 00 00 00 00       	call   3c <flibft_t_lstadd_back+0x3c>
  3c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  44:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  48:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
  4c:	90                   	nop
  4d:	c9                   	leave
  4e:	c3                   	ret

ft_lstadd_front.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_lstadd_front>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
   c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  10:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  14:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  17:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  1b:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
  1f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  23:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  27:	48 89 10             	mov    QWORD PTR [rax],rdx
  2a:	90                   	nop
  2b:	5d                   	pop    rbp
  2c:	c3                   	ret

ft_lstclear.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_lstclear>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 20          	sub    rsp,0x20
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  14:	eb 30                	jmp    46 <libft_ft_lstclear+0x46>
  16:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1d:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  21:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  25:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  29:	48 8b 00             	mov    rax,QWORD PTR [rax]
  2c:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  30:	48 89 d6             	mov    rsi,rdx
  33:	48 89 c7             	mov    rdi,rax
  36:	e8 00 00 00 00       	call   3b <libft_ft_lstclear+0x3b>
  3b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  3f:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  43:	48 89 10             	mov    QWORD PTR [rax],rdx
  46:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4d:	48 85 c0             	test   rax,rax
  50:	75 c4                	jne    16 <libft_ft_lstclear+0x16>
  52:	90                   	nop
  53:	90                   	nop
  54:	c9                   	leave
  55:	c3                   	ret

ft_lstdelone.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_lstdelone>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 10          	sub    rsp,0x10
   c:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  10:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  14:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
  19:	74 25                	je     40 <libft_ft_lstdelone+0x40>
  1b:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  20:	74 1f                	je     41 <libft_ft_lstdelone+0x41>
  22:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  26:	48 8b 00             	mov    rax,QWORD PTR [rax]
  29:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  2d:	48 89 c7             	mov    rdi,rax
  30:	ff d2                	call   rdx
  32:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  36:	48 89 c7             	mov    rdi,rax
  39:	e8 00 00 00 00       	call   3e <libft_ft_lstdelone+0x3e>
  3e:	eb 01                	jmp    41 <libft_ft_lstdelone+0x41>
  40:	90                   	nop
  41:	c9                   	leave
  42:	c3                   	ret

ft_lstiter.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_lstiter>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 20          	sub    rsp,0x20
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  14:	eb 24                	jmp    3a <libft_ft_lstiter+0x3a>
  16:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  1a:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  1e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  22:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  26:	48 8b 00             	mov    rax,QWORD PTR [rax]
  29:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  2d:	48 89 c7             	mov    rdi,rax
  30:	ff d2                	call   rdx
  32:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  36:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  3a:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  3f:	75 d5                	jne    16 <libft_ft_lstiter+0x16>
  41:	90                   	nop
  42:	90                   	nop
  43:	c9                   	leave
  44:	c3                   	ret

ft_lstlast.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_lstlast>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
   c:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  11:	75 26                	jne    39 <libft_ft_lstlast+0x39>
  13:	b8 00 00 00 00       	mov    eax,0x0
  18:	eb 2a                	jmp    44 <libft_ft_lstlast+0x44>
  1a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  1e:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  22:	48 85 c0             	test   rax,rax
  25:	75 06                	jne    2d <libft_ft_lstlast+0x2d>
  27:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  2b:	eb 17                	jmp    44 <libft_ft_lstlast+0x44>
  2d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  31:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  35:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  39:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  3e:	75 da                	jne    1a <libft_ft_lstlast+0x1a>
  40:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  44:	5d                   	pop    rbp
  45:	c3                   	ret

ft_lstmap.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_lstmap>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 30          	sub    rsp,0x30
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  14:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  18:	48 83 7d e0 00       	cmp    QWORD PTR [rbp-0x20],0x0
  1d:	74 0e                	je     2d <libft_ft_lstmap+0x2d>
  1f:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  24:	74 07                	je     2d <libft_ft_lstmap+0x2d>
  26:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  2b:	75 0a                	jne    37 <libft_ft_lstmap+0x37>
  2d:	b8 00 00 00 00       	mov    eax,0x0
  32:	e9 a7 00 00 00       	jmp    de <libft_ft_lstmap+0xde>
  37:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  3b:	48 8b 00             	mov    rax,QWORD PTR [rax]
  3e:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  42:	48 89 c7             	mov    rdi,rax
  45:	ff d2                	call   rdx
  47:	48 89 c7             	mov    rdi,rax
  4a:	e8 00 00 00 00       	call   4f <libft_ft_lstmap+0x4f>
  4f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  53:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
  58:	75 07                	jne    61 <libft_ft_lstmap+0x61>
  5a:	b8 00 00 00 00       	mov    eax,0x0
  5f:	eb 7d                	jmp    de <libft_ft_lstmap+0xde>
  61:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  65:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  69:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  6d:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  71:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  75:	eb 5c                	jmp    d3 <libft_ft_lstmap+0xd3>
  77:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  7b:	48 8b 00             	mov    rax,QWORD PTR [rax]
  7e:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  82:	48 89 c7             	mov    rdi,rax
  85:	ff d2                	call   rdx
  87:	48 89 c7             	mov    rdi,rax
  8a:	e8 00 00 00 00       	call   8f <libft_ft_lstmap+0x8f>
  8f:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  93:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
  97:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  9b:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  9f:	48 85 c0             	test   rax,rax
  a2:	75 17                	jne    bb <libft_ft_lstmap+0xbb>
  a4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  a8:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  ac:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  b0:	48 89 d6             	mov    rsi,rdx
  b3:	48 89 c7             	mov    rdi,rax
  b6:	e8 00 00 00 00       	call   bb <libft_ft_lstmap+0xbb>
  bb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  bf:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  c3:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  c7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  cb:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  cf:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  d3:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  d8:	75 9d                	jne    77 <libft_ft_lstmap+0x77>
  da:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  de:	c9                   	leave
  df:	c3                   	ret

ft_lstnew.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_lstnew>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 20          	sub    rsp,0x20
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	bf 10 00 00 00       	mov    edi,0x10
  15:	e8 00 00 00 00       	call   1a <libft_ft_lstnew+0x1a>
  1a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  1e:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  23:	75 07                	jne    2c <libft_ft_lstnew+0x2c>
  25:	b8 00 00 00 00       	mov    eax,0x0
  2a:	eb 1b                	jmp    47 <libft_ft_lstnew+0x47>
  2c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  30:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  34:	48 89 10             	mov    QWORD PTR [rax],rdx
  37:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  3b:	48 c7 40 08 00 00 00 	mov    QWORD PTR [rax+0x8],0x0
  42:	00 
  43:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  47:	c9                   	leave
  48:	c3                   	ret

ft_lstsize.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_ft_lstsize>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  10:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  14:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  1b:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  20:	75 07                	jne    29 <libft_ft_lstsize+0x29>
  22:	b8 00 00 00 00       	mov    eax,0x0
  27:	eb 38                	jmp    61 <libft_ft_lstsize+0x61>
  29:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  2d:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  31:	48 85 c0             	test   rax,rax
  34:	75 17                	jne    4d <libft_ft_lstsize+0x4d>
  36:	b8 01 00 00 00       	mov    eax,0x1
  3b:	eb 24                	jmp    61 <libft_ft_lstsize+0x61>
  3d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  41:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  45:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  49:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
  4d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  51:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  55:	48 85 c0             	test   rax,rax
  58:	75 e3                	jne    3d <libft_ft_lstsize+0x3d>
  5a:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
  5e:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  61:	5d                   	pop    rbp
  62:	c3                   	ret

clean_split.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <libft_clean_array>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 83 ec 20          	sub    rsp,0x20
   c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  10:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [rbp-0x4],0xffffffff
  17:	eb 1f                	jmp    38 <libft_clean_array+0x38>
  19:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  1c:	48 98                	cdqe
  1e:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  25:	00 
  26:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  2a:	48 01 d0             	add    rax,rdx
  2d:	48 8b 00             	mov    rax,QWORD PTR [rax]
  30:	48 89 c7             	mov    rdi,rax
  33:	e8 00 00 00 00       	call   38 <libft_clean_array+0x38>
  38:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  3c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  3f:	48 98                	cdqe
  41:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  48:	00 
  49:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4d:	48 01 d0             	add    rax,rdx
  50:	48 8b 00             	mov    rax,QWORD PTR [rax]
  53:	48 85 c0             	test   rax,rax
  56:	75 c1                	jne    19 <libft_clean_array+0x19>
  58:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  5c:	48 89 c7             	mov    rdi,rax
  5f:	e8 00 00 00 00       	call   64 <libft_clean_array+0x64>
  64:	90                   	nop
  65:	c9                   	leave
  66:	c3                   	ret
