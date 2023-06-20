
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 8a 2f 00 00    	push   QWORD PTR [rip+0x2f8a]        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 8c 2f 00 00    	jmp    QWORD PTR [rip+0x2f8c]        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   ax,ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   ax,ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   ax,ax

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	f3 0f 1e fa          	endbr64
    1064:	ff 25 8e 2f 00 00    	jmp    QWORD PTR [rip+0x2f8e]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    106a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

0000000000001070 <free@plt>:
    1070:	f3 0f 1e fa          	endbr64
    1074:	ff 25 46 2f 00 00    	jmp    QWORD PTR [rip+0x2f46]        # 3fc0 <free@GLIBC_2.2.5>
    107a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001080 <puts@plt>:
    1080:	f3 0f 1e fa          	endbr64
    1084:	ff 25 3e 2f 00 00    	jmp    QWORD PTR [rip+0x2f3e]        # 3fc8 <puts@GLIBC_2.2.5>
    108a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001090 <calloc@plt>:
    1090:	f3 0f 1e fa          	endbr64
    1094:	ff 25 36 2f 00 00    	jmp    QWORD PTR [rip+0x2f36]        # 3fd0 <calloc@GLIBC_2.2.5>
    109a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

00000000000010a0 <main>:
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	41 54                	push   r12
    10a6:	be 10 00 00 00       	mov    esi,0x10
    10ab:	bf 01 00 00 00       	mov    edi,0x1
    10b0:	55                   	push   rbp
    10b1:	53                   	push   rbx
    10b2:	e8 d9 ff ff ff       	call   1090 <calloc@plt>
    10b7:	48 85 c0             	test   rax,rax
    10ba:	74 58                	je     1114 <main+0x74>
    10bc:	4c 8d 25 41 0f 00 00 	lea    r12,[rip+0xf41]        # 2004 <_IO_stdin_used+0x4>
    10c3:	be 10 00 00 00       	mov    esi,0x10
    10c8:	bf 01 00 00 00       	mov    edi,0x1
    10cd:	48 89 c5             	mov    rbp,rax
    10d0:	4c 89 20             	mov    QWORD PTR [rax],r12
    10d3:	e8 b8 ff ff ff       	call   1090 <calloc@plt>
    10d8:	48 89 c3             	mov    rbx,rax
    10db:	48 85 c0             	test   rax,rax
    10de:	74 3b                	je     111b <main+0x7b>
    10e0:	48 89 68 08          	mov    QWORD PTR [rax+0x8],rbp
    10e4:	48 8d 3d 1f 0f 00 00 	lea    rdi,[rip+0xf1f]        # 200a <_IO_stdin_used+0xa>
    10eb:	e8 90 ff ff ff       	call   1080 <puts@plt>
    10f0:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
    10f4:	48 8b 38             	mov    rdi,QWORD PTR [rax]
    10f7:	e8 84 ff ff ff       	call   1080 <puts@plt>
    10fc:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
    1100:	e8 6b ff ff ff       	call   1070 <free@plt>
    1105:	48 89 df             	mov    rdi,rbx
    1108:	e8 63 ff ff ff       	call   1070 <free@plt>
    110d:	31 c0                	xor    eax,eax
    110f:	5b                   	pop    rbx
    1110:	5d                   	pop    rbp
    1111:	41 5c                	pop    r12
    1113:	c3                   	ret
    1114:	b8 01 00 00 00       	mov    eax,0x1
    1119:	eb f4                	jmp    110f <main+0x6f>
    111b:	48 89 eb             	mov    rbx,rbp
    111e:	4c 89 e7             	mov    rdi,r12
    1121:	eb c8                	jmp    10eb <main+0x4b>
    1123:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    112a:	00 00 00 
    112d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001130 <_start>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	31 ed                	xor    ebp,ebp
    1136:	49 89 d1             	mov    r9,rdx
    1139:	5e                   	pop    rsi
    113a:	48 89 e2             	mov    rdx,rsp
    113d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1141:	50                   	push   rax
    1142:	54                   	push   rsp
    1143:	45 31 c0             	xor    r8d,r8d
    1146:	31 c9                	xor    ecx,ecx
    1148:	48 8d 3d 51 ff ff ff 	lea    rdi,[rip+0xffffffffffffff51]        # 10a0 <main>
    114f:	ff 15 83 2e 00 00    	call   QWORD PTR [rip+0x2e83]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1155:	f4                   	hlt
    1156:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    115d:	00 00 00 

0000000000001160 <deregister_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    rdi,[rip+0x2ea9]        # 4010 <__TMC_END__>
    1167:	48 8d 05 a2 2e 00 00 	lea    rax,[rip+0x2ea2]        # 4010 <__TMC_END__>
    116e:	48 39 f8             	cmp    rax,rdi
    1171:	74 15                	je     1188 <deregister_tm_clones+0x28>
    1173:	48 8b 05 66 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e66]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    117a:	48 85 c0             	test   rax,rax
    117d:	74 09                	je     1188 <deregister_tm_clones+0x28>
    117f:	ff e0                	jmp    rax
    1181:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1188:	c3                   	ret
    1189:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001190 <register_tm_clones>:
    1190:	48 8d 3d 79 2e 00 00 	lea    rdi,[rip+0x2e79]        # 4010 <__TMC_END__>
    1197:	48 8d 35 72 2e 00 00 	lea    rsi,[rip+0x2e72]        # 4010 <__TMC_END__>
    119e:	48 29 fe             	sub    rsi,rdi
    11a1:	48 89 f0             	mov    rax,rsi
    11a4:	48 c1 ee 3f          	shr    rsi,0x3f
    11a8:	48 c1 f8 03          	sar    rax,0x3
    11ac:	48 01 c6             	add    rsi,rax
    11af:	48 d1 fe             	sar    rsi,1
    11b2:	74 14                	je     11c8 <register_tm_clones+0x38>
    11b4:	48 8b 05 35 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e35]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11bb:	48 85 c0             	test   rax,rax
    11be:	74 08                	je     11c8 <register_tm_clones+0x38>
    11c0:	ff e0                	jmp    rax
    11c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    11c8:	c3                   	ret
    11c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011d0 <__do_global_dtors_aux>:
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	80 3d 35 2e 00 00 00 	cmp    BYTE PTR [rip+0x2e35],0x0        # 4010 <__TMC_END__>
    11db:	75 2b                	jne    1208 <__do_global_dtors_aux+0x38>
    11dd:	55                   	push   rbp
    11de:	48 83 3d 12 2e 00 00 	cmp    QWORD PTR [rip+0x2e12],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11e5:	00 
    11e6:	48 89 e5             	mov    rbp,rsp
    11e9:	74 0c                	je     11f7 <__do_global_dtors_aux+0x27>
    11eb:	48 8b 3d 16 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e16]        # 4008 <__dso_handle>
    11f2:	e8 69 fe ff ff       	call   1060 <__cxa_finalize@plt>
    11f7:	e8 64 ff ff ff       	call   1160 <deregister_tm_clones>
    11fc:	c6 05 0d 2e 00 00 01 	mov    BYTE PTR [rip+0x2e0d],0x1        # 4010 <__TMC_END__>
    1203:	5d                   	pop    rbp
    1204:	c3                   	ret
    1205:	0f 1f 00             	nop    DWORD PTR [rax]
    1208:	c3                   	ret
    1209:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001210 <frame_dummy>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	e9 77 ff ff ff       	jmp    1190 <register_tm_clones>
    1219:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001220 <ft_list_push_front>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	55                   	push   rbp
    1225:	48 89 fd             	mov    rbp,rdi
    1228:	bf 01 00 00 00       	mov    edi,0x1
    122d:	53                   	push   rbx
    122e:	48 89 f3             	mov    rbx,rsi
    1231:	be 10 00 00 00       	mov    esi,0x10
    1236:	48 83 ec 08          	sub    rsp,0x8
    123a:	e8 51 fe ff ff       	call   1090 <calloc@plt>
    123f:	48 85 c0             	test   rax,rax
    1242:	74 10                	je     1254 <ft_list_push_front+0x34>
    1244:	66 48 0f 6e c3       	movq   xmm0,rbx
    1249:	0f 16 45 00          	movhps xmm0,QWORD PTR [rbp+0x0]
    124d:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
    1251:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
    1254:	48 83 c4 08          	add    rsp,0x8
    1258:	5b                   	pop    rbx
    1259:	5d                   	pop    rbp
    125a:	c3                   	ret

Disassembly of section .fini:

000000000000125c <_fini>:
    125c:	f3 0f 1e fa          	endbr64
    1260:	48 83 ec 08          	sub    rsp,0x8
    1264:	48 83 c4 08          	add    rsp,0x8
    1268:	c3                   	ret
