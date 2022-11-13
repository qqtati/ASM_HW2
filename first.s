	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	check_if_consonant
	.type	check_if_consonant, @function
check_if_consonant:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	eax, edi
	mov	DWORD PTR -56[rbp], esi
	mov	BYTE PTR -52[rbp], al
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	movabs	rax, 7740113702898393954
	movabs	rdx, 8391176362264522092
	mov	QWORD PTR -32[rbp], rax
	mov	QWORD PTR -24[rbp], rdx
	mov	DWORD PTR -16[rbp], 2054715254
	mov	DWORD PTR -36[rbp], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	movzx	eax, BYTE PTR -32[rbp+rax]
	cmp	BYTE PTR -52[rbp], al
	jne	.L3
	mov	eax, 1
	jmp	.L6
.L3:
	add	DWORD PTR -36[rbp], 1
.L2:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -56[rbp]
	jl	.L5
	mov	eax, 0
.L6:
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	check_if_consonant, .-check_if_consonant
	.globl	swap_consonant
	.type	swap_consonant, @function
swap_consonant:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -8[rbp], 0
	jmp	.L9
.L11:
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edx, DWORD PTR -28[rbp]
	mov	esi, edx
	mov	edi, eax
	call	check_if_consonant
	test	al, al
	je	.L10
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	lea	ecx, -32[rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, ecx
	mov	BYTE PTR [rax], dl
.L10:
	add	DWORD PTR -8[rbp], 1
.L9:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L11
	mov	DWORD PTR -4[rbp], 0
	jmp	.L12
.L13:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	edi, eax
	call	putchar@PLT
	add	DWORD PTR -4[rbp], 1
.L12:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L13
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	swap_consonant, .-swap_consonant
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	lea	r11, -999424[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 608
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -1000028[rbp], 0
	mov	DWORD PTR -1000024[rbp], 0
.L15:
	mov	rax, QWORD PTR stdin[rip]
	mov	rdi, rax
	call	fgetc@PLT
	mov	DWORD PTR -1000020[rbp], eax
	mov	eax, DWORD PTR -1000028[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -1000028[rbp], edx
	mov	edx, DWORD PTR -1000020[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
	add	DWORD PTR -1000024[rbp], 1
	cmp	DWORD PTR -1000020[rbp], -1
	jne	.L15
	mov	eax, DWORD PTR -1000028[rbp]
	sub	eax, 1
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], 0
	mov	edx, DWORD PTR -1000024[rbp]
	lea	rax, -1000016[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	swap_consonant
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
