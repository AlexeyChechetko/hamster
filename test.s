	.file	"test.c"
	.text
	.type	stbi__sse2_available, @function
stbi__sse2_available:
.LFB505:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	stbi__sse2_available, .-stbi__sse2_available
	.type	stbi__start_mem, @function
stbi__start_mem:
.LFB506:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 184(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	stbi__start_mem, .-stbi__start_mem
	.type	stbi__start_callbacks, @function
stbi__start_callbacks:
.LFB507:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$128, 52(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 184(%rax)
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__refill_buffer
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 216(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	stbi__start_callbacks, .-stbi__start_callbacks
	.type	stbi__stdio_read, @function
stbi__stdio_read:
.LFB508:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	stbi__stdio_read, .-stbi__stdio_read
	.type	stbi__stdio_skip, @function
stbi__stdio_skip:
.LFB509:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	je	.L9
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ungetc@PLT
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	stbi__stdio_skip, .-stbi__stdio_skip
	.type	stbi__stdio_eof, @function
stbi__stdio_eof:
.LFB510:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ferror@PLT
	testl	%eax, %eax
	je	.L12
.L11:
	movl	$1, %eax
	jmp	.L14
.L12:
	movl	$0, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	stbi__stdio_eof, .-stbi__stdio_eof
	.section	.data.rel.local,"aw"
	.align 16
	.type	stbi__stdio_callbacks, @object
	.size	stbi__stdio_callbacks, 24
stbi__stdio_callbacks:
	.quad	stbi__stdio_read
	.quad	stbi__stdio_skip
	.quad	stbi__stdio_eof
	.text
	.type	stbi__start_file, @function
stbi__start_file:
.LFB511:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	stbi__stdio_callbacks(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	stbi__start_file, .-stbi__start_file
	.type	stbi__rewind, @function
stbi__rewind:
.LFB512:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	stbi__rewind, .-stbi__rewind
	.section	.tbss,"awT",@nobits
	.align 8
	.type	stbi__g_failure_reason, @object
	.size	stbi__g_failure_reason, 8
stbi__g_failure_reason:
	.zero	8
	.text
	.globl	stbi_failure_reason
	.type	stbi_failure_reason, @function
stbi_failure_reason:
.LFB513:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%fs:stbi__g_failure_reason@tpoff, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	stbi_failure_reason, .-stbi_failure_reason
	.type	stbi__err, @function
stbi__err:
.LFB514:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %fs:stbi__g_failure_reason@tpoff
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	stbi__err, .-stbi__err
	.type	stbi__malloc, @function
stbi__malloc:
.LFB515:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	stbi__malloc, .-stbi__malloc
	.type	stbi__addsizes_valid, @function
stbi__addsizes_valid:
.LFB516:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movl	$2147483647, %eax
	subl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	stbi__addsizes_valid, .-stbi__addsizes_valid
	.type	stbi__mul2sizes_valid, @function
stbi__mul2sizes_valid:
.LFB517:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L27
	cmpl	$0, -8(%rbp)
	jns	.L28
.L27:
	movl	$0, %eax
	jmp	.L29
.L28:
	cmpl	$0, -8(%rbp)
	jne	.L30
	movl	$1, %eax
	jmp	.L29
.L30:
	movl	$2147483647, %eax
	cltd
	idivl	-8(%rbp)
	cmpl	%eax, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
.L29:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	stbi__mul2sizes_valid, .-stbi__mul2sizes_valid
	.type	stbi__mad2sizes_valid, @function
stbi__mad2sizes_valid:
.LFB518:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	testl	%eax, %eax
	je	.L32
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__addsizes_valid
	testl	%eax, %eax
	je	.L32
	movl	$1, %eax
	jmp	.L34
.L32:
	movl	$0, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	stbi__mad2sizes_valid, .-stbi__mad2sizes_valid
	.type	stbi__mad3sizes_valid, @function
stbi__mad3sizes_valid:
.LFB519:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	testl	%eax, %eax
	je	.L36
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	testl	%eax, %eax
	je	.L36
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__addsizes_valid
	testl	%eax, %eax
	je	.L36
	movl	$1, %eax
	jmp	.L38
.L36:
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	stbi__mad3sizes_valid, .-stbi__mad3sizes_valid
	.type	stbi__mad4sizes_valid, @function
stbi__mad4sizes_valid:
.LFB520:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	testl	%eax, %eax
	je	.L40
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	testl	%eax, %eax
	je	.L40
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__mul2sizes_valid
	testl	%eax, %eax
	je	.L40
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__addsizes_valid
	testl	%eax, %eax
	je	.L40
	movl	$1, %eax
	jmp	.L42
.L40:
	movl	$0, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	stbi__mad4sizes_valid, .-stbi__mad4sizes_valid
	.type	stbi__malloc_mad2, @function
stbi__malloc_mad2:
.LFB521:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__mad2sizes_valid
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	stbi__malloc_mad2, .-stbi__malloc_mad2
	.type	stbi__malloc_mad3, @function
stbi__malloc_mad3:
.LFB522:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	stbi__malloc_mad3, .-stbi__malloc_mad3
	.type	stbi__malloc_mad4, @function
stbi__malloc_mad4:
.LFB523:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	-20(%rbp), %edi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	stbi__mad4sizes_valid
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	stbi__malloc_mad4, .-stbi__malloc_mad4
	.globl	stbi_image_free
	.type	stbi_image_free, @function
stbi_image_free:
.LFB524:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	stbi_image_free, .-stbi_image_free
	.local	stbi__vertically_flip_on_load_global
	.comm	stbi__vertically_flip_on_load_global,4,4
	.globl	stbi_set_flip_vertically_on_load
	.type	stbi_set_flip_vertically_on_load, @function
stbi_set_flip_vertically_on_load:
.LFB525:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, stbi__vertically_flip_on_load_global(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	stbi_set_flip_vertically_on_load, .-stbi_set_flip_vertically_on_load
	.section	.tbss
	.align 4
	.type	stbi__vertically_flip_on_load_local, @object
	.size	stbi__vertically_flip_on_load_local, 4
stbi__vertically_flip_on_load_local:
	.zero	4
	.align 4
	.type	stbi__vertically_flip_on_load_set, @object
	.size	stbi__vertically_flip_on_load_set, 4
stbi__vertically_flip_on_load_set:
	.zero	4
	.text
	.globl	stbi_set_flip_vertically_on_load_thread
	.type	stbi_set_flip_vertically_on_load_thread, @function
stbi_set_flip_vertically_on_load_thread:
.LFB526:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %fs:stbi__vertically_flip_on_load_local@tpoff
	movl	$1, %fs:stbi__vertically_flip_on_load_set@tpoff
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	stbi_set_flip_vertically_on_load_thread, .-stbi_set_flip_vertically_on_load_thread
	.section	.rodata
.LC0:
	.string	"unknown image type"
	.text
	.type	stbi__load_main, @function
stbi__load_main:
.LFB527:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$12, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-64(%rbp), %rax
	movl	$8, (%rax)
	movq	-64(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__png_test
	testl	%eax, %eax
	je	.L56
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__png_load
	jmp	.L57
.L56:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__bmp_test
	testl	%eax, %eax
	je	.L58
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__bmp_load
	jmp	.L57
.L58:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__gif_test
	testl	%eax, %eax
	je	.L59
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__gif_load
	jmp	.L57
.L59:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__psd_test
	testl	%eax, %eax
	je	.L60
	movq	-64(%rbp), %r9
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbi__psd_load
	addq	$16, %rsp
	jmp	.L57
.L60:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pic_test
	testl	%eax, %eax
	je	.L61
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__pic_load
	jmp	.L57
.L61:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_test
	testl	%eax, %eax
	je	.L62
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__jpeg_load
	jmp	.L57
.L62:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pnm_test
	testl	%eax, %eax
	je	.L63
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__pnm_load
	jmp	.L57
.L63:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	testl	%eax, %eax
	je	.L64
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__hdr_load
	movq	%rax, -8(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L65
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L66
.L65:
	movl	-52(%rbp), %eax
.L66:
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edx
	movq	-32(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	call	stbi__hdr_to_ldr
	jmp	.L57
.L64:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__tga_test
	testl	%eax, %eax
	je	.L67
	movq	-64(%rbp), %r8
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__tga_load
	jmp	.L57
.L67:
	leaq	.LC0(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	stbi__load_main, .-stbi__load_main
	.section	.rodata
.LC1:
	.string	"outofmem"
	.text
	.type	stbi__convert_16_to_8, @function
stbi__convert_16_to_8:
.LFB528:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-36(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L69
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L70
.L69:
	movl	$0, -16(%rbp)
	jmp	.L71
.L72:
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	shrw	$8, %ax
	movl	%eax, %ecx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -16(%rbp)
.L71:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L72
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	stbi__convert_16_to_8, .-stbi__convert_16_to_8
	.type	stbi__convert_8_to_16, @function
stbi__convert_8_to_16:
.LFB529:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-36(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L74
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L75
.L74:
	movl	$0, -16(%rbp)
	jmp	.L76
.L77:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movw	%dx, (%rax)
	addl	$1, -16(%rbp)
.L76:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L77
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	stbi__convert_8_to_16, .-stbi__convert_8_to_16
	.type	stbi__vertical_flip, @function
stbi__vertical_flip:
.LFB530:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2160, %rsp
	movq	%rdi, -2136(%rbp)
	movl	%esi, -2140(%rbp)
	movl	%edx, -2144(%rbp)
	movl	%ecx, -2148(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-2140(%rbp), %eax
	movslq	%eax, %rdx
	movl	-2148(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, -2088(%rbp)
	movq	-2136(%rbp), %rax
	movq	%rax, -2080(%rbp)
	movl	$0, -2116(%rbp)
	jmp	.L79
.L82:
	movl	-2116(%rbp), %eax
	cltq
	imulq	-2088(%rbp), %rax
	movq	%rax, %rdx
	movq	-2080(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -2112(%rbp)
	movl	-2144(%rbp), %eax
	subl	-2116(%rbp), %eax
	subl	$1, %eax
	cltq
	imulq	-2088(%rbp), %rax
	movq	%rax, %rdx
	movq	-2080(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -2104(%rbp)
	movq	-2088(%rbp), %rax
	movq	%rax, -2096(%rbp)
	jmp	.L80
.L81:
	movl	$2048, %eax
	cmpq	$2048, -2096(%rbp)
	cmovbe	-2096(%rbp), %rax
	movq	%rax, -2072(%rbp)
	movq	-2072(%rbp), %rdx
	movq	-2112(%rbp), %rcx
	leaq	-2064(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-2072(%rbp), %rdx
	movq	-2104(%rbp), %rcx
	movq	-2112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-2072(%rbp), %rdx
	leaq	-2064(%rbp), %rcx
	movq	-2104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-2072(%rbp), %rax
	addq	%rax, -2112(%rbp)
	movq	-2072(%rbp), %rax
	addq	%rax, -2104(%rbp)
	movq	-2072(%rbp), %rax
	subq	%rax, -2096(%rbp)
.L80:
	cmpq	$0, -2096(%rbp)
	jne	.L81
	addl	$1, -2116(%rbp)
.L79:
	movl	-2144(%rbp), %eax
	sarl	%eax
	cmpl	%eax, -2116(%rbp)
	jl	.L82
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L83
	call	__stack_chk_fail@PLT
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	stbi__vertical_flip, .-stbi__vertical_flip
	.type	stbi__vertical_flip_slices, @function
stbi__vertical_flip_slices:
.LFB531:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L85
.L86:
	movl	-40(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__vertical_flip
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
	addl	$1, -16(%rbp)
.L85:
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L86
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	stbi__vertical_flip_slices, .-stbi__vertical_flip_slices
	.section	.rodata
.LC2:
	.string	"stb_image.h"
	.align 8
.LC3:
	.string	"ri.bits_per_channel == 8 || ri.bits_per_channel == 16"
	.text
	.type	stbi__load_and_postprocess_8bit, @function
stbi__load_and_postprocess_8bit:
.LFB532:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-20(%rbp), %r8
	movl	-84(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	$8
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_main
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L99
.L88:
	movl	-20(%rbp), %eax
	cmpl	$8, %eax
	je	.L90
	movl	-20(%rbp), %eax
	cmpl	$16, %eax
	je	.L90
	leaq	__PRETTY_FUNCTION__.6684(%rip), %rcx
	movl	$1249, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__assert_fail@PLT
.L90:
	movl	-20(%rbp), %eax
	cmpl	$8, %eax
	je	.L91
	cmpl	$0, -84(%rbp)
	jne	.L92
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L93
.L92:
	movl	-84(%rbp), %eax
.L93:
	movq	-72(%rbp), %rdx
	movl	(%rdx), %edx
	movq	-64(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rdi
	movl	%eax, %ecx
	call	stbi__convert_16_to_8
	movq	%rax, -32(%rbp)
	movl	$8, -20(%rbp)
.L91:
	movl	%fs:stbi__vertically_flip_on_load_set@tpoff, %eax
	testl	%eax, %eax
	je	.L94
	movl	%fs:stbi__vertically_flip_on_load_local@tpoff, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L95
.L94:
	movl	stbi__vertically_flip_on_load_global(%rip), %eax
	testl	%eax, %eax
	setne	%al
.L95:
	testb	%al, %al
	je	.L96
	cmpl	$0, -84(%rbp)
	jne	.L97
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L98
.L97:
	movl	-84(%rbp), %eax
.L98:
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %esi
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__vertical_flip
.L96:
	movq	-32(%rbp), %rax
.L99:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L100
	call	__stack_chk_fail@PLT
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	stbi__load_and_postprocess_8bit, .-stbi__load_and_postprocess_8bit
	.type	stbi__load_and_postprocess_16bit, @function
stbi__load_and_postprocess_16bit:
.LFB533:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-20(%rbp), %r8
	movl	-84(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	$16
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_main
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L102
	movl	$0, %eax
	jmp	.L113
.L102:
	movl	-20(%rbp), %eax
	cmpl	$8, %eax
	je	.L104
	movl	-20(%rbp), %eax
	cmpl	$16, %eax
	je	.L104
	leaq	__PRETTY_FUNCTION__.6695(%rip), %rcx
	movl	$1275, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__assert_fail@PLT
.L104:
	movl	-20(%rbp), %eax
	cmpl	$16, %eax
	je	.L105
	cmpl	$0, -84(%rbp)
	jne	.L106
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L107
.L106:
	movl	-84(%rbp), %eax
.L107:
	movq	-72(%rbp), %rdx
	movl	(%rdx), %edx
	movq	-64(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rdi
	movl	%eax, %ecx
	call	stbi__convert_8_to_16
	movq	%rax, -32(%rbp)
	movl	$16, -20(%rbp)
.L105:
	movl	%fs:stbi__vertically_flip_on_load_set@tpoff, %eax
	testl	%eax, %eax
	je	.L108
	movl	%fs:stbi__vertically_flip_on_load_local@tpoff, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L109
.L108:
	movl	stbi__vertically_flip_on_load_global(%rip), %eax
	testl	%eax, %eax
	setne	%al
.L109:
	testb	%al, %al
	je	.L110
	cmpl	$0, -84(%rbp)
	jne	.L111
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L112
.L111:
	movl	-84(%rbp), %eax
.L112:
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	addl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__vertical_flip
.L110:
	movq	-32(%rbp), %rax
.L113:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L114
	call	__stack_chk_fail@PLT
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	stbi__load_and_postprocess_16bit, .-stbi__load_and_postprocess_16bit
	.type	stbi__float_postprocess, @function
stbi__float_postprocess:
.LFB534:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%fs:stbi__vertically_flip_on_load_set@tpoff, %eax
	testl	%eax, %eax
	je	.L116
	movl	%fs:stbi__vertically_flip_on_load_local@tpoff, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L117
.L116:
	movl	stbi__vertically_flip_on_load_global(%rip), %eax
	testl	%eax, %eax
	setne	%al
.L117:
	testb	%al, %al
	je	.L121
	cmpq	$0, -24(%rbp)
	je	.L121
	cmpl	$0, -52(%rbp)
	jne	.L119
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L120
.L119:
	movl	-52(%rbp), %eax
.L120:
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	sall	$2, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__vertical_flip
.L121:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	stbi__float_postprocess, .-stbi__float_postprocess
	.type	stbi__fopen, @function
stbi__fopen:
.LFB535:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	stbi__fopen, .-stbi__fopen
	.section	.rodata
.LC4:
	.string	"rb"
.LC5:
	.string	"can't fopen"
	.text
	.globl	stbi_load
	.type	stbi_load, @function
stbi_load:
.LFB536:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L125
	leaq	.LC5(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L126
.L125:
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi_load_from_file
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-8(%rbp), %rax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	stbi_load, .-stbi_load
	.globl	stbi_load_from_file
	.type	stbi_load_from_file, @function
stbi_load_from_file:
.LFB537:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -288(%rbp)
	movl	%r8d, -292(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-264(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	movl	-292(%rbp), %edi
	movq	-288(%rbp), %rcx
	movq	-280(%rbp), %rdx
	movq	-272(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_8bit
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	je	.L128
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	negl	%eax
	movslq	%eax, %rcx
	movq	-264(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
.L128:
	movq	-248(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L130
	call	__stack_chk_fail@PLT
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	stbi_load_from_file, .-stbi_load_from_file
	.globl	stbi_load_from_file_16
	.type	stbi_load_from_file_16, @function
stbi_load_from_file_16:
.LFB538:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -288(%rbp)
	movl	%r8d, -292(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-264(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	movl	-292(%rbp), %edi
	movq	-288(%rbp), %rcx
	movq	-280(%rbp), %rdx
	movq	-272(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_16bit
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	je	.L132
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	negl	%eax
	movslq	%eax, %rcx
	movq	-264(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
.L132:
	movq	-248(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L134
	call	__stack_chk_fail@PLT
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	stbi_load_from_file_16, .-stbi_load_from_file_16
	.globl	stbi_load_16
	.type	stbi_load_16, @function
stbi_load_16:
.LFB539:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L136
	leaq	.LC5(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L137
.L136:
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi_load_from_file_16
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-8(%rbp), %rax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	stbi_load_16, .-stbi_load_16
	.globl	stbi_load_16_from_memory
	.type	stbi_load_16_from_memory, @function
stbi_load_16_from_memory:
.LFB540:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movl	%r9d, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-252(%rbp), %edx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	movl	-256(%rbp), %edi
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_16bit
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L140
	call	__stack_chk_fail@PLT
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	stbi_load_16_from_memory, .-stbi_load_16_from_memory
	.globl	stbi_load_16_from_callbacks
	.type	stbi_load_16_from_callbacks, @function
stbi_load_16_from_callbacks:
.LFB541:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movl	%r9d, -284(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	movl	-284(%rbp), %edi
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_16bit
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L143
	call	__stack_chk_fail@PLT
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	stbi_load_16_from_callbacks, .-stbi_load_16_from_callbacks
	.globl	stbi_load_from_memory
	.type	stbi_load_from_memory, @function
stbi_load_from_memory:
.LFB542:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movl	%r9d, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-252(%rbp), %edx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	movl	-256(%rbp), %edi
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_8bit
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L146
	call	__stack_chk_fail@PLT
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	stbi_load_from_memory, .-stbi_load_from_memory
	.globl	stbi_load_from_callbacks
	.type	stbi_load_from_callbacks, @function
stbi_load_from_callbacks:
.LFB543:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movl	%r9d, -284(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	movl	-284(%rbp), %edi
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_8bit
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L149
	call	__stack_chk_fail@PLT
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	stbi_load_from_callbacks, .-stbi_load_from_callbacks
	.globl	stbi_load_gif_from_memory
	.type	stbi_load_gif_from_memory, @function
stbi_load_gif_from_memory:
.LFB544:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -264(%rbp)
	movl	%esi, -268(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -288(%rbp)
	movq	%r8, -296(%rbp)
	movq	%r9, -304(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-268(%rbp), %edx
	movq	-264(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	movq	-312(%rbp), %r9
	movq	-304(%rbp), %r8
	movq	-296(%rbp), %rcx
	movq	-288(%rbp), %rdx
	movq	-280(%rbp), %rsi
	leaq	-240(%rbp), %rax
	subq	$8, %rsp
	movl	24(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbi__load_gif_main
	addq	$16, %rsp
	movq	%rax, -248(%rbp)
	movl	%fs:stbi__vertically_flip_on_load_set@tpoff, %eax
	testl	%eax, %eax
	je	.L151
	movl	%fs:stbi__vertically_flip_on_load_local@tpoff, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L152
.L151:
	movl	stbi__vertically_flip_on_load_global(%rip), %eax
	testl	%eax, %eax
	setne	%al
.L152:
	testb	%al, %al
	je	.L153
	movq	-312(%rbp), %rax
	movl	(%rax), %edi
	movq	-304(%rbp), %rax
	movl	(%rax), %ecx
	movq	-296(%rbp), %rax
	movl	(%rax), %edx
	movq	-288(%rbp), %rax
	movl	(%rax), %esi
	movq	-248(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__vertical_flip_slices
.L153:
	movq	-248(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L155
	call	__stack_chk_fail@PLT
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	stbi_load_gif_from_memory, .-stbi_load_gif_from_memory
	.type	stbi__loadf_main, @function
stbi__loadf_main:
.LFB545:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	testl	%eax, %eax
	je	.L157
	leaq	-20(%rbp), %r8
	movl	-84(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__hdr_load
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L158
	movl	-84(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__float_postprocess
.L158:
	movq	-32(%rbp), %rax
	jmp	.L159
.L157:
	movl	-84(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__load_and_postprocess_8bit
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L160
	cmpl	$0, -84(%rbp)
	jne	.L161
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L162
.L161:
	movl	-84(%rbp), %eax
.L162:
	movq	-72(%rbp), %rdx
	movl	(%rdx), %edx
	movq	-64(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-40(%rbp), %rdi
	movl	%eax, %ecx
	call	stbi__ldr_to_hdr
	jmp	.L159
.L160:
	leaq	.LC0(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
.L159:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L163
	call	__stack_chk_fail@PLT
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	stbi__loadf_main, .-stbi__loadf_main
	.globl	stbi_loadf_from_memory
	.type	stbi_loadf_from_memory, @function
stbi_loadf_from_memory:
.LFB546:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movl	%r9d, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-252(%rbp), %edx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	movl	-256(%rbp), %edi
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__loadf_main
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L166
	call	__stack_chk_fail@PLT
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	stbi_loadf_from_memory, .-stbi_loadf_from_memory
	.globl	stbi_loadf_from_callbacks
	.type	stbi_loadf_from_callbacks, @function
stbi_loadf_from_callbacks:
.LFB547:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movl	%r9d, -284(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	movl	-284(%rbp), %edi
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__loadf_main
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L169
	call	__stack_chk_fail@PLT
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	stbi_loadf_from_callbacks, .-stbi_loadf_from_callbacks
	.globl	stbi_loadf
	.type	stbi_loadf, @function
stbi_loadf:
.LFB548:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L171
	leaq	.LC5(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L172
.L171:
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi_loadf_from_file
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-8(%rbp), %rax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	stbi_loadf, .-stbi_loadf
	.globl	stbi_loadf_from_file
	.type	stbi_loadf_from_file, @function
stbi_loadf_from_file:
.LFB549:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movl	%r8d, -276(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	movl	-276(%rbp), %edi
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__loadf_main
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L175
	call	__stack_chk_fail@PLT
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	stbi_loadf_from_file, .-stbi_loadf_from_file
	.globl	stbi_is_hdr_from_memory
	.type	stbi_is_hdr_from_memory, @function
stbi_is_hdr_from_memory:
.LFB550:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-252(%rbp), %edx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L178
	call	__stack_chk_fail@PLT
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	stbi_is_hdr_from_memory, .-stbi_is_hdr_from_memory
	.globl	stbi_is_hdr
	.type	stbi_is_hdr, @function
stbi_is_hdr:
.LFB551:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L180
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi_is_hdr_from_file
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L180:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	stbi_is_hdr, .-stbi_is_hdr
	.globl	stbi_is_hdr_from_file
	.type	stbi_is_hdr_from_file, @function
stbi_is_hdr_from_file:
.LFB552:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -264(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -248(%rbp)
	movq	-264(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	movl	%eax, -252(%rbp)
	movq	-248(%rbp), %rcx
	movq	-264(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	movl	-252(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L184
	call	__stack_chk_fail@PLT
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	stbi_is_hdr_from_file, .-stbi_is_hdr_from_file
	.globl	stbi_is_hdr_from_callbacks
	.type	stbi_is_hdr_from_callbacks, @function
stbi_is_hdr_from_callbacks:
.LFB553:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L187
	call	__stack_chk_fail@PLT
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	stbi_is_hdr_from_callbacks, .-stbi_is_hdr_from_callbacks
	.data
	.align 4
	.type	stbi__l2h_gamma, @object
	.size	stbi__l2h_gamma, 4
stbi__l2h_gamma:
	.long	1074580685
	.align 4
	.type	stbi__l2h_scale, @object
	.size	stbi__l2h_scale, 4
stbi__l2h_scale:
	.long	1065353216
	.text
	.globl	stbi_ldr_to_hdr_gamma
	.type	stbi_ldr_to_hdr_gamma, @function
stbi_ldr_to_hdr_gamma:
.LFB554:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	movss	%xmm0, stbi__l2h_gamma(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	stbi_ldr_to_hdr_gamma, .-stbi_ldr_to_hdr_gamma
	.globl	stbi_ldr_to_hdr_scale
	.type	stbi_ldr_to_hdr_scale, @function
stbi_ldr_to_hdr_scale:
.LFB555:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	movss	%xmm0, stbi__l2h_scale(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	stbi_ldr_to_hdr_scale, .-stbi_ldr_to_hdr_scale
	.data
	.align 4
	.type	stbi__h2l_gamma_i, @object
	.size	stbi__h2l_gamma_i, 4
stbi__h2l_gamma_i:
	.long	1055439406
	.align 4
	.type	stbi__h2l_scale_i, @object
	.size	stbi__h2l_scale_i, 4
stbi__h2l_scale_i:
	.long	1065353216
	.text
	.globl	stbi_hdr_to_ldr_gamma
	.type	stbi_hdr_to_ldr_gamma, @function
stbi_hdr_to_ldr_gamma:
.LFB556:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	.LC6(%rip), %xmm0
	divss	-4(%rbp), %xmm0
	movss	%xmm0, stbi__h2l_gamma_i(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	stbi_hdr_to_ldr_gamma, .-stbi_hdr_to_ldr_gamma
	.globl	stbi_hdr_to_ldr_scale
	.type	stbi_hdr_to_ldr_scale, @function
stbi_hdr_to_ldr_scale:
.LFB557:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	.LC6(%rip), %xmm0
	divss	-4(%rbp), %xmm0
	movss	%xmm0, stbi__h2l_scale_i(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	stbi_hdr_to_ldr_scale, .-stbi_hdr_to_ldr_scale
	.type	stbi__refill_buffer, @function
stbi__refill_buffer:
.LFB558:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	184(%rax), %edx
	movq	-24(%rbp), %rax
	movq	192(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 184(%rax)
	cmpl	$0, -4(%rbp)
	jne	.L193
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-24(%rbp), %rax
	addq	$56, %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movb	$0, (%rax)
	jmp	.L195
.L193:
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
.L195:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	stbi__refill_buffer, .-stbi__refill_buffer
	.type	stbi__get8, @function
stbi__get8:
.LFB559:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L197
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 192(%rdx)
	movzbl	(%rax), %eax
	jmp	.L198
.L197:
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L199
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__refill_buffer
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 192(%rdx)
	movzbl	(%rax), %eax
	jmp	.L198
.L199:
	movl	$0, %eax
.L198:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	stbi__get8, .-stbi__get8
	.type	stbi__at_eof, @function
stbi__at_eof:
.LFB560:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L201
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L202
	movl	$0, %eax
	jmp	.L203
.L202:
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L201
	movl	$1, %eax
	jmp	.L203
.L201:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
.L203:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	stbi__at_eof, .-stbi__at_eof
	.type	stbi__skip, @function
stbi__skip:
.LFB561:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L209
	cmpl	$0, -28(%rbp)
	jns	.L207
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	jmp	.L204
.L207:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L208
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L208
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-28(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L204
.L208:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	jmp	.L204
.L209:
	nop
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	stbi__skip, .-stbi__skip
	.type	stbi__getn, @function
stbi__getn:
.LFB562:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L211
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	192(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-36(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	addq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	subl	-12(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movl	-4(%rbp), %eax
	jmp	.L212
.L211:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	%rax, %rdx
	ja	.L213
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	192(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movl	$1, %eax
	jmp	.L212
.L213:
	movl	$0, %eax
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	stbi__getn, .-stbi__getn
	.type	stbi__get16be, @function
stbi__get16be:
.LFB563:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	addl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	stbi__get16be, .-stbi__get16be
	.type	stbi__get32be, @function
stbi__get32be:
.LFB564:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sall	$16, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	addl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	stbi__get32be, .-stbi__get32be
	.type	stbi__get16le, @function
stbi__get16le:
.LFB565:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	stbi__get16le, .-stbi__get16le
	.type	stbi__get32le, @function
stbi__get32le:
.LFB566:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	sall	$16, %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	stbi__get32le, .-stbi__get32le
	.type	stbi__compute_y, @function
stbi__compute_y:
.LFB567:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	imull	$77, %eax, %edx
	movl	-8(%rbp), %eax
	imull	$150, %eax, %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	imull	$29, %eax, %eax
	addl	%edx, %eax
	sarl	$8, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	stbi__compute_y, .-stbi__compute_y
	.section	.rodata
	.align 8
.LC7:
	.string	"req_comp >= 1 && req_comp <= 4"
.LC8:
	.string	"0"
	.text
	.type	stbi__convert_format, @function
stbi__convert_format:
.LFB568:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L225
	movq	-40(%rbp), %rax
	jmp	.L226
.L225:
	cmpl	$0, -48(%rbp)
	jle	.L227
	cmpl	$4, -48(%rbp)
	jle	.L272
.L227:
	leaq	__PRETTY_FUNCTION__.6934(%rip), %rcx
	movl	$1741, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	__assert_fail@PLT
.L272:
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L229
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L226
.L229:
	movl	$0, -28(%rbp)
	jmp	.L230
.L270:
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %eax
	leal	0(,%rax,8), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	subl	$10, %eax
	cmpl	$25, %eax
	ja	.L271
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L233(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L233(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L233:
	.long	.L244-.L233
	.long	.L243-.L233
	.long	.L242-.L233
	.long	.L271-.L233
	.long	.L271-.L233
	.long	.L271-.L233
	.long	.L271-.L233
	.long	.L241-.L233
	.long	.L271-.L233
	.long	.L240-.L233
	.long	.L239-.L233
	.long	.L271-.L233
	.long	.L271-.L233
	.long	.L271-.L233
	.long	.L271-.L233
	.long	.L238-.L233
	.long	.L237-.L233
	.long	.L271-.L233
	.long	.L236-.L233
	.long	.L271-.L233
	.long	.L271-.L233
	.long	.L271-.L233
	.long	.L271-.L233
	.long	.L235-.L233
	.long	.L234-.L233
	.long	.L232-.L233
	.text
.L244:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L245
.L246:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	$-1, (%rax)
	subl	$1, -32(%rbp)
	addq	$1, -24(%rbp)
	addq	$2, -16(%rbp)
.L245:
	cmpl	$0, -32(%rbp)
	jns	.L246
	jmp	.L247
.L243:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L248
.L249:
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	subl	$1, -32(%rbp)
	addq	$1, -24(%rbp)
	addq	$3, -16(%rbp)
.L248:
	cmpl	$0, -32(%rbp)
	jns	.L249
	jmp	.L247
.L242:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L250
.L251:
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movb	$-1, (%rax)
	subl	$1, -32(%rbp)
	addq	$1, -24(%rbp)
	addq	$4, -16(%rbp)
.L250:
	cmpl	$0, -32(%rbp)
	jns	.L251
	jmp	.L247
.L241:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L252
.L253:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	subl	$1, -32(%rbp)
	addq	$2, -24(%rbp)
	addq	$1, -16(%rbp)
.L252:
	cmpl	$0, -32(%rbp)
	jns	.L253
	jmp	.L247
.L240:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L254
.L255:
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	subl	$1, -32(%rbp)
	addq	$2, -24(%rbp)
	addq	$3, -16(%rbp)
.L254:
	cmpl	$0, -32(%rbp)
	jns	.L255
	jmp	.L247
.L239:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L256
.L257:
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	3(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	subl	$1, -32(%rbp)
	addq	$2, -24(%rbp)
	addq	$4, -16(%rbp)
.L256:
	cmpl	$0, -32(%rbp)
	jns	.L257
	jmp	.L247
.L236:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L258
.L259:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movb	$-1, (%rax)
	subl	$1, -32(%rbp)
	addq	$3, -24(%rbp)
	addq	$4, -16(%rbp)
.L258:
	cmpl	$0, -32(%rbp)
	jns	.L259
	jmp	.L247
.L238:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L260
.L261:
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	movq	-16(%rbp), %rdx
	movb	%al, (%rdx)
	subl	$1, -32(%rbp)
	addq	$3, -24(%rbp)
	addq	$1, -16(%rbp)
.L260:
	cmpl	$0, -32(%rbp)
	jns	.L261
	jmp	.L247
.L237:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L262
.L263:
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	movq	-16(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	$-1, (%rax)
	subl	$1, -32(%rbp)
	addq	$3, -24(%rbp)
	addq	$2, -16(%rbp)
.L262:
	cmpl	$0, -32(%rbp)
	jns	.L263
	jmp	.L247
.L235:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L264
.L265:
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	movq	-16(%rbp), %rdx
	movb	%al, (%rdx)
	subl	$1, -32(%rbp)
	addq	$4, -24(%rbp)
	addq	$1, -16(%rbp)
.L264:
	cmpl	$0, -32(%rbp)
	jns	.L265
	jmp	.L247
.L234:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L266
.L267:
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	movq	-16(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, (%rdx)
	subl	$1, -32(%rbp)
	addq	$4, -24(%rbp)
	addq	$2, -16(%rbp)
.L266:
	cmpl	$0, -32(%rbp)
	jns	.L267
	jmp	.L247
.L232:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L268
.L269:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, (%rdx)
	subl	$1, -32(%rbp)
	addq	$4, -24(%rbp)
	addq	$3, -16(%rbp)
.L268:
	cmpl	$0, -32(%rbp)
	jns	.L269
	jmp	.L247
.L271:
	leaq	__PRETTY_FUNCTION__.6934(%rip), %rcx
	movl	$1770, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L247:
	addl	$1, -28(%rbp)
.L230:
	movl	-56(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L270
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
.L226:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	stbi__convert_format, .-stbi__convert_format
	.type	stbi__compute_y_16, @function
stbi__compute_y_16:
.LFB569:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	imull	$77, %eax, %edx
	movl	-8(%rbp), %eax
	imull	$150, %eax, %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	imull	$29, %eax, %eax
	addl	%edx, %eax
	sarl	$8, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	stbi__compute_y_16, .-stbi__compute_y_16
	.type	stbi__convert_format16, @function
stbi__convert_format16:
.LFB570:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L276
	movq	-40(%rbp), %rax
	jmp	.L277
.L276:
	cmpl	$0, -48(%rbp)
	jle	.L278
	cmpl	$4, -48(%rbp)
	jle	.L323
.L278:
	leaq	__PRETTY_FUNCTION__.7005(%rip), %rcx
	movl	$1798, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	call	__assert_fail@PLT
.L323:
	movl	-48(%rbp), %eax
	imull	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L280
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L277
.L280:
	movl	$0, -28(%rbp)
	jmp	.L281
.L321:
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %eax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %eax
	leal	0(,%rax,8), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	subl	$10, %eax
	cmpl	$25, %eax
	ja	.L322
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L284(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L284(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L284:
	.long	.L295-.L284
	.long	.L294-.L284
	.long	.L293-.L284
	.long	.L322-.L284
	.long	.L322-.L284
	.long	.L322-.L284
	.long	.L322-.L284
	.long	.L292-.L284
	.long	.L322-.L284
	.long	.L291-.L284
	.long	.L290-.L284
	.long	.L322-.L284
	.long	.L322-.L284
	.long	.L322-.L284
	.long	.L322-.L284
	.long	.L289-.L284
	.long	.L288-.L284
	.long	.L322-.L284
	.long	.L287-.L284
	.long	.L322-.L284
	.long	.L322-.L284
	.long	.L322-.L284
	.long	.L322-.L284
	.long	.L286-.L284
	.long	.L285-.L284
	.long	.L283-.L284
	.text
.L295:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L296
.L297:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movw	$-1, (%rax)
	subl	$1, -32(%rbp)
	addq	$2, -24(%rbp)
	addq	$4, -16(%rbp)
.L296:
	cmpl	$0, -32(%rbp)
	jns	.L297
	jmp	.L298
.L294:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L299
.L300:
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rdx), %edx
	movw	%dx, (%rax)
	movzwl	(%rax), %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	subl	$1, -32(%rbp)
	addq	$2, -24(%rbp)
	addq	$6, -16(%rbp)
.L299:
	cmpl	$0, -32(%rbp)
	jns	.L300
	jmp	.L298
.L293:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L301
.L302:
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rdx), %edx
	movw	%dx, (%rax)
	movzwl	(%rax), %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	movq	-16(%rbp), %rax
	addq	$6, %rax
	movw	$-1, (%rax)
	subl	$1, -32(%rbp)
	addq	$2, -24(%rbp)
	addq	$8, -16(%rbp)
.L301:
	cmpl	$0, -32(%rbp)
	jns	.L302
	jmp	.L298
.L292:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L303
.L304:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	subl	$1, -32(%rbp)
	addq	$4, -24(%rbp)
	addq	$2, -16(%rbp)
.L303:
	cmpl	$0, -32(%rbp)
	jns	.L304
	jmp	.L298
.L291:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L305
.L306:
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rdx), %edx
	movw	%dx, (%rax)
	movzwl	(%rax), %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	subl	$1, -32(%rbp)
	addq	$4, -24(%rbp)
	addq	$6, -16(%rbp)
.L305:
	cmpl	$0, -32(%rbp)
	jns	.L306
	jmp	.L298
.L290:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L307
.L308:
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rdx), %edx
	movw	%dx, (%rax)
	movzwl	(%rax), %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	movq	-16(%rbp), %rax
	leaq	6(%rax), %rdx
	movq	-24(%rbp), %rax
	movzwl	2(%rax), %eax
	movw	%ax, (%rdx)
	subl	$1, -32(%rbp)
	addq	$4, -24(%rbp)
	addq	$8, -16(%rbp)
.L307:
	cmpl	$0, -32(%rbp)
	jns	.L308
	jmp	.L298
.L287:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L309
.L310:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzwl	2(%rax), %eax
	movw	%ax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %eax
	movw	%ax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$6, %rax
	movw	$-1, (%rax)
	subl	$1, -32(%rbp)
	addq	$6, -24(%rbp)
	addq	$8, -16(%rbp)
.L309:
	cmpl	$0, -32(%rbp)
	jns	.L310
	jmp	.L298
.L289:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L311
.L312:
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %ecx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y_16
	movq	-16(%rbp), %rdx
	movw	%ax, (%rdx)
	subl	$1, -32(%rbp)
	addq	$6, -24(%rbp)
	addq	$2, -16(%rbp)
.L311:
	cmpl	$0, -32(%rbp)
	jns	.L312
	jmp	.L298
.L288:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L313
.L314:
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %ecx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y_16
	movq	-16(%rbp), %rdx
	movw	%ax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movw	$-1, (%rax)
	subl	$1, -32(%rbp)
	addq	$6, -24(%rbp)
	addq	$4, -16(%rbp)
.L313:
	cmpl	$0, -32(%rbp)
	jns	.L314
	jmp	.L298
.L286:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L315
.L316:
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %ecx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y_16
	movq	-16(%rbp), %rdx
	movw	%ax, (%rdx)
	subl	$1, -32(%rbp)
	addq	$8, -24(%rbp)
	addq	$2, -16(%rbp)
.L315:
	cmpl	$0, -32(%rbp)
	jns	.L316
	jmp	.L298
.L285:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L317
.L318:
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %ecx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y_16
	movq	-16(%rbp), %rdx
	movw	%ax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzwl	6(%rax), %eax
	movw	%ax, (%rdx)
	subl	$1, -32(%rbp)
	addq	$8, -24(%rbp)
	addq	$4, -16(%rbp)
.L317:
	cmpl	$0, -32(%rbp)
	jns	.L318
	jmp	.L298
.L283:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L319
.L320:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	movzwl	2(%rax), %eax
	movw	%ax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %eax
	movw	%ax, (%rdx)
	subl	$1, -32(%rbp)
	addq	$8, -24(%rbp)
	addq	$6, -16(%rbp)
.L319:
	cmpl	$0, -32(%rbp)
	jns	.L320
	jmp	.L298
.L322:
	leaq	__PRETTY_FUNCTION__.7005(%rip), %rcx
	movl	$1827, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L298:
	addl	$1, -28(%rbp)
.L281:
	movl	-56(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L321
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	stbi__convert_format16, .-stbi__convert_format16
	.type	stbi__ldr_to_hdr, @function
stbi__ldr_to_hdr:
.LFB571:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L325
	movl	$0, %eax
	jmp	.L326
.L325:
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %eax
	movl	$0, %r8d
	movl	$4, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad4
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L327
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L326
.L327:
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L328
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L329
.L328:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
.L329:
	movl	$0, -20(%rbp)
	jmp	.L330
.L333:
	movl	$0, -16(%rbp)
	jmp	.L331
.L332:
	movss	stbi__l2h_gamma(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movl	-20(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm2, %xmm1
	call	pow@PLT
	movss	stbi__l2h_scale(%rip), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	movl	-20(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -16(%rbp)
.L331:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L332
	addl	$1, -20(%rbp)
.L330:
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L333
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L334
	movl	$0, -20(%rbp)
	jmp	.L335
.L336:
	movl	-20(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-20(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -20(%rbp)
.L335:
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L336
.L334:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
.L326:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	stbi__ldr_to_hdr, .-stbi__ldr_to_hdr
	.type	stbi__hdr_to_ldr, @function
stbi__hdr_to_ldr:
.LFB572:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L338
	movl	$0, %eax
	jmp	.L339
.L338:
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L340
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L339
.L340:
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L341
	movl	-52(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L342
.L341:
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
.L342:
	movl	$0, -28(%rbp)
	jmp	.L343
.L355:
	movl	$0, -24(%rbp)
	jmp	.L344
.L349:
	movss	stbi__h2l_gamma_i(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	stbi__h2l_scale_i(%rip), %xmm0
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm2, %xmm1
	call	pow@PLT
	cvtsd2ss	%xmm0, %xmm1
	movss	.LC9(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	comiss	-16(%rbp), %xmm0
	jbe	.L345
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
.L345:
	movss	-16(%rbp), %xmm0
	comiss	.LC9(%rip), %xmm0
	jbe	.L347
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
.L347:
	movss	-16(%rbp), %xmm0
	cvttss2sil	%xmm0, %ecx
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -24(%rbp)
.L344:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L349
	movl	-24(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L350
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	.LC9(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	pxor	%xmm0, %xmm0
	comiss	-12(%rbp), %xmm0
	jbe	.L351
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
.L351:
	movss	-12(%rbp), %xmm0
	comiss	.LC9(%rip), %xmm0
	jbe	.L353
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
.L353:
	movss	-12(%rbp), %xmm0
	cvttss2sil	%xmm0, %ecx
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L350:
	addl	$1, -28(%rbp)
.L343:
	movl	-44(%rbp), %eax
	imull	-48(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L355
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
.L339:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	stbi__hdr_to_ldr, .-stbi__hdr_to_ldr
	.section	.rodata
.LC12:
	.string	"bad code lengths"
	.text
	.type	stbi__build_huffman, @function
stbi__build_huffman:
.LFB573:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L361
.L364:
	movl	$0, -24(%rbp)
	jmp	.L362
.L363:
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	addl	$1, %ecx
	movq	-40(%rbp), %rdx
	cltq
	movb	%cl, 1280(%rdx,%rax)
	addl	$1, -24(%rbp)
.L362:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L363
	addl	$1, -28(%rbp)
.L361:
	cmpl	$15, -28(%rbp)
	jle	.L364
	movq	-40(%rbp), %rdx
	movl	-20(%rbp), %eax
	cltq
	movb	$0, 1280(%rdx,%rax)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$1, -24(%rbp)
	jmp	.L365
.L370:
	movl	-20(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$400, %rdx
	movl	%ecx, 12(%rax,%rdx,4)
	movq	-40(%rbp), %rdx
	movl	-20(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L366
	jmp	.L367
.L368:
	movl	-16(%rbp), %edx
	leal	1(%rdx), %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movl	%edx, %ecx
	movq	-40(%rbp), %rdx
	cltq
	addq	$256, %rax
	movw	%cx, (%rdx,%rax,2)
.L367:
	movq	-40(%rbp), %rdx
	movl	-20(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -24(%rbp)
	je	.L368
	movl	-16(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L366
	leaq	.LC12(%rip), %rdi
	call	stbi__err
	jmp	.L369
.L366:
	movl	$16, %eax
	subl	-24(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	movq	-40(%rbp), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$384, %rdx
	movl	%ecx, 4(%rax,%rdx,4)
	sall	-16(%rbp)
	addl	$1, -24(%rbp)
.L365:
	cmpl	$16, -24(%rbp)
	jle	.L370
	movq	-40(%rbp), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$384, %rdx
	movl	$-1, 4(%rax,%rdx,4)
	movq	-40(%rbp), %rax
	movl	$512, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -28(%rbp)
	jmp	.L371
.L375:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$9, -12(%rbp)
	jg	.L372
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$256, %rdx
	movzwl	(%rax,%rdx,2), %eax
	movzwl	%ax, %edx
	movl	$9, %eax
	subl	-12(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	$9, %eax
	subl	-12(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L373
.L374:
	movl	-8(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	movq	-40(%rbp), %rdx
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -24(%rbp)
.L373:
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L374
.L372:
	addl	$1, -28(%rbp)
.L371:
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L375
	movl	$1, %eax
.L369:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	stbi__build_huffman, .-stbi__build_huffman
	.type	stbi__build_fast_ac, @function
stbi__build_fast_ac:
.LFB574:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L377
.L380:
	movq	-48(%rbp), %rdx
	movl	-28(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -29(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movw	$0, (%rax)
	cmpb	$-1, -29(%rbp)
	je	.L378
	movzbl	-29(%rbp), %eax
	movq	-48(%rbp), %rdx
	cltq
	movzbl	1024(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$4, %eax
	andl	$15, %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -12(%rbp)
	movzbl	-29(%rbp), %eax
	movq	-48(%rbp), %rdx
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L378
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cmpl	$9, %eax
	jg	.L378
	movl	-8(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	andl	$511, %eax
	movl	%eax, %edx
	movl	$9, %eax
	subl	-12(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L379
	movl	-12(%rbp), %eax
	movl	$-1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.L379:
	cmpl	$-128, -24(%rbp)
	jl	.L378
	cmpl	$127, -24(%rbp)
	jg	.L378
	movl	-24(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	addl	%ecx, %eax
	addl	%eax, %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
.L378:
	addl	$1, -28(%rbp)
.L377:
	cmpl	$511, -28(%rbp)
	jle	.L380
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	stbi__build_fast_ac, .-stbi__build_fast_ac
	.type	stbi__grow_buffer_unsafe, @function
stbi__grow_buffer_unsafe:
.LFB575:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L388:
	movq	-24(%rbp), %rax
	movl	18476(%rax), %eax
	testl	%eax, %eax
	jne	.L382
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	jmp	.L383
.L382:
	movl	$0, %eax
.L383:
	movl	%eax, -4(%rbp)
	cmpl	$255, -4(%rbp)
	jne	.L384
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	jmp	.L385
.L386:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
.L385:
	cmpl	$255, -8(%rbp)
	je	.L386
	cmpl	$0, -8(%rbp)
	je	.L384
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 18472(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 18476(%rax)
	jmp	.L381
.L384:
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	movl	$24, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	-4(%rbp), %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	leal	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	$24, %eax
	jle	.L388
.L381:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	stbi__grow_buffer_unsafe, .-stbi__grow_buffer_unsafe
	.section	.rodata
	.align 32
	.type	stbi__bmask, @object
	.size	stbi__bmask, 68
stbi__bmask:
	.long	0
	.long	1
	.long	3
	.long	7
	.long	15
	.long	31
	.long	63
	.long	127
	.long	255
	.long	511
	.long	1023
	.long	2047
	.long	4095
	.long	8191
	.long	16383
	.long	32767
	.long	65535
	.align 8
.LC13:
	.string	"(((j->code_buffer) >> (32 - h->size[c])) & stbi__bmask[h->size[c]]) == h->code[c]"
	.text
	.type	stbi__jpeg_huff_decode, @function
stbi__jpeg_huff_decode:
.LFB576:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	$15, %eax
	jg	.L390
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L390:
	movq	-24(%rbp), %rax
	movl	18464(%rax), %eax
	shrl	$23, %eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$254, -16(%rbp)
	jg	.L391
	movq	-32(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L392
	movl	$-1, %eax
	jmp	.L393
.L392:
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	movq	-32(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	movzbl	1024(%rdx,%rax), %eax
	movzbl	%al, %eax
	jmp	.L393
.L391:
	movq	-24(%rbp), %rax
	movl	18464(%rax), %eax
	shrl	$16, %eax
	movl	%eax, -8(%rbp)
	movl	$10, -16(%rbp)
.L396:
	movq	-32(%rbp), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$384, %rdx
	movl	4(%rax,%rdx,4), %eax
	cmpl	%eax, -8(%rbp)
	jb	.L401
	addl	$1, -16(%rbp)
	jmp	.L396
.L401:
	nop
	cmpl	$17, -16(%rbp)
	jne	.L397
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	leal	-16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	movl	$-1, %eax
	jmp	.L393
.L397:
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L398
	movl	$-1, %eax
	jmp	.L393
.L398:
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	movl	$32, %eax
	subl	-16(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %ecx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$400, %rdx
	movl	12(%rax,%rdx,4), %eax
	addl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	18464(%rax), %esi
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	$32, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %ecx
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	1280(%rdx,%rax), %eax
	movzbl	%al, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$256, %rdx
	movzwl	(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %ecx
	je	.L399
	leaq	__PRETTY_FUNCTION__.7238(%rip), %rcx
	movl	$2115, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	call	__assert_fail@PLT
.L399:
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	1024(%rdx,%rax), %eax
	movzbl	%al, %eax
.L393:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	stbi__jpeg_huff_decode, .-stbi__jpeg_huff_decode
	.section	.rodata
	.align 32
	.type	stbi__jbias, @object
	.size	stbi__jbias, 64
stbi__jbias:
	.long	0
	.long	-1
	.long	-3
	.long	-7
	.long	-15
	.long	-31
	.long	-63
	.long	-127
	.long	-255
	.long	-511
	.long	-1023
	.long	-2047
	.long	-4095
	.long	-8191
	.long	-16383
	.long	-32767
	.text
	.type	stbi__extend_receive, @function
stbi__extend_receive:
.LFB577:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L403
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L403:
	movq	-24(%rbp), %rax
	movl	18464(%rax), %eax
	shrl	$31, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	roll	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	notl	%eax
	andl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__jbias(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-8(%rbp), %edx
	subl	$1, %edx
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	stbi__extend_receive, .-stbi__extend_receive
	.type	stbi__jpeg_get_bits, @function
stbi__jpeg_get_bits:
.LFB578:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L406
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L406:
	movq	-24(%rbp), %rax
	movl	18464(%rax), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	roll	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	notl	%eax
	andl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__bmask(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	stbi__jpeg_get_bits, .-stbi__jpeg_get_bits
	.type	stbi__jpeg_get_bit, @function
stbi__jpeg_get_bit:
.LFB579:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	testl	%eax, %eax
	jg	.L409
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L409:
	movq	-24(%rbp), %rax
	movl	18464(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	18464(%rax), %eax
	leal	(%rax,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18464(%rax)
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18468(%rax)
	movl	-4(%rbp), %eax
	andl	$-2147483648, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	stbi__jpeg_get_bit, .-stbi__jpeg_get_bit
	.section	.rodata
	.align 32
	.type	stbi__jpeg_dezigzag, @object
	.size	stbi__jpeg_dezigzag, 79
stbi__jpeg_dezigzag:
	.string	""
	.ascii	"\001\b\020\t\002\003\n\021\030 \031\022\013\004\005\f\023\032"
	.ascii	"!(0)\"\033\024\r\006\007\016\025\034#*1892+$\035\026\017\027"
	.ascii	"\036%,3:;4-&\037'.5<=6/7>????????????????"
.LC14:
	.string	"bad huffman code"
	.text
	.type	stbi__jpeg_decode_block, @function
stbi__jpeg_decode_block:
.LFB580:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movq	-56(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	$15, %eax
	jg	.L412
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L412:
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_huff_decode
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	js	.L413
	cmpl	$15, -32(%rbp)
	jle	.L414
.L413:
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L415
.L414:
	movq	-64(%rbp), %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$0, -32(%rbp)
	je	.L416
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__extend_receive
	jmp	.L417
.L416:
	movl	$0, %eax
.L417:
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rcx
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18104, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rcx
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	leaq	18104(%rax), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movzwl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movw	%dx, (%rax)
	movl	$1, -36(%rbp)
.L425:
	movq	-56(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	$15, %eax
	jg	.L418
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L418:
	movq	-56(%rbp), %rax
	movl	18464(%rax), %eax
	shrl	$23, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L419
	movl	-16(%rbp), %eax
	sarl	$4, %eax
	andl	$15, %eax
	addl	%eax, -36(%rbp)
	movl	-16(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	18464(%rax), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 18464(%rax)
	movq	-56(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 18468(%rax)
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	imull	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	leaq	(%rax,%rax), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	jmp	.L420
.L419:
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_huff_decode
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L421
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L415
.L421:
	movl	-12(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L422
	cmpl	$240, -12(%rbp)
	jne	.L426
	addl	$16, -36(%rbp)
	jmp	.L420
.L422:
	movl	-16(%rbp), %eax
	addl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__extend_receive
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	imull	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	leaq	(%rax,%rax), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
.L420:
	cmpl	$63, -36(%rbp)
	jle	.L425
	jmp	.L424
.L426:
	nop
.L424:
	movl	$1, %eax
.L415:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	stbi__jpeg_decode_block, .-stbi__jpeg_decode_block
	.section	.rodata
.LC15:
	.string	"can't merge dc and ac"
	.text
	.type	stbi__jpeg_decode_block_prog_dc, @function
stbi__jpeg_decode_block_prog_dc:
.LFB581:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	18488(%rax), %eax
	testl	%eax, %eax
	je	.L428
	leaq	.LC15(%rip), %rdi
	call	stbi__err
	jmp	.L429
.L428:
	movq	-24(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	$15, %eax
	jg	.L430
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L430:
	movq	-24(%rbp), %rax
	movl	18492(%rax), %eax
	testl	%eax, %eax
	jne	.L431
	movq	-32(%rbp), %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_huff_decode
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L432
	cmpl	$15, -12(%rbp)
	jle	.L433
.L432:
	leaq	.LC15(%rip), %rdi
	call	stbi__err
	jmp	.L429
.L433:
	cmpl	$0, -12(%rbp)
	je	.L434
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__extend_receive
	jmp	.L435
.L434:
	movl	$0, %eax
.L435:
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18104, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	leaq	18104(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	18496(%rax), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L436
.L431:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_get_bit
	testl	%eax, %eax
	je	.L436
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	18496(%rax), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
.L436:
	movl	$1, %eax
.L429:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	stbi__jpeg_decode_block_prog_dc, .-stbi__jpeg_decode_block_prog_dc
	.type	stbi__jpeg_decode_block_prog_ac, @function
stbi__jpeg_decode_block_prog_ac:
.LFB582:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movl	18484(%rax), %eax
	testl	%eax, %eax
	jne	.L438
	leaq	.LC15(%rip), %rdi
	call	stbi__err
	jmp	.L439
.L438:
	movq	-72(%rbp), %rax
	movl	18492(%rax), %eax
	testl	%eax, %eax
	jne	.L440
	movq	-72(%rbp), %rax
	movl	18496(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	testl	%eax, %eax
	je	.L441
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
	movl	$1, %eax
	jmp	.L439
.L441:
	movq	-72(%rbp), %rax
	movl	18484(%rax), %eax
	movl	%eax, -56(%rbp)
.L450:
	movq	-72(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	$15, %eax
	jg	.L442
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L442:
	movq	-72(%rbp), %rax
	movl	18464(%rax), %eax
	shrl	$23, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L443
	movl	-32(%rbp), %eax
	sarl	$4, %eax
	andl	$15, %eax
	addl	%eax, -56(%rbp)
	movl	-32(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	18464(%rax), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18464(%rax)
	movq	-72(%rbp), %rax
	movl	18468(%rax), %eax
	subl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18468(%rax)
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	imull	%eax, %edx
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	jmp	.L444
.L443:
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_huff_decode
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L445
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L439
.L445:
	movl	-28(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L446
	cmpl	$14, -32(%rbp)
	jg	.L447
	movl	-32(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
	cmpl	$0, -32(%rbp)
	je	.L448
	movl	-32(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__jpeg_get_bits
	movq	-72(%rbp), %rdx
	movl	18500(%rdx), %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
.L448:
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
	jmp	.L451
.L447:
	addl	$16, -56(%rbp)
	jmp	.L444
.L446:
	movl	-32(%rbp), %eax
	addl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__extend_receive
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	imull	%eax, %edx
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
.L444:
	movq	-72(%rbp), %rax
	movl	18488(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jle	.L450
	jmp	.L451
.L440:
	movq	-72(%rbp), %rax
	movl	18496(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movw	%ax, -58(%rbp)
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	testl	%eax, %eax
	je	.L452
	movq	-72(%rbp), %rax
	movl	18500(%rax), %eax
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
	movq	-72(%rbp), %rax
	movl	18484(%rax), %eax
	movl	%eax, -56(%rbp)
	jmp	.L453
.L456:
	movl	-56(%rbp), %eax
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	leaq	(%rax,%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	.L454
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_get_bit
	testl	%eax, %eax
	je	.L454
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	andw	-58(%rbp), %ax
	testw	%ax, %ax
	jne	.L454
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jle	.L455
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movzwl	-58(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L454
.L455:
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movzwl	-58(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
.L454:
	addl	$1, -56(%rbp)
.L453:
	movq	-72(%rbp), %rax
	movl	18488(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jle	.L456
	jmp	.L451
.L452:
	movq	-72(%rbp), %rax
	movl	18484(%rax), %eax
	movl	%eax, -56(%rbp)
.L469:
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_huff_decode
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L457
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L439
.L457:
	movl	-44(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.L458
	cmpl	$14, -52(%rbp)
	jg	.L463
	movl	-52(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
	cmpl	$0, -52(%rbp)
	je	.L460
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__jpeg_get_bits
	movq	-72(%rbp), %rdx
	movl	18500(%rdx), %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 18500(%rax)
.L460:
	movl	$64, -52(%rbp)
	jmp	.L463
.L458:
	cmpl	$1, -48(%rbp)
	je	.L461
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L439
.L461:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_get_bit
	testl	%eax, %eax
	je	.L462
	movswl	-58(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L463
.L462:
	movswl	-58(%rbp), %eax
	negl	%eax
	movl	%eax, -48(%rbp)
	jmp	.L463
.L468:
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	cltq
	leaq	stbi__jpeg_dezigzag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	leaq	(%rax,%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	.L464
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_get_bit
	testl	%eax, %eax
	je	.L463
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	andw	-58(%rbp), %ax
	testw	%ax, %ax
	jne	.L463
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jle	.L465
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movzwl	-58(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L463
.L465:
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movzwl	-58(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L463
.L464:
	cmpl	$0, -52(%rbp)
	jne	.L466
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L467
.L466:
	subl	$1, -52(%rbp)
.L463:
	movq	-72(%rbp), %rax
	movl	18488(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jle	.L468
.L467:
	movq	-72(%rbp), %rax
	movl	18488(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jle	.L469
.L451:
	movl	$1, %eax
.L439:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	stbi__jpeg_decode_block_prog_ac, .-stbi__jpeg_decode_block_prog_ac
	.type	stbi__clamp, @function
stbi__clamp:
.LFB583:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$255, %eax
	jbe	.L471
	cmpl	$0, -4(%rbp)
	jns	.L472
	movl	$0, %eax
	jmp	.L473
.L472:
	cmpl	$255, -4(%rbp)
	jle	.L471
	movl	$-1, %eax
	jmp	.L473
.L471:
	movl	-4(%rbp), %eax
.L473:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	stbi__clamp, .-stbi__clamp
	.type	stbi__idct_block, @function
stbi__idct_block:
.LFB584:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$456, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -440(%rbp)
	movl	%esi, -444(%rbp)
	movq	%rdx, -456(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-288(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -296(%rbp)
	movl	$0, -424(%rbp)
	jmp	.L475
.L478:
	movq	-296(%rbp), %rax
	addq	$16, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jne	.L476
	movq	-296(%rbp), %rax
	addq	$32, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jne	.L476
	movq	-296(%rbp), %rax
	addq	$48, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jne	.L476
	movq	-296(%rbp), %rax
	addq	$64, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jne	.L476
	movq	-296(%rbp), %rax
	addq	$80, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jne	.L476
	movq	-296(%rbp), %rax
	addq	$96, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jne	.L476
	movq	-296(%rbp), %rax
	addq	$112, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jne	.L476
	movq	-296(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	sall	$2, %eax
	movl	%eax, -368(%rbp)
	movq	-312(%rbp), %rax
	addq	$224, %rax
	movl	-368(%rbp), %edx
	movl	%edx, (%rax)
	movq	-312(%rbp), %rdx
	addq	$192, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-312(%rbp), %rax
	addq	$160, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-312(%rbp), %rdx
	subq	$-128, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-312(%rbp), %rax
	addq	$96, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-312(%rbp), %rdx
	addq	$64, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-312(%rbp), %rax
	addq	$32, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movl	(%rax), %edx
	movq	-312(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L477
.L476:
	movq	-296(%rbp), %rax
	addq	$32, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -364(%rbp)
	movq	-296(%rbp), %rax
	addq	$96, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -360(%rbp)
	movl	-364(%rbp), %edx
	movl	-360(%rbp), %eax
	addl	%edx, %eax
	imull	$2217, %eax, %eax
	movl	%eax, -356(%rbp)
	movl	-360(%rbp), %eax
	imull	$-7567, %eax, %edx
	movl	-356(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -352(%rbp)
	movl	-364(%rbp), %eax
	imull	$3135, %eax, %edx
	movl	-356(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -348(%rbp)
	movq	-296(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -364(%rbp)
	movq	-296(%rbp), %rax
	addq	$64, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -360(%rbp)
	movl	-364(%rbp), %edx
	movl	-360(%rbp), %eax
	addl	%edx, %eax
	sall	$12, %eax
	movl	%eax, -344(%rbp)
	movl	-364(%rbp), %eax
	subl	-360(%rbp), %eax
	sall	$12, %eax
	movl	%eax, -340(%rbp)
	movl	-344(%rbp), %edx
	movl	-348(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -336(%rbp)
	movl	-344(%rbp), %eax
	subl	-348(%rbp), %eax
	movl	%eax, -332(%rbp)
	movl	-340(%rbp), %edx
	movl	-352(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -328(%rbp)
	movl	-340(%rbp), %eax
	subl	-352(%rbp), %eax
	movl	%eax, -324(%rbp)
	movq	-296(%rbp), %rax
	addq	$112, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -344(%rbp)
	movq	-296(%rbp), %rax
	addq	$80, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -340(%rbp)
	movq	-296(%rbp), %rax
	addq	$48, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -352(%rbp)
	movq	-296(%rbp), %rax
	addq	$16, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, -348(%rbp)
	movl	-344(%rbp), %edx
	movl	-352(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -360(%rbp)
	movl	-340(%rbp), %edx
	movl	-348(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -320(%rbp)
	movl	-344(%rbp), %edx
	movl	-348(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -356(%rbp)
	movl	-340(%rbp), %edx
	movl	-352(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -364(%rbp)
	movl	-360(%rbp), %edx
	movl	-320(%rbp), %eax
	addl	%edx, %eax
	imull	$4816, %eax, %eax
	movl	%eax, -316(%rbp)
	movl	-344(%rbp), %eax
	imull	$1223, %eax, %eax
	movl	%eax, -344(%rbp)
	movl	-340(%rbp), %eax
	imull	$8410, %eax, %eax
	movl	%eax, -340(%rbp)
	movl	-352(%rbp), %eax
	imull	$12586, %eax, %eax
	movl	%eax, -352(%rbp)
	movl	-348(%rbp), %eax
	imull	$6149, %eax, %eax
	movl	%eax, -348(%rbp)
	movl	-356(%rbp), %eax
	imull	$-3685, %eax, %edx
	movl	-316(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -356(%rbp)
	movl	-364(%rbp), %eax
	imull	$-10497, %eax, %edx
	movl	-316(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -364(%rbp)
	movl	-360(%rbp), %eax
	imull	$-8034, %eax, %eax
	movl	%eax, -360(%rbp)
	movl	-320(%rbp), %eax
	imull	$-1597, %eax, %eax
	movl	%eax, -320(%rbp)
	movl	-356(%rbp), %edx
	movl	-320(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -348(%rbp)
	movl	-364(%rbp), %edx
	movl	-360(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -352(%rbp)
	movl	-364(%rbp), %edx
	movl	-320(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -340(%rbp)
	movl	-356(%rbp), %edx
	movl	-360(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -344(%rbp)
	addl	$512, -336(%rbp)
	addl	$512, -328(%rbp)
	addl	$512, -324(%rbp)
	addl	$512, -332(%rbp)
	movl	-336(%rbp), %edx
	movl	-348(%rbp), %eax
	addl	%edx, %eax
	sarl	$10, %eax
	movl	%eax, %edx
	movq	-312(%rbp), %rax
	movl	%edx, (%rax)
	movl	-336(%rbp), %eax
	subl	-348(%rbp), %eax
	movl	%eax, %edx
	movq	-312(%rbp), %rax
	addq	$224, %rax
	sarl	$10, %edx
	movl	%edx, (%rax)
	movl	-328(%rbp), %edx
	movl	-352(%rbp), %eax
	addl	%eax, %edx
	movq	-312(%rbp), %rax
	addq	$32, %rax
	sarl	$10, %edx
	movl	%edx, (%rax)
	movl	-328(%rbp), %eax
	subl	-352(%rbp), %eax
	movl	%eax, %edx
	movq	-312(%rbp), %rax
	addq	$192, %rax
	sarl	$10, %edx
	movl	%edx, (%rax)
	movl	-324(%rbp), %edx
	movl	-340(%rbp), %eax
	addl	%eax, %edx
	movq	-312(%rbp), %rax
	addq	$64, %rax
	sarl	$10, %edx
	movl	%edx, (%rax)
	movl	-324(%rbp), %eax
	subl	-340(%rbp), %eax
	movl	%eax, %edx
	movq	-312(%rbp), %rax
	addq	$160, %rax
	sarl	$10, %edx
	movl	%edx, (%rax)
	movl	-332(%rbp), %edx
	movl	-344(%rbp), %eax
	addl	%eax, %edx
	movq	-312(%rbp), %rax
	addq	$96, %rax
	sarl	$10, %edx
	movl	%edx, (%rax)
	movl	-332(%rbp), %eax
	subl	-344(%rbp), %eax
	movl	%eax, %edx
	movq	-312(%rbp), %rax
	subq	$-128, %rax
	sarl	$10, %edx
	movl	%edx, (%rax)
.L477:
	addl	$1, -424(%rbp)
	addq	$2, -296(%rbp)
	addq	$4, -312(%rbp)
.L475:
	cmpl	$7, -424(%rbp)
	jle	.L478
	movl	$0, -424(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -304(%rbp)
	jmp	.L479
.L480:
	movq	-312(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -420(%rbp)
	movq	-312(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -416(%rbp)
	movl	-420(%rbp), %edx
	movl	-416(%rbp), %eax
	addl	%edx, %eax
	imull	$2217, %eax, %eax
	movl	%eax, -412(%rbp)
	movl	-416(%rbp), %eax
	imull	$-7567, %eax, %edx
	movl	-412(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -408(%rbp)
	movl	-420(%rbp), %eax
	imull	$3135, %eax, %edx
	movl	-412(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -404(%rbp)
	movq	-312(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -420(%rbp)
	movq	-312(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -416(%rbp)
	movl	-420(%rbp), %edx
	movl	-416(%rbp), %eax
	addl	%edx, %eax
	sall	$12, %eax
	movl	%eax, -400(%rbp)
	movl	-420(%rbp), %eax
	subl	-416(%rbp), %eax
	sall	$12, %eax
	movl	%eax, -396(%rbp)
	movl	-400(%rbp), %edx
	movl	-404(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -392(%rbp)
	movl	-400(%rbp), %eax
	subl	-404(%rbp), %eax
	movl	%eax, -388(%rbp)
	movl	-396(%rbp), %edx
	movl	-408(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -384(%rbp)
	movl	-396(%rbp), %eax
	subl	-408(%rbp), %eax
	movl	%eax, -380(%rbp)
	movq	-312(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -400(%rbp)
	movq	-312(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -396(%rbp)
	movq	-312(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -408(%rbp)
	movq	-312(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -404(%rbp)
	movl	-400(%rbp), %edx
	movl	-408(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -416(%rbp)
	movl	-396(%rbp), %edx
	movl	-404(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -376(%rbp)
	movl	-400(%rbp), %edx
	movl	-404(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -412(%rbp)
	movl	-396(%rbp), %edx
	movl	-408(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -420(%rbp)
	movl	-416(%rbp), %edx
	movl	-376(%rbp), %eax
	addl	%edx, %eax
	imull	$4816, %eax, %eax
	movl	%eax, -372(%rbp)
	movl	-400(%rbp), %eax
	imull	$1223, %eax, %eax
	movl	%eax, -400(%rbp)
	movl	-396(%rbp), %eax
	imull	$8410, %eax, %eax
	movl	%eax, -396(%rbp)
	movl	-408(%rbp), %eax
	imull	$12586, %eax, %eax
	movl	%eax, -408(%rbp)
	movl	-404(%rbp), %eax
	imull	$6149, %eax, %eax
	movl	%eax, -404(%rbp)
	movl	-412(%rbp), %eax
	imull	$-3685, %eax, %edx
	movl	-372(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -412(%rbp)
	movl	-420(%rbp), %eax
	imull	$-10497, %eax, %edx
	movl	-372(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -420(%rbp)
	movl	-416(%rbp), %eax
	imull	$-8034, %eax, %eax
	movl	%eax, -416(%rbp)
	movl	-376(%rbp), %eax
	imull	$-1597, %eax, %eax
	movl	%eax, -376(%rbp)
	movl	-412(%rbp), %edx
	movl	-376(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -404(%rbp)
	movl	-420(%rbp), %edx
	movl	-416(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -408(%rbp)
	movl	-420(%rbp), %edx
	movl	-376(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -396(%rbp)
	movl	-412(%rbp), %edx
	movl	-416(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -400(%rbp)
	addl	$16842752, -392(%rbp)
	addl	$16842752, -384(%rbp)
	addl	$16842752, -380(%rbp)
	addl	$16842752, -388(%rbp)
	movl	-392(%rbp), %edx
	movl	-404(%rbp), %eax
	addl	%edx, %eax
	sarl	$17, %eax
	movl	%eax, %edi
	call	stbi__clamp
	movq	-304(%rbp), %rdx
	movb	%al, (%rdx)
	movl	-392(%rbp), %eax
	subl	-404(%rbp), %eax
	sarl	$17, %eax
	movq	-304(%rbp), %rdx
	leaq	7(%rdx), %rbx
	movl	%eax, %edi
	call	stbi__clamp
	movb	%al, (%rbx)
	movl	-384(%rbp), %edx
	movl	-408(%rbp), %eax
	addl	%edx, %eax
	sarl	$17, %eax
	movq	-304(%rbp), %rdx
	leaq	1(%rdx), %rbx
	movl	%eax, %edi
	call	stbi__clamp
	movb	%al, (%rbx)
	movl	-384(%rbp), %eax
	subl	-408(%rbp), %eax
	sarl	$17, %eax
	movq	-304(%rbp), %rdx
	leaq	6(%rdx), %rbx
	movl	%eax, %edi
	call	stbi__clamp
	movb	%al, (%rbx)
	movl	-380(%rbp), %edx
	movl	-396(%rbp), %eax
	addl	%edx, %eax
	sarl	$17, %eax
	movq	-304(%rbp), %rdx
	leaq	2(%rdx), %rbx
	movl	%eax, %edi
	call	stbi__clamp
	movb	%al, (%rbx)
	movl	-380(%rbp), %eax
	subl	-396(%rbp), %eax
	sarl	$17, %eax
	movq	-304(%rbp), %rdx
	leaq	5(%rdx), %rbx
	movl	%eax, %edi
	call	stbi__clamp
	movb	%al, (%rbx)
	movl	-388(%rbp), %edx
	movl	-400(%rbp), %eax
	addl	%edx, %eax
	sarl	$17, %eax
	movq	-304(%rbp), %rdx
	leaq	3(%rdx), %rbx
	movl	%eax, %edi
	call	stbi__clamp
	movb	%al, (%rbx)
	movl	-388(%rbp), %eax
	subl	-400(%rbp), %eax
	sarl	$17, %eax
	movq	-304(%rbp), %rdx
	leaq	4(%rdx), %rbx
	movl	%eax, %edi
	call	stbi__clamp
	movb	%al, (%rbx)
	addl	$1, -424(%rbp)
	addq	$32, -312(%rbp)
	movl	-444(%rbp), %eax
	cltq
	addq	%rax, -304(%rbp)
.L479:
	cmpl	$7, -424(%rbp)
	jle	.L480
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L481
	call	__stack_chk_fail@PLT
.L481:
	addq	$456, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	stbi__idct_block, .-stbi__idct_block
	.type	stbi__idct_simd, @function
stbi__idct_simd:
.LFB585:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$2176, %rsp
	movq	%rdi, -10344(%rbp)
	movl	%esi, -10348(%rbp)
	movq	%rdx, -10360(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movw	$2217, -10104(%rbp)
	movw	$-5350, -10102(%rbp)
	movw	$2217, -10100(%rbp)
	movw	$-5350, -10098(%rbp)
	movw	$2217, -10096(%rbp)
	movw	$-5350, -10094(%rbp)
	movw	$2217, -10092(%rbp)
	movw	$-5350, -10090(%rbp)
	movswl	-10104(%rbp), %eax
	movswl	-10102(%rbp), %edx
	movswl	-10100(%rbp), %ecx
	movswl	-10098(%rbp), %esi
	movswl	-10096(%rbp), %edi
	movswl	-10094(%rbp), %r8d
	movswl	-10092(%rbp), %r9d
	movswl	-10090(%rbp), %r10d
	movw	%r10w, -10088(%rbp)
	movw	%r9w, -10086(%rbp)
	movw	%r8w, -10084(%rbp)
	movw	%di, -10082(%rbp)
	movw	%si, -10080(%rbp)
	movw	%cx, -10078(%rbp)
	movw	%dx, -10076(%rbp)
	movw	%ax, -10074(%rbp)
	movzwl	-10074(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10076(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10078(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10080(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10082(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10084(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10086(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10088(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -9728(%rbp)
	movw	$5352, -10136(%rbp)
	movw	$2217, -10134(%rbp)
	movw	$5352, -10132(%rbp)
	movw	$2217, -10130(%rbp)
	movw	$5352, -10128(%rbp)
	movw	$2217, -10126(%rbp)
	movw	$5352, -10124(%rbp)
	movw	$2217, -10122(%rbp)
	movswl	-10136(%rbp), %eax
	movswl	-10134(%rbp), %edx
	movswl	-10132(%rbp), %ecx
	movswl	-10130(%rbp), %esi
	movswl	-10128(%rbp), %edi
	movswl	-10126(%rbp), %r8d
	movswl	-10124(%rbp), %r9d
	movswl	-10122(%rbp), %r10d
	movw	%r10w, -10120(%rbp)
	movw	%r9w, -10118(%rbp)
	movw	%r8w, -10116(%rbp)
	movw	%di, -10114(%rbp)
	movw	%si, -10112(%rbp)
	movw	%cx, -10110(%rbp)
	movw	%dx, -10108(%rbp)
	movw	%ax, -10106(%rbp)
	movzwl	-10106(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10108(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10110(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10112(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10114(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10116(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10118(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10120(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -9712(%rbp)
	movw	$1131, -10168(%rbp)
	movw	$4816, -10166(%rbp)
	movw	$1131, -10164(%rbp)
	movw	$4816, -10162(%rbp)
	movw	$1131, -10160(%rbp)
	movw	$4816, -10158(%rbp)
	movw	$1131, -10156(%rbp)
	movw	$4816, -10154(%rbp)
	movswl	-10168(%rbp), %eax
	movswl	-10166(%rbp), %edx
	movswl	-10164(%rbp), %ecx
	movswl	-10162(%rbp), %esi
	movswl	-10160(%rbp), %edi
	movswl	-10158(%rbp), %r8d
	movswl	-10156(%rbp), %r9d
	movswl	-10154(%rbp), %r10d
	movw	%r10w, -10152(%rbp)
	movw	%r9w, -10150(%rbp)
	movw	%r8w, -10148(%rbp)
	movw	%di, -10146(%rbp)
	movw	%si, -10144(%rbp)
	movw	%cx, -10142(%rbp)
	movw	%dx, -10140(%rbp)
	movw	%ax, -10138(%rbp)
	movzwl	-10138(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10140(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10142(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10144(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10146(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10148(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10150(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10152(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -9696(%rbp)
	movw	$4816, -10200(%rbp)
	movw	$-5681, -10198(%rbp)
	movw	$4816, -10196(%rbp)
	movw	$-5681, -10194(%rbp)
	movw	$4816, -10192(%rbp)
	movw	$-5681, -10190(%rbp)
	movw	$4816, -10188(%rbp)
	movw	$-5681, -10186(%rbp)
	movswl	-10200(%rbp), %eax
	movswl	-10198(%rbp), %edx
	movswl	-10196(%rbp), %ecx
	movswl	-10194(%rbp), %esi
	movswl	-10192(%rbp), %edi
	movswl	-10190(%rbp), %r8d
	movswl	-10188(%rbp), %r9d
	movswl	-10186(%rbp), %r10d
	movw	%r10w, -10184(%rbp)
	movw	%r9w, -10182(%rbp)
	movw	%r8w, -10180(%rbp)
	movw	%di, -10178(%rbp)
	movw	%si, -10176(%rbp)
	movw	%cx, -10174(%rbp)
	movw	%dx, -10172(%rbp)
	movw	%ax, -10170(%rbp)
	movzwl	-10170(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10172(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10174(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10176(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10178(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10180(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10182(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10184(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -9680(%rbp)
	movw	$-6811, -10232(%rbp)
	movw	$-8034, -10230(%rbp)
	movw	$-6811, -10228(%rbp)
	movw	$-8034, -10226(%rbp)
	movw	$-6811, -10224(%rbp)
	movw	$-8034, -10222(%rbp)
	movw	$-6811, -10220(%rbp)
	movw	$-8034, -10218(%rbp)
	movswl	-10232(%rbp), %eax
	movswl	-10230(%rbp), %edx
	movswl	-10228(%rbp), %ecx
	movswl	-10226(%rbp), %esi
	movswl	-10224(%rbp), %edi
	movswl	-10222(%rbp), %r8d
	movswl	-10220(%rbp), %r9d
	movswl	-10218(%rbp), %r10d
	movw	%r10w, -10216(%rbp)
	movw	%r9w, -10214(%rbp)
	movw	%r8w, -10212(%rbp)
	movw	%di, -10210(%rbp)
	movw	%si, -10208(%rbp)
	movw	%cx, -10206(%rbp)
	movw	%dx, -10204(%rbp)
	movw	%ax, -10202(%rbp)
	movzwl	-10202(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10204(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10206(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10208(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10210(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10212(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10214(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10216(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -9664(%rbp)
	movw	$-8034, -10264(%rbp)
	movw	$4552, -10262(%rbp)
	movw	$-8034, -10260(%rbp)
	movw	$4552, -10258(%rbp)
	movw	$-8034, -10256(%rbp)
	movw	$4552, -10254(%rbp)
	movw	$-8034, -10252(%rbp)
	movw	$4552, -10250(%rbp)
	movswl	-10264(%rbp), %eax
	movswl	-10262(%rbp), %edx
	movswl	-10260(%rbp), %ecx
	movswl	-10258(%rbp), %esi
	movswl	-10256(%rbp), %edi
	movswl	-10254(%rbp), %r8d
	movswl	-10252(%rbp), %r9d
	movswl	-10250(%rbp), %r10d
	movw	%r10w, -10248(%rbp)
	movw	%r9w, -10246(%rbp)
	movw	%r8w, -10244(%rbp)
	movw	%di, -10242(%rbp)
	movw	%si, -10240(%rbp)
	movw	%cx, -10238(%rbp)
	movw	%dx, -10236(%rbp)
	movw	%ax, -10234(%rbp)
	movzwl	-10234(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10236(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10238(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10240(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10242(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10244(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10246(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10248(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -9648(%rbp)
	movw	$6813, -10296(%rbp)
	movw	$-1597, -10294(%rbp)
	movw	$6813, -10292(%rbp)
	movw	$-1597, -10290(%rbp)
	movw	$6813, -10288(%rbp)
	movw	$-1597, -10286(%rbp)
	movw	$6813, -10284(%rbp)
	movw	$-1597, -10282(%rbp)
	movswl	-10296(%rbp), %eax
	movswl	-10294(%rbp), %edx
	movswl	-10292(%rbp), %ecx
	movswl	-10290(%rbp), %esi
	movswl	-10288(%rbp), %edi
	movswl	-10286(%rbp), %r8d
	movswl	-10284(%rbp), %r9d
	movswl	-10282(%rbp), %r10d
	movw	%r10w, -10280(%rbp)
	movw	%r9w, -10278(%rbp)
	movw	%r8w, -10276(%rbp)
	movw	%di, -10274(%rbp)
	movw	%si, -10272(%rbp)
	movw	%cx, -10270(%rbp)
	movw	%dx, -10268(%rbp)
	movw	%ax, -10266(%rbp)
	movzwl	-10266(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10268(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10270(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10272(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10274(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10276(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10278(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10280(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -9632(%rbp)
	movw	$-1597, -10328(%rbp)
	movw	$4552, -10326(%rbp)
	movw	$-1597, -10324(%rbp)
	movw	$4552, -10322(%rbp)
	movw	$-1597, -10320(%rbp)
	movw	$4552, -10318(%rbp)
	movw	$-1597, -10316(%rbp)
	movw	$4552, -10314(%rbp)
	movswl	-10328(%rbp), %eax
	movswl	-10326(%rbp), %edx
	movswl	-10324(%rbp), %ecx
	movswl	-10322(%rbp), %esi
	movswl	-10320(%rbp), %edi
	movswl	-10318(%rbp), %r8d
	movswl	-10316(%rbp), %r9d
	movswl	-10314(%rbp), %r10d
	movw	%r10w, -10312(%rbp)
	movw	%r9w, -10310(%rbp)
	movw	%r8w, -10308(%rbp)
	movw	%di, -10306(%rbp)
	movw	%si, -10304(%rbp)
	movw	%cx, -10302(%rbp)
	movw	%dx, -10300(%rbp)
	movw	%ax, -10298(%rbp)
	movzwl	-10298(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10300(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-10302(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10304(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-10306(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10308(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-10310(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-10312(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -9616(%rbp)
	movl	$512, -9892(%rbp)
	movl	-9892(%rbp), %eax
	movl	%eax, -9888(%rbp)
	movl	-9892(%rbp), %eax
	movl	%eax, -9884(%rbp)
	movl	-9892(%rbp), %eax
	movl	%eax, -9880(%rbp)
	movl	-9892(%rbp), %eax
	movl	%eax, -9876(%rbp)
	movl	-9888(%rbp), %eax
	movl	-9884(%rbp), %edx
	movd	%edx, %xmm1
	movd	%eax, %xmm5
	punpckldq	%xmm5, %xmm1
	movl	-9880(%rbp), %eax
	movl	-9876(%rbp), %edx
	movd	%edx, %xmm0
	movd	%eax, %xmm6
	punpckldq	%xmm6, %xmm0
	punpcklqdq	%xmm1, %xmm0
	nop
	movaps	%xmm0, -9600(%rbp)
	movl	$16842752, -9912(%rbp)
	movl	-9912(%rbp), %eax
	movl	%eax, -9908(%rbp)
	movl	-9912(%rbp), %eax
	movl	%eax, -9904(%rbp)
	movl	-9912(%rbp), %eax
	movl	%eax, -9900(%rbp)
	movl	-9912(%rbp), %eax
	movl	%eax, -9896(%rbp)
	movl	-9908(%rbp), %eax
	movl	-9904(%rbp), %edx
	movd	%edx, %xmm1
	movd	%eax, %xmm7
	punpckldq	%xmm7, %xmm1
	movl	-9900(%rbp), %eax
	movl	-9896(%rbp), %edx
	movd	%edx, %xmm0
	movd	%eax, %xmm5
	punpckldq	%xmm5, %xmm0
	punpcklqdq	%xmm1, %xmm0
	nop
	movaps	%xmm0, -9584(%rbp)
	movq	-10360(%rbp), %rax
	movq	%rax, -9752(%rbp)
	movq	-9752(%rbp), %rax
	movdqa	(%rax), %xmm0
	movaps	%xmm0, -9568(%rbp)
	movq	-10360(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -9760(%rbp)
	movq	-9760(%rbp), %rax
	movdqa	(%rax), %xmm0
	movaps	%xmm0, -9552(%rbp)
	movq	-10360(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -9768(%rbp)
	movq	-9768(%rbp), %rax
	movdqa	(%rax), %xmm0
	movaps	%xmm0, -9536(%rbp)
	movq	-10360(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -9776(%rbp)
	movq	-9776(%rbp), %rax
	movdqa	(%rax), %xmm0
	movaps	%xmm0, -9520(%rbp)
	movq	-10360(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -9784(%rbp)
	movq	-9784(%rbp), %rax
	movdqa	(%rax), %xmm0
	movaps	%xmm0, -9504(%rbp)
	movq	-10360(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -9792(%rbp)
	movq	-9792(%rbp), %rax
	movdqa	(%rax), %xmm0
	movaps	%xmm0, -9488(%rbp)
	movq	-10360(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -9800(%rbp)
	movq	-9800(%rbp), %rax
	movdqa	(%rax), %xmm0
	movaps	%xmm0, -9472(%rbp)
	movq	-10360(%rbp), %rax
	addq	$112, %rax
	movq	%rax, -9808(%rbp)
	movq	-9808(%rbp), %rax
	movdqa	(%rax), %xmm0
	movaps	%xmm0, -9456(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -48(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -32(%rbp)
	movdqa	-32(%rbp), %xmm1
	movdqa	-48(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9440(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movdqa	-64(%rbp), %xmm1
	movdqa	-80(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9424(%rbp)
	movdqa	-9440(%rbp), %xmm0
	movaps	%xmm0, -112(%rbp)
	movdqa	-9728(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movdqa	-96(%rbp), %xmm0
	movdqa	-112(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9408(%rbp)
	movdqa	-9424(%rbp), %xmm0
	movaps	%xmm0, -144(%rbp)
	movdqa	-9728(%rbp), %xmm0
	movaps	%xmm0, -128(%rbp)
	movdqa	-128(%rbp), %xmm0
	movdqa	-144(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9392(%rbp)
	movdqa	-9440(%rbp), %xmm0
	movaps	%xmm0, -176(%rbp)
	movdqa	-9712(%rbp), %xmm0
	movaps	%xmm0, -160(%rbp)
	movdqa	-160(%rbp), %xmm0
	movdqa	-176(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9376(%rbp)
	movdqa	-9424(%rbp), %xmm0
	movaps	%xmm0, -208(%rbp)
	movdqa	-9712(%rbp), %xmm0
	movaps	%xmm0, -192(%rbp)
	movdqa	-192(%rbp), %xmm0
	movdqa	-208(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9360(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -240(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -224(%rbp)
	movdqa	-240(%rbp), %xmm1
	movdqa	-224(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -9344(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -272(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -256(%rbp)
	movdqa	-272(%rbp), %xmm0
	movdqa	-256(%rbp), %xmm1
	psubw	%xmm1, %xmm0
	movaps	%xmm0, -9328(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -304(%rbp)
	movdqa	-9344(%rbp), %xmm0
	movaps	%xmm0, -288(%rbp)
	movdqa	-288(%rbp), %xmm1
	movdqa	-304(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -320(%rbp)
	movl	$4, -9916(%rbp)
	movdqa	-320(%rbp), %xmm1
	movd	-9916(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -9312(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -352(%rbp)
	movdqa	-9344(%rbp), %xmm0
	movaps	%xmm0, -336(%rbp)
	movdqa	-336(%rbp), %xmm1
	movdqa	-352(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -368(%rbp)
	movl	$4, -9920(%rbp)
	movdqa	-368(%rbp), %xmm1
	movd	-9920(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -9296(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -400(%rbp)
	movdqa	-9328(%rbp), %xmm0
	movaps	%xmm0, -384(%rbp)
	movdqa	-384(%rbp), %xmm1
	movdqa	-400(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -416(%rbp)
	movl	$4, -9924(%rbp)
	movdqa	-416(%rbp), %xmm1
	movd	-9924(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -9280(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -448(%rbp)
	movdqa	-9328(%rbp), %xmm0
	movaps	%xmm0, -432(%rbp)
	movdqa	-432(%rbp), %xmm1
	movdqa	-448(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -464(%rbp)
	movl	$4, -9928(%rbp)
	movdqa	-464(%rbp), %xmm1
	movd	-9928(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -9264(%rbp)
	movdqa	-9312(%rbp), %xmm0
	movaps	%xmm0, -496(%rbp)
	movdqa	-9376(%rbp), %xmm0
	movaps	%xmm0, -480(%rbp)
	movdqa	-496(%rbp), %xmm1
	movdqa	-480(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -9248(%rbp)
	movdqa	-9296(%rbp), %xmm0
	movaps	%xmm0, -528(%rbp)
	movdqa	-9360(%rbp), %xmm0
	movaps	%xmm0, -512(%rbp)
	movdqa	-528(%rbp), %xmm1
	movdqa	-512(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -9232(%rbp)
	movdqa	-9312(%rbp), %xmm0
	movaps	%xmm0, -560(%rbp)
	movdqa	-9376(%rbp), %xmm0
	movaps	%xmm0, -544(%rbp)
	movdqa	-560(%rbp), %xmm0
	movdqa	-544(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -9216(%rbp)
	movdqa	-9296(%rbp), %xmm0
	movaps	%xmm0, -592(%rbp)
	movdqa	-9360(%rbp), %xmm0
	movaps	%xmm0, -576(%rbp)
	movdqa	-592(%rbp), %xmm0
	movdqa	-576(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -9200(%rbp)
	movdqa	-9280(%rbp), %xmm0
	movaps	%xmm0, -624(%rbp)
	movdqa	-9408(%rbp), %xmm0
	movaps	%xmm0, -608(%rbp)
	movdqa	-624(%rbp), %xmm1
	movdqa	-608(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -9184(%rbp)
	movdqa	-9264(%rbp), %xmm0
	movaps	%xmm0, -656(%rbp)
	movdqa	-9392(%rbp), %xmm0
	movaps	%xmm0, -640(%rbp)
	movdqa	-656(%rbp), %xmm1
	movdqa	-640(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -9168(%rbp)
	movdqa	-9280(%rbp), %xmm0
	movaps	%xmm0, -688(%rbp)
	movdqa	-9408(%rbp), %xmm0
	movaps	%xmm0, -672(%rbp)
	movdqa	-688(%rbp), %xmm0
	movdqa	-672(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -9152(%rbp)
	movdqa	-9264(%rbp), %xmm0
	movaps	%xmm0, -720(%rbp)
	movdqa	-9392(%rbp), %xmm0
	movaps	%xmm0, -704(%rbp)
	movdqa	-720(%rbp), %xmm0
	movdqa	-704(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -9136(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -752(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -736(%rbp)
	movdqa	-736(%rbp), %xmm1
	movdqa	-752(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9120(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -784(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -768(%rbp)
	movdqa	-768(%rbp), %xmm1
	movdqa	-784(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9104(%rbp)
	movdqa	-9120(%rbp), %xmm0
	movaps	%xmm0, -816(%rbp)
	movdqa	-9664(%rbp), %xmm0
	movaps	%xmm0, -800(%rbp)
	movdqa	-800(%rbp), %xmm0
	movdqa	-816(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9088(%rbp)
	movdqa	-9104(%rbp), %xmm0
	movaps	%xmm0, -848(%rbp)
	movdqa	-9664(%rbp), %xmm0
	movaps	%xmm0, -832(%rbp)
	movdqa	-832(%rbp), %xmm0
	movdqa	-848(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9072(%rbp)
	movdqa	-9120(%rbp), %xmm0
	movaps	%xmm0, -880(%rbp)
	movdqa	-9648(%rbp), %xmm0
	movaps	%xmm0, -864(%rbp)
	movdqa	-864(%rbp), %xmm0
	movdqa	-880(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9056(%rbp)
	movdqa	-9104(%rbp), %xmm0
	movaps	%xmm0, -912(%rbp)
	movdqa	-9648(%rbp), %xmm0
	movaps	%xmm0, -896(%rbp)
	movdqa	-896(%rbp), %xmm0
	movdqa	-912(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -9040(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -944(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -928(%rbp)
	movdqa	-928(%rbp), %xmm1
	movdqa	-944(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9024(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -976(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -960(%rbp)
	movdqa	-960(%rbp), %xmm1
	movdqa	-976(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9008(%rbp)
	movdqa	-9024(%rbp), %xmm0
	movaps	%xmm0, -1008(%rbp)
	movdqa	-9632(%rbp), %xmm0
	movaps	%xmm0, -992(%rbp)
	movdqa	-992(%rbp), %xmm0
	movdqa	-1008(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8992(%rbp)
	movdqa	-9008(%rbp), %xmm0
	movaps	%xmm0, -1040(%rbp)
	movdqa	-9632(%rbp), %xmm0
	movaps	%xmm0, -1024(%rbp)
	movdqa	-1024(%rbp), %xmm0
	movdqa	-1040(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8976(%rbp)
	movdqa	-9024(%rbp), %xmm0
	movaps	%xmm0, -1072(%rbp)
	movdqa	-9616(%rbp), %xmm0
	movaps	%xmm0, -1056(%rbp)
	movdqa	-1056(%rbp), %xmm0
	movdqa	-1072(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8960(%rbp)
	movdqa	-9008(%rbp), %xmm0
	movaps	%xmm0, -1104(%rbp)
	movdqa	-9616(%rbp), %xmm0
	movaps	%xmm0, -1088(%rbp)
	movdqa	-1088(%rbp), %xmm0
	movdqa	-1104(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8944(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -1136(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -1120(%rbp)
	movdqa	-1136(%rbp), %xmm1
	movdqa	-1120(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -8928(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -1168(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -1152(%rbp)
	movdqa	-1168(%rbp), %xmm1
	movdqa	-1152(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -8912(%rbp)
	movdqa	-8928(%rbp), %xmm0
	movaps	%xmm0, -1200(%rbp)
	movdqa	-8912(%rbp), %xmm0
	movaps	%xmm0, -1184(%rbp)
	movdqa	-1184(%rbp), %xmm1
	movdqa	-1200(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -8896(%rbp)
	movdqa	-8928(%rbp), %xmm0
	movaps	%xmm0, -1232(%rbp)
	movdqa	-8912(%rbp), %xmm0
	movaps	%xmm0, -1216(%rbp)
	movdqa	-1216(%rbp), %xmm1
	movdqa	-1232(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -8880(%rbp)
	movdqa	-8896(%rbp), %xmm0
	movaps	%xmm0, -1264(%rbp)
	movdqa	-9696(%rbp), %xmm0
	movaps	%xmm0, -1248(%rbp)
	movdqa	-1248(%rbp), %xmm0
	movdqa	-1264(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8864(%rbp)
	movdqa	-8880(%rbp), %xmm0
	movaps	%xmm0, -1296(%rbp)
	movdqa	-9696(%rbp), %xmm0
	movaps	%xmm0, -1280(%rbp)
	movdqa	-1280(%rbp), %xmm0
	movdqa	-1296(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8848(%rbp)
	movdqa	-8896(%rbp), %xmm0
	movaps	%xmm0, -1328(%rbp)
	movdqa	-9680(%rbp), %xmm0
	movaps	%xmm0, -1312(%rbp)
	movdqa	-1312(%rbp), %xmm0
	movdqa	-1328(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8832(%rbp)
	movdqa	-8880(%rbp), %xmm0
	movaps	%xmm0, -1360(%rbp)
	movdqa	-9680(%rbp), %xmm0
	movaps	%xmm0, -1344(%rbp)
	movdqa	-1344(%rbp), %xmm0
	movdqa	-1360(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8816(%rbp)
	movdqa	-9088(%rbp), %xmm0
	movaps	%xmm0, -1392(%rbp)
	movdqa	-8864(%rbp), %xmm0
	movaps	%xmm0, -1376(%rbp)
	movdqa	-1392(%rbp), %xmm1
	movdqa	-1376(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8800(%rbp)
	movdqa	-9072(%rbp), %xmm0
	movaps	%xmm0, -1424(%rbp)
	movdqa	-8848(%rbp), %xmm0
	movaps	%xmm0, -1408(%rbp)
	movdqa	-1424(%rbp), %xmm1
	movdqa	-1408(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8784(%rbp)
	movdqa	-8992(%rbp), %xmm0
	movaps	%xmm0, -1456(%rbp)
	movdqa	-8832(%rbp), %xmm0
	movaps	%xmm0, -1440(%rbp)
	movdqa	-1456(%rbp), %xmm1
	movdqa	-1440(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8768(%rbp)
	movdqa	-8976(%rbp), %xmm0
	movaps	%xmm0, -1488(%rbp)
	movdqa	-8816(%rbp), %xmm0
	movaps	%xmm0, -1472(%rbp)
	movdqa	-1488(%rbp), %xmm1
	movdqa	-1472(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8752(%rbp)
	movdqa	-9056(%rbp), %xmm0
	movaps	%xmm0, -1520(%rbp)
	movdqa	-8832(%rbp), %xmm0
	movaps	%xmm0, -1504(%rbp)
	movdqa	-1520(%rbp), %xmm1
	movdqa	-1504(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8736(%rbp)
	movdqa	-9040(%rbp), %xmm0
	movaps	%xmm0, -1552(%rbp)
	movdqa	-8816(%rbp), %xmm0
	movaps	%xmm0, -1536(%rbp)
	movdqa	-1552(%rbp), %xmm1
	movdqa	-1536(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8720(%rbp)
	movdqa	-8960(%rbp), %xmm0
	movaps	%xmm0, -1584(%rbp)
	movdqa	-8864(%rbp), %xmm0
	movaps	%xmm0, -1568(%rbp)
	movdqa	-1584(%rbp), %xmm1
	movdqa	-1568(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8704(%rbp)
	movdqa	-8944(%rbp), %xmm0
	movaps	%xmm0, -1616(%rbp)
	movdqa	-8848(%rbp), %xmm0
	movaps	%xmm0, -1600(%rbp)
	movdqa	-1616(%rbp), %xmm1
	movdqa	-1600(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8688(%rbp)
	movdqa	-9248(%rbp), %xmm0
	movaps	%xmm0, -1648(%rbp)
	movdqa	-9600(%rbp), %xmm0
	movaps	%xmm0, -1632(%rbp)
	movdqa	-1648(%rbp), %xmm1
	movdqa	-1632(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8672(%rbp)
	movdqa	-9232(%rbp), %xmm0
	movaps	%xmm0, -1680(%rbp)
	movdqa	-9600(%rbp), %xmm0
	movaps	%xmm0, -1664(%rbp)
	movdqa	-1680(%rbp), %xmm1
	movdqa	-1664(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8656(%rbp)
	movdqa	-8672(%rbp), %xmm0
	movaps	%xmm0, -1712(%rbp)
	movdqa	-8704(%rbp), %xmm0
	movaps	%xmm0, -1696(%rbp)
	movdqa	-1712(%rbp), %xmm1
	movdqa	-1696(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8640(%rbp)
	movdqa	-8656(%rbp), %xmm0
	movaps	%xmm0, -1744(%rbp)
	movdqa	-8688(%rbp), %xmm0
	movaps	%xmm0, -1728(%rbp)
	movdqa	-1744(%rbp), %xmm1
	movdqa	-1728(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8624(%rbp)
	movdqa	-8672(%rbp), %xmm0
	movaps	%xmm0, -1776(%rbp)
	movdqa	-8704(%rbp), %xmm0
	movaps	%xmm0, -1760(%rbp)
	movdqa	-1776(%rbp), %xmm0
	movdqa	-1760(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -8608(%rbp)
	movdqa	-8656(%rbp), %xmm0
	movaps	%xmm0, -1808(%rbp)
	movdqa	-8688(%rbp), %xmm0
	movaps	%xmm0, -1792(%rbp)
	movdqa	-1808(%rbp), %xmm0
	movdqa	-1792(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -8592(%rbp)
	movdqa	-8624(%rbp), %xmm0
	movaps	%xmm0, -1824(%rbp)
	movl	$10, -9932(%rbp)
	movdqa	-1824(%rbp), %xmm1
	movd	-9932(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-8640(%rbp), %xmm0
	movaps	%xmm0, -1840(%rbp)
	movl	$10, -9936(%rbp)
	movdqa	-1840(%rbp), %xmm1
	movd	-9936(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -1872(%rbp)
	movaps	%xmm2, -1856(%rbp)
	movdqa	-1856(%rbp), %xmm1
	movdqa	-1872(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9568(%rbp)
	movdqa	-8592(%rbp), %xmm0
	movaps	%xmm0, -1888(%rbp)
	movl	$10, -9940(%rbp)
	movdqa	-1888(%rbp), %xmm1
	movd	-9940(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-8608(%rbp), %xmm0
	movaps	%xmm0, -1904(%rbp)
	movl	$10, -9944(%rbp)
	movdqa	-1904(%rbp), %xmm1
	movd	-9944(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -1936(%rbp)
	movaps	%xmm2, -1920(%rbp)
	movdqa	-1920(%rbp), %xmm1
	movdqa	-1936(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9456(%rbp)
	movdqa	-9184(%rbp), %xmm0
	movaps	%xmm0, -1968(%rbp)
	movdqa	-9600(%rbp), %xmm0
	movaps	%xmm0, -1952(%rbp)
	movdqa	-1968(%rbp), %xmm1
	movdqa	-1952(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8576(%rbp)
	movdqa	-9168(%rbp), %xmm0
	movaps	%xmm0, -2000(%rbp)
	movdqa	-9600(%rbp), %xmm0
	movaps	%xmm0, -1984(%rbp)
	movdqa	-2000(%rbp), %xmm1
	movdqa	-1984(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8560(%rbp)
	movdqa	-8576(%rbp), %xmm0
	movaps	%xmm0, -2032(%rbp)
	movdqa	-8736(%rbp), %xmm0
	movaps	%xmm0, -2016(%rbp)
	movdqa	-2032(%rbp), %xmm1
	movdqa	-2016(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8544(%rbp)
	movdqa	-8560(%rbp), %xmm0
	movaps	%xmm0, -2064(%rbp)
	movdqa	-8720(%rbp), %xmm0
	movaps	%xmm0, -2048(%rbp)
	movdqa	-2064(%rbp), %xmm1
	movdqa	-2048(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8528(%rbp)
	movdqa	-8576(%rbp), %xmm0
	movaps	%xmm0, -2096(%rbp)
	movdqa	-8736(%rbp), %xmm0
	movaps	%xmm0, -2080(%rbp)
	movdqa	-2096(%rbp), %xmm0
	movdqa	-2080(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -8512(%rbp)
	movdqa	-8560(%rbp), %xmm0
	movaps	%xmm0, -2128(%rbp)
	movdqa	-8720(%rbp), %xmm0
	movaps	%xmm0, -2112(%rbp)
	movdqa	-2128(%rbp), %xmm0
	movdqa	-2112(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -8496(%rbp)
	movdqa	-8528(%rbp), %xmm0
	movaps	%xmm0, -2144(%rbp)
	movl	$10, -9948(%rbp)
	movdqa	-2144(%rbp), %xmm1
	movd	-9948(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-8544(%rbp), %xmm0
	movaps	%xmm0, -2160(%rbp)
	movl	$10, -9952(%rbp)
	movdqa	-2160(%rbp), %xmm1
	movd	-9952(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -2192(%rbp)
	movaps	%xmm2, -2176(%rbp)
	movdqa	-2176(%rbp), %xmm1
	movdqa	-2192(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9552(%rbp)
	movdqa	-8496(%rbp), %xmm0
	movaps	%xmm0, -2208(%rbp)
	movl	$10, -9956(%rbp)
	movdqa	-2208(%rbp), %xmm1
	movd	-9956(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-8512(%rbp), %xmm0
	movaps	%xmm0, -2224(%rbp)
	movl	$10, -9960(%rbp)
	movdqa	-2224(%rbp), %xmm1
	movd	-9960(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -2256(%rbp)
	movaps	%xmm2, -2240(%rbp)
	movdqa	-2240(%rbp), %xmm1
	movdqa	-2256(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9472(%rbp)
	movdqa	-9152(%rbp), %xmm0
	movaps	%xmm0, -2288(%rbp)
	movdqa	-9600(%rbp), %xmm0
	movaps	%xmm0, -2272(%rbp)
	movdqa	-2288(%rbp), %xmm1
	movdqa	-2272(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8480(%rbp)
	movdqa	-9136(%rbp), %xmm0
	movaps	%xmm0, -2320(%rbp)
	movdqa	-9600(%rbp), %xmm0
	movaps	%xmm0, -2304(%rbp)
	movdqa	-2320(%rbp), %xmm1
	movdqa	-2304(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8464(%rbp)
	movdqa	-8480(%rbp), %xmm0
	movaps	%xmm0, -2352(%rbp)
	movdqa	-8768(%rbp), %xmm0
	movaps	%xmm0, -2336(%rbp)
	movdqa	-2352(%rbp), %xmm1
	movdqa	-2336(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8448(%rbp)
	movdqa	-8464(%rbp), %xmm0
	movaps	%xmm0, -2384(%rbp)
	movdqa	-8752(%rbp), %xmm0
	movaps	%xmm0, -2368(%rbp)
	movdqa	-2384(%rbp), %xmm1
	movdqa	-2368(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8432(%rbp)
	movdqa	-8480(%rbp), %xmm0
	movaps	%xmm0, -2416(%rbp)
	movdqa	-8768(%rbp), %xmm0
	movaps	%xmm0, -2400(%rbp)
	movdqa	-2416(%rbp), %xmm0
	movdqa	-2400(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -8416(%rbp)
	movdqa	-8464(%rbp), %xmm0
	movaps	%xmm0, -2448(%rbp)
	movdqa	-8752(%rbp), %xmm0
	movaps	%xmm0, -2432(%rbp)
	movdqa	-2448(%rbp), %xmm0
	movdqa	-2432(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -8400(%rbp)
	movdqa	-8432(%rbp), %xmm0
	movaps	%xmm0, -2464(%rbp)
	movl	$10, -9964(%rbp)
	movdqa	-2464(%rbp), %xmm1
	movd	-9964(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-8448(%rbp), %xmm0
	movaps	%xmm0, -2480(%rbp)
	movl	$10, -9968(%rbp)
	movdqa	-2480(%rbp), %xmm1
	movd	-9968(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -2512(%rbp)
	movaps	%xmm2, -2496(%rbp)
	movdqa	-2496(%rbp), %xmm1
	movdqa	-2512(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9536(%rbp)
	movdqa	-8400(%rbp), %xmm0
	movaps	%xmm0, -2528(%rbp)
	movl	$10, -9972(%rbp)
	movdqa	-2528(%rbp), %xmm1
	movd	-9972(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-8416(%rbp), %xmm0
	movaps	%xmm0, -2544(%rbp)
	movl	$10, -9976(%rbp)
	movdqa	-2544(%rbp), %xmm1
	movd	-9976(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -2576(%rbp)
	movaps	%xmm2, -2560(%rbp)
	movdqa	-2560(%rbp), %xmm1
	movdqa	-2576(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9488(%rbp)
	movdqa	-9216(%rbp), %xmm0
	movaps	%xmm0, -2608(%rbp)
	movdqa	-9600(%rbp), %xmm0
	movaps	%xmm0, -2592(%rbp)
	movdqa	-2608(%rbp), %xmm1
	movdqa	-2592(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8384(%rbp)
	movdqa	-9200(%rbp), %xmm0
	movaps	%xmm0, -2640(%rbp)
	movdqa	-9600(%rbp), %xmm0
	movaps	%xmm0, -2624(%rbp)
	movdqa	-2640(%rbp), %xmm1
	movdqa	-2624(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8368(%rbp)
	movdqa	-8384(%rbp), %xmm0
	movaps	%xmm0, -2672(%rbp)
	movdqa	-8800(%rbp), %xmm0
	movaps	%xmm0, -2656(%rbp)
	movdqa	-2672(%rbp), %xmm1
	movdqa	-2656(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8352(%rbp)
	movdqa	-8368(%rbp), %xmm0
	movaps	%xmm0, -2704(%rbp)
	movdqa	-8784(%rbp), %xmm0
	movaps	%xmm0, -2688(%rbp)
	movdqa	-2704(%rbp), %xmm1
	movdqa	-2688(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8336(%rbp)
	movdqa	-8384(%rbp), %xmm0
	movaps	%xmm0, -2736(%rbp)
	movdqa	-8800(%rbp), %xmm0
	movaps	%xmm0, -2720(%rbp)
	movdqa	-2736(%rbp), %xmm0
	movdqa	-2720(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -8320(%rbp)
	movdqa	-8368(%rbp), %xmm0
	movaps	%xmm0, -2768(%rbp)
	movdqa	-8784(%rbp), %xmm0
	movaps	%xmm0, -2752(%rbp)
	movdqa	-2768(%rbp), %xmm0
	movdqa	-2752(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -8304(%rbp)
	movdqa	-8336(%rbp), %xmm0
	movaps	%xmm0, -2784(%rbp)
	movl	$10, -9980(%rbp)
	movdqa	-2784(%rbp), %xmm1
	movd	-9980(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-8352(%rbp), %xmm0
	movaps	%xmm0, -2800(%rbp)
	movl	$10, -9984(%rbp)
	movdqa	-2800(%rbp), %xmm1
	movd	-9984(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -2832(%rbp)
	movaps	%xmm2, -2816(%rbp)
	movdqa	-2816(%rbp), %xmm1
	movdqa	-2832(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9520(%rbp)
	movdqa	-8304(%rbp), %xmm0
	movaps	%xmm0, -2848(%rbp)
	movl	$10, -9988(%rbp)
	movdqa	-2848(%rbp), %xmm1
	movd	-9988(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-8320(%rbp), %xmm0
	movaps	%xmm0, -2864(%rbp)
	movl	$10, -9992(%rbp)
	movdqa	-2864(%rbp), %xmm1
	movd	-9992(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -2896(%rbp)
	movaps	%xmm2, -2880(%rbp)
	movdqa	-2880(%rbp), %xmm1
	movdqa	-2896(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9504(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -2928(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -2912(%rbp)
	movdqa	-2912(%rbp), %xmm1
	movdqa	-2928(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9568(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -2960(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -2944(%rbp)
	movdqa	-2944(%rbp), %xmm1
	movdqa	-2960(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9504(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -2992(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -2976(%rbp)
	movdqa	-2976(%rbp), %xmm1
	movdqa	-2992(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9552(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3024(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -3008(%rbp)
	movdqa	-3008(%rbp), %xmm1
	movdqa	-3024(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9488(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -3056(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -3040(%rbp)
	movdqa	-3040(%rbp), %xmm1
	movdqa	-3056(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9536(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3088(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -3072(%rbp)
	movdqa	-3072(%rbp), %xmm1
	movdqa	-3088(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9472(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -3120(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -3104(%rbp)
	movdqa	-3104(%rbp), %xmm1
	movdqa	-3120(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9520(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3152(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -3136(%rbp)
	movdqa	-3136(%rbp), %xmm1
	movdqa	-3152(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9456(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -3184(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -3168(%rbp)
	movdqa	-3168(%rbp), %xmm1
	movdqa	-3184(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9568(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3216(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -3200(%rbp)
	movdqa	-3200(%rbp), %xmm1
	movdqa	-3216(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9536(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -3248(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -3232(%rbp)
	movdqa	-3232(%rbp), %xmm1
	movdqa	-3248(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9552(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3280(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -3264(%rbp)
	movdqa	-3264(%rbp), %xmm1
	movdqa	-3280(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9520(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -3312(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -3296(%rbp)
	movdqa	-3296(%rbp), %xmm1
	movdqa	-3312(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9504(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3344(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -3328(%rbp)
	movdqa	-3328(%rbp), %xmm1
	movdqa	-3344(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9472(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -3376(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -3360(%rbp)
	movdqa	-3360(%rbp), %xmm1
	movdqa	-3376(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9488(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3408(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -3392(%rbp)
	movdqa	-3392(%rbp), %xmm1
	movdqa	-3408(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9456(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -3440(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -3424(%rbp)
	movdqa	-3424(%rbp), %xmm1
	movdqa	-3440(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9568(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3472(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -3456(%rbp)
	movdqa	-3456(%rbp), %xmm1
	movdqa	-3472(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9552(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -3504(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -3488(%rbp)
	movdqa	-3488(%rbp), %xmm1
	movdqa	-3504(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9536(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3536(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -3520(%rbp)
	movdqa	-3520(%rbp), %xmm1
	movdqa	-3536(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9520(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -3568(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -3552(%rbp)
	movdqa	-3552(%rbp), %xmm1
	movdqa	-3568(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9504(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3600(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -3584(%rbp)
	movdqa	-3584(%rbp), %xmm1
	movdqa	-3600(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9488(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -3632(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -3616(%rbp)
	movdqa	-3616(%rbp), %xmm1
	movdqa	-3632(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -9472(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -3664(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -3648(%rbp)
	movdqa	-3648(%rbp), %xmm1
	movdqa	-3664(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -9456(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -3696(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -3680(%rbp)
	movdqa	-3680(%rbp), %xmm1
	movdqa	-3696(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -8272(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -3728(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -3712(%rbp)
	movdqa	-3712(%rbp), %xmm1
	movdqa	-3728(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -8256(%rbp)
	movdqa	-8272(%rbp), %xmm0
	movaps	%xmm0, -3760(%rbp)
	movdqa	-9728(%rbp), %xmm0
	movaps	%xmm0, -3744(%rbp)
	movdqa	-3744(%rbp), %xmm0
	movdqa	-3760(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8240(%rbp)
	movdqa	-8256(%rbp), %xmm0
	movaps	%xmm0, -3792(%rbp)
	movdqa	-9728(%rbp), %xmm0
	movaps	%xmm0, -3776(%rbp)
	movdqa	-3776(%rbp), %xmm0
	movdqa	-3792(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8224(%rbp)
	movdqa	-8272(%rbp), %xmm0
	movaps	%xmm0, -3824(%rbp)
	movdqa	-9712(%rbp), %xmm0
	movaps	%xmm0, -3808(%rbp)
	movdqa	-3808(%rbp), %xmm0
	movdqa	-3824(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8208(%rbp)
	movdqa	-8256(%rbp), %xmm0
	movaps	%xmm0, -3856(%rbp)
	movdqa	-9712(%rbp), %xmm0
	movaps	%xmm0, -3840(%rbp)
	movdqa	-3840(%rbp), %xmm0
	movdqa	-3856(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -8192(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -3888(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -3872(%rbp)
	movdqa	-3888(%rbp), %xmm1
	movdqa	-3872(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -8176(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -3920(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -3904(%rbp)
	movdqa	-3920(%rbp), %xmm0
	movdqa	-3904(%rbp), %xmm1
	psubw	%xmm1, %xmm0
	movaps	%xmm0, -8160(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -3952(%rbp)
	movdqa	-8176(%rbp), %xmm0
	movaps	%xmm0, -3936(%rbp)
	movdqa	-3936(%rbp), %xmm1
	movdqa	-3952(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -3968(%rbp)
	movl	$4, -9996(%rbp)
	movdqa	-3968(%rbp), %xmm1
	movd	-9996(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -8144(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -4000(%rbp)
	movdqa	-8176(%rbp), %xmm0
	movaps	%xmm0, -3984(%rbp)
	movdqa	-3984(%rbp), %xmm1
	movdqa	-4000(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -4016(%rbp)
	movl	$4, -10000(%rbp)
	movdqa	-4016(%rbp), %xmm1
	movd	-10000(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -8128(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -4048(%rbp)
	movdqa	-8160(%rbp), %xmm0
	movaps	%xmm0, -4032(%rbp)
	movdqa	-4032(%rbp), %xmm1
	movdqa	-4048(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -4064(%rbp)
	movl	$4, -10004(%rbp)
	movdqa	-4064(%rbp), %xmm1
	movd	-10004(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -8112(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -4096(%rbp)
	movdqa	-8160(%rbp), %xmm0
	movaps	%xmm0, -4080(%rbp)
	movdqa	-4080(%rbp), %xmm1
	movdqa	-4096(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -4112(%rbp)
	movl	$4, -10008(%rbp)
	movdqa	-4112(%rbp), %xmm1
	movd	-10008(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -8096(%rbp)
	movdqa	-8144(%rbp), %xmm0
	movaps	%xmm0, -4144(%rbp)
	movdqa	-8208(%rbp), %xmm0
	movaps	%xmm0, -4128(%rbp)
	movdqa	-4144(%rbp), %xmm1
	movdqa	-4128(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8080(%rbp)
	movdqa	-8128(%rbp), %xmm0
	movaps	%xmm0, -4176(%rbp)
	movdqa	-8192(%rbp), %xmm0
	movaps	%xmm0, -4160(%rbp)
	movdqa	-4176(%rbp), %xmm1
	movdqa	-4160(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8064(%rbp)
	movdqa	-8144(%rbp), %xmm0
	movaps	%xmm0, -4208(%rbp)
	movdqa	-8208(%rbp), %xmm0
	movaps	%xmm0, -4192(%rbp)
	movdqa	-4208(%rbp), %xmm0
	movdqa	-4192(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -8048(%rbp)
	movdqa	-8128(%rbp), %xmm0
	movaps	%xmm0, -4240(%rbp)
	movdqa	-8192(%rbp), %xmm0
	movaps	%xmm0, -4224(%rbp)
	movdqa	-4240(%rbp), %xmm0
	movdqa	-4224(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -8032(%rbp)
	movdqa	-8112(%rbp), %xmm0
	movaps	%xmm0, -4272(%rbp)
	movdqa	-8240(%rbp), %xmm0
	movaps	%xmm0, -4256(%rbp)
	movdqa	-4272(%rbp), %xmm1
	movdqa	-4256(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8016(%rbp)
	movdqa	-8096(%rbp), %xmm0
	movaps	%xmm0, -4304(%rbp)
	movdqa	-8224(%rbp), %xmm0
	movaps	%xmm0, -4288(%rbp)
	movdqa	-4304(%rbp), %xmm1
	movdqa	-4288(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -8000(%rbp)
	movdqa	-8112(%rbp), %xmm0
	movaps	%xmm0, -4336(%rbp)
	movdqa	-8240(%rbp), %xmm0
	movaps	%xmm0, -4320(%rbp)
	movdqa	-4336(%rbp), %xmm0
	movdqa	-4320(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -7984(%rbp)
	movdqa	-8096(%rbp), %xmm0
	movaps	%xmm0, -4368(%rbp)
	movdqa	-8224(%rbp), %xmm0
	movaps	%xmm0, -4352(%rbp)
	movdqa	-4368(%rbp), %xmm0
	movdqa	-4352(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -7968(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -4400(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -4384(%rbp)
	movdqa	-4384(%rbp), %xmm1
	movdqa	-4400(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -7952(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -4432(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -4416(%rbp)
	movdqa	-4416(%rbp), %xmm1
	movdqa	-4432(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -7936(%rbp)
	movdqa	-7952(%rbp), %xmm0
	movaps	%xmm0, -4464(%rbp)
	movdqa	-9664(%rbp), %xmm0
	movaps	%xmm0, -4448(%rbp)
	movdqa	-4448(%rbp), %xmm0
	movdqa	-4464(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7920(%rbp)
	movdqa	-7936(%rbp), %xmm0
	movaps	%xmm0, -4496(%rbp)
	movdqa	-9664(%rbp), %xmm0
	movaps	%xmm0, -4480(%rbp)
	movdqa	-4480(%rbp), %xmm0
	movdqa	-4496(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7904(%rbp)
	movdqa	-7952(%rbp), %xmm0
	movaps	%xmm0, -4528(%rbp)
	movdqa	-9648(%rbp), %xmm0
	movaps	%xmm0, -4512(%rbp)
	movdqa	-4512(%rbp), %xmm0
	movdqa	-4528(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7888(%rbp)
	movdqa	-7936(%rbp), %xmm0
	movaps	%xmm0, -4560(%rbp)
	movdqa	-9648(%rbp), %xmm0
	movaps	%xmm0, -4544(%rbp)
	movdqa	-4544(%rbp), %xmm0
	movdqa	-4560(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7872(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -4592(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -4576(%rbp)
	movdqa	-4576(%rbp), %xmm1
	movdqa	-4592(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -7856(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -4624(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -4608(%rbp)
	movdqa	-4608(%rbp), %xmm1
	movdqa	-4624(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -7840(%rbp)
	movdqa	-7856(%rbp), %xmm0
	movaps	%xmm0, -4656(%rbp)
	movdqa	-9632(%rbp), %xmm0
	movaps	%xmm0, -4640(%rbp)
	movdqa	-4640(%rbp), %xmm0
	movdqa	-4656(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7824(%rbp)
	movdqa	-7840(%rbp), %xmm0
	movaps	%xmm0, -4688(%rbp)
	movdqa	-9632(%rbp), %xmm0
	movaps	%xmm0, -4672(%rbp)
	movdqa	-4672(%rbp), %xmm0
	movdqa	-4688(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7808(%rbp)
	movdqa	-7856(%rbp), %xmm0
	movaps	%xmm0, -4720(%rbp)
	movdqa	-9616(%rbp), %xmm0
	movaps	%xmm0, -4704(%rbp)
	movdqa	-4704(%rbp), %xmm0
	movdqa	-4720(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7792(%rbp)
	movdqa	-7840(%rbp), %xmm0
	movaps	%xmm0, -4752(%rbp)
	movdqa	-9616(%rbp), %xmm0
	movaps	%xmm0, -4736(%rbp)
	movdqa	-4736(%rbp), %xmm0
	movdqa	-4752(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7776(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -4784(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -4768(%rbp)
	movdqa	-4784(%rbp), %xmm1
	movdqa	-4768(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -7760(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -4816(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -4800(%rbp)
	movdqa	-4816(%rbp), %xmm1
	movdqa	-4800(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -7744(%rbp)
	movdqa	-7760(%rbp), %xmm0
	movaps	%xmm0, -4848(%rbp)
	movdqa	-7744(%rbp), %xmm0
	movaps	%xmm0, -4832(%rbp)
	movdqa	-4832(%rbp), %xmm1
	movdqa	-4848(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -7728(%rbp)
	movdqa	-7760(%rbp), %xmm0
	movaps	%xmm0, -4880(%rbp)
	movdqa	-7744(%rbp), %xmm0
	movaps	%xmm0, -4864(%rbp)
	movdqa	-4864(%rbp), %xmm1
	movdqa	-4880(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -7712(%rbp)
	movdqa	-7728(%rbp), %xmm0
	movaps	%xmm0, -4912(%rbp)
	movdqa	-9696(%rbp), %xmm0
	movaps	%xmm0, -4896(%rbp)
	movdqa	-4896(%rbp), %xmm0
	movdqa	-4912(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7696(%rbp)
	movdqa	-7712(%rbp), %xmm0
	movaps	%xmm0, -4944(%rbp)
	movdqa	-9696(%rbp), %xmm0
	movaps	%xmm0, -4928(%rbp)
	movdqa	-4928(%rbp), %xmm0
	movdqa	-4944(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7680(%rbp)
	movdqa	-7728(%rbp), %xmm0
	movaps	%xmm0, -4976(%rbp)
	movdqa	-9680(%rbp), %xmm0
	movaps	%xmm0, -4960(%rbp)
	movdqa	-4960(%rbp), %xmm0
	movdqa	-4976(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7664(%rbp)
	movdqa	-7712(%rbp), %xmm0
	movaps	%xmm0, -5008(%rbp)
	movdqa	-9680(%rbp), %xmm0
	movaps	%xmm0, -4992(%rbp)
	movdqa	-4992(%rbp), %xmm0
	movdqa	-5008(%rbp), %xmm1
	pmaddwd	%xmm1, %xmm0
	movaps	%xmm0, -7648(%rbp)
	movdqa	-7920(%rbp), %xmm0
	movaps	%xmm0, -5040(%rbp)
	movdqa	-7696(%rbp), %xmm0
	movaps	%xmm0, -5024(%rbp)
	movdqa	-5040(%rbp), %xmm1
	movdqa	-5024(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7632(%rbp)
	movdqa	-7904(%rbp), %xmm0
	movaps	%xmm0, -5072(%rbp)
	movdqa	-7680(%rbp), %xmm0
	movaps	%xmm0, -5056(%rbp)
	movdqa	-5072(%rbp), %xmm1
	movdqa	-5056(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7616(%rbp)
	movdqa	-7824(%rbp), %xmm0
	movaps	%xmm0, -5104(%rbp)
	movdqa	-7664(%rbp), %xmm0
	movaps	%xmm0, -5088(%rbp)
	movdqa	-5104(%rbp), %xmm1
	movdqa	-5088(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7600(%rbp)
	movdqa	-7808(%rbp), %xmm0
	movaps	%xmm0, -5136(%rbp)
	movdqa	-7648(%rbp), %xmm0
	movaps	%xmm0, -5120(%rbp)
	movdqa	-5136(%rbp), %xmm1
	movdqa	-5120(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7584(%rbp)
	movdqa	-7888(%rbp), %xmm0
	movaps	%xmm0, -5168(%rbp)
	movdqa	-7664(%rbp), %xmm0
	movaps	%xmm0, -5152(%rbp)
	movdqa	-5168(%rbp), %xmm1
	movdqa	-5152(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7568(%rbp)
	movdqa	-7872(%rbp), %xmm0
	movaps	%xmm0, -5200(%rbp)
	movdqa	-7648(%rbp), %xmm0
	movaps	%xmm0, -5184(%rbp)
	movdqa	-5200(%rbp), %xmm1
	movdqa	-5184(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7552(%rbp)
	movdqa	-7792(%rbp), %xmm0
	movaps	%xmm0, -5232(%rbp)
	movdqa	-7696(%rbp), %xmm0
	movaps	%xmm0, -5216(%rbp)
	movdqa	-5232(%rbp), %xmm1
	movdqa	-5216(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7536(%rbp)
	movdqa	-7776(%rbp), %xmm0
	movaps	%xmm0, -5264(%rbp)
	movdqa	-7680(%rbp), %xmm0
	movaps	%xmm0, -5248(%rbp)
	movdqa	-5264(%rbp), %xmm1
	movdqa	-5248(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7520(%rbp)
	movdqa	-8080(%rbp), %xmm0
	movaps	%xmm0, -5296(%rbp)
	movdqa	-9584(%rbp), %xmm0
	movaps	%xmm0, -5280(%rbp)
	movdqa	-5296(%rbp), %xmm1
	movdqa	-5280(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7504(%rbp)
	movdqa	-8064(%rbp), %xmm0
	movaps	%xmm0, -5328(%rbp)
	movdqa	-9584(%rbp), %xmm0
	movaps	%xmm0, -5312(%rbp)
	movdqa	-5328(%rbp), %xmm1
	movdqa	-5312(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7488(%rbp)
	movdqa	-7504(%rbp), %xmm0
	movaps	%xmm0, -5360(%rbp)
	movdqa	-7536(%rbp), %xmm0
	movaps	%xmm0, -5344(%rbp)
	movdqa	-5360(%rbp), %xmm1
	movdqa	-5344(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7472(%rbp)
	movdqa	-7488(%rbp), %xmm0
	movaps	%xmm0, -5392(%rbp)
	movdqa	-7520(%rbp), %xmm0
	movaps	%xmm0, -5376(%rbp)
	movdqa	-5392(%rbp), %xmm1
	movdqa	-5376(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7456(%rbp)
	movdqa	-7504(%rbp), %xmm0
	movaps	%xmm0, -5424(%rbp)
	movdqa	-7536(%rbp), %xmm0
	movaps	%xmm0, -5408(%rbp)
	movdqa	-5424(%rbp), %xmm0
	movdqa	-5408(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -7440(%rbp)
	movdqa	-7488(%rbp), %xmm0
	movaps	%xmm0, -5456(%rbp)
	movdqa	-7520(%rbp), %xmm0
	movaps	%xmm0, -5440(%rbp)
	movdqa	-5456(%rbp), %xmm0
	movdqa	-5440(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -7424(%rbp)
	movdqa	-7456(%rbp), %xmm0
	movaps	%xmm0, -5472(%rbp)
	movl	$17, -10012(%rbp)
	movdqa	-5472(%rbp), %xmm1
	movd	-10012(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-7472(%rbp), %xmm0
	movaps	%xmm0, -5488(%rbp)
	movl	$17, -10016(%rbp)
	movdqa	-5488(%rbp), %xmm1
	movd	-10016(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -5520(%rbp)
	movaps	%xmm2, -5504(%rbp)
	movdqa	-5504(%rbp), %xmm1
	movdqa	-5520(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9568(%rbp)
	movdqa	-7424(%rbp), %xmm0
	movaps	%xmm0, -5536(%rbp)
	movl	$17, -10020(%rbp)
	movdqa	-5536(%rbp), %xmm1
	movd	-10020(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-7440(%rbp), %xmm0
	movaps	%xmm0, -5552(%rbp)
	movl	$17, -10024(%rbp)
	movdqa	-5552(%rbp), %xmm1
	movd	-10024(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -5584(%rbp)
	movaps	%xmm2, -5568(%rbp)
	movdqa	-5568(%rbp), %xmm1
	movdqa	-5584(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9456(%rbp)
	movdqa	-8016(%rbp), %xmm0
	movaps	%xmm0, -5616(%rbp)
	movdqa	-9584(%rbp), %xmm0
	movaps	%xmm0, -5600(%rbp)
	movdqa	-5616(%rbp), %xmm1
	movdqa	-5600(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7408(%rbp)
	movdqa	-8000(%rbp), %xmm0
	movaps	%xmm0, -5648(%rbp)
	movdqa	-9584(%rbp), %xmm0
	movaps	%xmm0, -5632(%rbp)
	movdqa	-5648(%rbp), %xmm1
	movdqa	-5632(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7392(%rbp)
	movdqa	-7408(%rbp), %xmm0
	movaps	%xmm0, -5680(%rbp)
	movdqa	-7568(%rbp), %xmm0
	movaps	%xmm0, -5664(%rbp)
	movdqa	-5680(%rbp), %xmm1
	movdqa	-5664(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7376(%rbp)
	movdqa	-7392(%rbp), %xmm0
	movaps	%xmm0, -5712(%rbp)
	movdqa	-7552(%rbp), %xmm0
	movaps	%xmm0, -5696(%rbp)
	movdqa	-5712(%rbp), %xmm1
	movdqa	-5696(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7360(%rbp)
	movdqa	-7408(%rbp), %xmm0
	movaps	%xmm0, -5744(%rbp)
	movdqa	-7568(%rbp), %xmm0
	movaps	%xmm0, -5728(%rbp)
	movdqa	-5744(%rbp), %xmm0
	movdqa	-5728(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -7344(%rbp)
	movdqa	-7392(%rbp), %xmm0
	movaps	%xmm0, -5776(%rbp)
	movdqa	-7552(%rbp), %xmm0
	movaps	%xmm0, -5760(%rbp)
	movdqa	-5776(%rbp), %xmm0
	movdqa	-5760(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -7328(%rbp)
	movdqa	-7360(%rbp), %xmm0
	movaps	%xmm0, -5792(%rbp)
	movl	$17, -10028(%rbp)
	movdqa	-5792(%rbp), %xmm1
	movd	-10028(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-7376(%rbp), %xmm0
	movaps	%xmm0, -5808(%rbp)
	movl	$17, -10032(%rbp)
	movdqa	-5808(%rbp), %xmm1
	movd	-10032(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -5840(%rbp)
	movaps	%xmm2, -5824(%rbp)
	movdqa	-5824(%rbp), %xmm1
	movdqa	-5840(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9552(%rbp)
	movdqa	-7328(%rbp), %xmm0
	movaps	%xmm0, -5856(%rbp)
	movl	$17, -10036(%rbp)
	movdqa	-5856(%rbp), %xmm1
	movd	-10036(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-7344(%rbp), %xmm0
	movaps	%xmm0, -5872(%rbp)
	movl	$17, -10040(%rbp)
	movdqa	-5872(%rbp), %xmm1
	movd	-10040(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -5904(%rbp)
	movaps	%xmm2, -5888(%rbp)
	movdqa	-5888(%rbp), %xmm1
	movdqa	-5904(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9472(%rbp)
	movdqa	-7984(%rbp), %xmm0
	movaps	%xmm0, -5936(%rbp)
	movdqa	-9584(%rbp), %xmm0
	movaps	%xmm0, -5920(%rbp)
	movdqa	-5936(%rbp), %xmm1
	movdqa	-5920(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7312(%rbp)
	movdqa	-7968(%rbp), %xmm0
	movaps	%xmm0, -5968(%rbp)
	movdqa	-9584(%rbp), %xmm0
	movaps	%xmm0, -5952(%rbp)
	movdqa	-5968(%rbp), %xmm1
	movdqa	-5952(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7296(%rbp)
	movdqa	-7312(%rbp), %xmm0
	movaps	%xmm0, -6000(%rbp)
	movdqa	-7600(%rbp), %xmm0
	movaps	%xmm0, -5984(%rbp)
	movdqa	-6000(%rbp), %xmm1
	movdqa	-5984(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7280(%rbp)
	movdqa	-7296(%rbp), %xmm0
	movaps	%xmm0, -6032(%rbp)
	movdqa	-7584(%rbp), %xmm0
	movaps	%xmm0, -6016(%rbp)
	movdqa	-6032(%rbp), %xmm1
	movdqa	-6016(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7264(%rbp)
	movdqa	-7312(%rbp), %xmm0
	movaps	%xmm0, -6064(%rbp)
	movdqa	-7600(%rbp), %xmm0
	movaps	%xmm0, -6048(%rbp)
	movdqa	-6064(%rbp), %xmm0
	movdqa	-6048(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -7248(%rbp)
	movdqa	-7296(%rbp), %xmm0
	movaps	%xmm0, -6096(%rbp)
	movdqa	-7584(%rbp), %xmm0
	movaps	%xmm0, -6080(%rbp)
	movdqa	-6096(%rbp), %xmm0
	movdqa	-6080(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -7232(%rbp)
	movdqa	-7264(%rbp), %xmm0
	movaps	%xmm0, -6112(%rbp)
	movl	$17, -10044(%rbp)
	movdqa	-6112(%rbp), %xmm1
	movd	-10044(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-7280(%rbp), %xmm0
	movaps	%xmm0, -6128(%rbp)
	movl	$17, -10048(%rbp)
	movdqa	-6128(%rbp), %xmm1
	movd	-10048(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -6160(%rbp)
	movaps	%xmm2, -6144(%rbp)
	movdqa	-6144(%rbp), %xmm1
	movdqa	-6160(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9536(%rbp)
	movdqa	-7232(%rbp), %xmm0
	movaps	%xmm0, -6176(%rbp)
	movl	$17, -10052(%rbp)
	movdqa	-6176(%rbp), %xmm1
	movd	-10052(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-7248(%rbp), %xmm0
	movaps	%xmm0, -6192(%rbp)
	movl	$17, -10056(%rbp)
	movdqa	-6192(%rbp), %xmm1
	movd	-10056(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -6224(%rbp)
	movaps	%xmm2, -6208(%rbp)
	movdqa	-6208(%rbp), %xmm1
	movdqa	-6224(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9488(%rbp)
	movdqa	-8048(%rbp), %xmm0
	movaps	%xmm0, -6256(%rbp)
	movdqa	-9584(%rbp), %xmm0
	movaps	%xmm0, -6240(%rbp)
	movdqa	-6256(%rbp), %xmm1
	movdqa	-6240(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7216(%rbp)
	movdqa	-8032(%rbp), %xmm0
	movaps	%xmm0, -6288(%rbp)
	movdqa	-9584(%rbp), %xmm0
	movaps	%xmm0, -6272(%rbp)
	movdqa	-6288(%rbp), %xmm1
	movdqa	-6272(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7200(%rbp)
	movdqa	-7216(%rbp), %xmm0
	movaps	%xmm0, -6320(%rbp)
	movdqa	-7632(%rbp), %xmm0
	movaps	%xmm0, -6304(%rbp)
	movdqa	-6320(%rbp), %xmm1
	movdqa	-6304(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7184(%rbp)
	movdqa	-7200(%rbp), %xmm0
	movaps	%xmm0, -6352(%rbp)
	movdqa	-7616(%rbp), %xmm0
	movaps	%xmm0, -6336(%rbp)
	movdqa	-6352(%rbp), %xmm1
	movdqa	-6336(%rbp), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7168(%rbp)
	movdqa	-7216(%rbp), %xmm0
	movaps	%xmm0, -6384(%rbp)
	movdqa	-7632(%rbp), %xmm0
	movaps	%xmm0, -6368(%rbp)
	movdqa	-6384(%rbp), %xmm0
	movdqa	-6368(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -7152(%rbp)
	movdqa	-7200(%rbp), %xmm0
	movaps	%xmm0, -6416(%rbp)
	movdqa	-7616(%rbp), %xmm0
	movaps	%xmm0, -6400(%rbp)
	movdqa	-6416(%rbp), %xmm0
	movdqa	-6400(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -7136(%rbp)
	movdqa	-7168(%rbp), %xmm0
	movaps	%xmm0, -6432(%rbp)
	movl	$17, -10060(%rbp)
	movdqa	-6432(%rbp), %xmm1
	movd	-10060(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-7184(%rbp), %xmm0
	movaps	%xmm0, -6448(%rbp)
	movl	$17, -10064(%rbp)
	movdqa	-6448(%rbp), %xmm1
	movd	-10064(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -6480(%rbp)
	movaps	%xmm2, -6464(%rbp)
	movdqa	-6464(%rbp), %xmm1
	movdqa	-6480(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9520(%rbp)
	movdqa	-7136(%rbp), %xmm0
	movaps	%xmm0, -6496(%rbp)
	movl	$17, -10068(%rbp)
	movdqa	-6496(%rbp), %xmm1
	movd	-10068(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	-7152(%rbp), %xmm0
	movaps	%xmm0, -6512(%rbp)
	movl	$17, -10072(%rbp)
	movdqa	-6512(%rbp), %xmm1
	movd	-10072(%rbp), %xmm0
	psrad	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -6544(%rbp)
	movaps	%xmm2, -6528(%rbp)
	movdqa	-6528(%rbp), %xmm1
	movdqa	-6544(%rbp), %xmm0
	packssdw	%xmm1, %xmm0
	movaps	%xmm0, -9504(%rbp)
	movdqa	-9568(%rbp), %xmm0
	movaps	%xmm0, -6576(%rbp)
	movdqa	-9552(%rbp), %xmm0
	movaps	%xmm0, -6560(%rbp)
	movdqa	-6560(%rbp), %xmm1
	movdqa	-6576(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -7120(%rbp)
	movdqa	-9536(%rbp), %xmm0
	movaps	%xmm0, -6608(%rbp)
	movdqa	-9520(%rbp), %xmm0
	movaps	%xmm0, -6592(%rbp)
	movdqa	-6592(%rbp), %xmm1
	movdqa	-6608(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -7104(%rbp)
	movdqa	-9504(%rbp), %xmm0
	movaps	%xmm0, -6640(%rbp)
	movdqa	-9488(%rbp), %xmm0
	movaps	%xmm0, -6624(%rbp)
	movdqa	-6624(%rbp), %xmm1
	movdqa	-6640(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -7088(%rbp)
	movdqa	-9472(%rbp), %xmm0
	movaps	%xmm0, -6672(%rbp)
	movdqa	-9456(%rbp), %xmm0
	movaps	%xmm0, -6656(%rbp)
	movdqa	-6656(%rbp), %xmm1
	movdqa	-6672(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -7072(%rbp)
	movdqa	-7120(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-7120(%rbp), %xmm0
	movaps	%xmm0, -6704(%rbp)
	movdqa	-7088(%rbp), %xmm0
	movaps	%xmm0, -6688(%rbp)
	movdqa	-6688(%rbp), %xmm1
	movdqa	-6704(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -7120(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -6736(%rbp)
	movdqa	-7088(%rbp), %xmm0
	movaps	%xmm0, -6720(%rbp)
	movdqa	-6720(%rbp), %xmm1
	movdqa	-6736(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
	movaps	%xmm0, -7088(%rbp)
	movdqa	-7104(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-7104(%rbp), %xmm0
	movaps	%xmm0, -6768(%rbp)
	movdqa	-7072(%rbp), %xmm0
	movaps	%xmm0, -6752(%rbp)
	movdqa	-6752(%rbp), %xmm1
	movdqa	-6768(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -7104(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -6800(%rbp)
	movdqa	-7072(%rbp), %xmm0
	movaps	%xmm0, -6784(%rbp)
	movdqa	-6784(%rbp), %xmm1
	movdqa	-6800(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
	movaps	%xmm0, -7072(%rbp)
	movdqa	-7120(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-7120(%rbp), %xmm0
	movaps	%xmm0, -6832(%rbp)
	movdqa	-7104(%rbp), %xmm0
	movaps	%xmm0, -6816(%rbp)
	movdqa	-6816(%rbp), %xmm1
	movdqa	-6832(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -7120(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -6864(%rbp)
	movdqa	-7104(%rbp), %xmm0
	movaps	%xmm0, -6848(%rbp)
	movdqa	-6848(%rbp), %xmm1
	movdqa	-6864(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
	movaps	%xmm0, -7104(%rbp)
	movdqa	-7088(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-7088(%rbp), %xmm0
	movaps	%xmm0, -6896(%rbp)
	movdqa	-7072(%rbp), %xmm0
	movaps	%xmm0, -6880(%rbp)
	movdqa	-6880(%rbp), %xmm1
	movdqa	-6896(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -7088(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -6928(%rbp)
	movdqa	-7072(%rbp), %xmm0
	movaps	%xmm0, -6912(%rbp)
	movdqa	-6912(%rbp), %xmm1
	movdqa	-6928(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
	movaps	%xmm0, -7072(%rbp)
	movdqa	-7120(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-7120(%rbp), %xmm0
	movaps	%xmm0, -6960(%rbp)
	movdqa	-7088(%rbp), %xmm0
	movaps	%xmm0, -6944(%rbp)
	movdqa	-6944(%rbp), %xmm1
	movdqa	-6960(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -7120(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -6992(%rbp)
	movdqa	-7088(%rbp), %xmm0
	movaps	%xmm0, -6976(%rbp)
	movdqa	-6976(%rbp), %xmm1
	movdqa	-6992(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
	movaps	%xmm0, -7088(%rbp)
	movdqa	-7104(%rbp), %xmm0
	movaps	%xmm0, -8288(%rbp)
	movdqa	-7104(%rbp), %xmm0
	movaps	%xmm0, -7024(%rbp)
	movdqa	-7072(%rbp), %xmm0
	movaps	%xmm0, -7008(%rbp)
	movdqa	-7008(%rbp), %xmm1
	movdqa	-7024(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -7104(%rbp)
	movdqa	-8288(%rbp), %xmm0
	movaps	%xmm0, -7056(%rbp)
	movdqa	-7072(%rbp), %xmm0
	movaps	%xmm0, -7040(%rbp)
	movdqa	-7040(%rbp), %xmm1
	movdqa	-7056(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
	movaps	%xmm0, -7072(%rbp)
	movq	-10344(%rbp), %rax
	movq	%rax, -9816(%rbp)
	movdqa	-7120(%rbp), %xmm0
	movaps	%xmm0, -9744(%rbp)
	movq	-9744(%rbp), %rax
	movq	%rax, %rdx
	movq	-9816(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movl	-10348(%rbp), %eax
	cltq
	addq	%rax, -10344(%rbp)
	movdqa	-7120(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0
	movq	-10344(%rbp), %rax
	movq	%rax, -9824(%rbp)
	movaps	%xmm0, -9744(%rbp)
	movq	-9744(%rbp), %rax
	movq	%rax, %rdx
	movq	-9824(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movl	-10348(%rbp), %eax
	cltq
	addq	%rax, -10344(%rbp)
	movq	-10344(%rbp), %rax
	movq	%rax, -9832(%rbp)
	movdqa	-7088(%rbp), %xmm0
	movaps	%xmm0, -9744(%rbp)
	movq	-9744(%rbp), %rax
	movq	%rax, %rdx
	movq	-9832(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movl	-10348(%rbp), %eax
	cltq
	addq	%rax, -10344(%rbp)
	movdqa	-7088(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0
	movq	-10344(%rbp), %rax
	movq	%rax, -9840(%rbp)
	movaps	%xmm0, -9744(%rbp)
	movq	-9744(%rbp), %rax
	movq	%rax, %rdx
	movq	-9840(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movl	-10348(%rbp), %eax
	cltq
	addq	%rax, -10344(%rbp)
	movq	-10344(%rbp), %rax
	movq	%rax, -9848(%rbp)
	movdqa	-7104(%rbp), %xmm0
	movaps	%xmm0, -9744(%rbp)
	movq	-9744(%rbp), %rax
	movq	%rax, %rdx
	movq	-9848(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movl	-10348(%rbp), %eax
	cltq
	addq	%rax, -10344(%rbp)
	movdqa	-7104(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0
	movq	-10344(%rbp), %rax
	movq	%rax, -9856(%rbp)
	movaps	%xmm0, -9744(%rbp)
	movq	-9744(%rbp), %rax
	movq	%rax, %rdx
	movq	-9856(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movl	-10348(%rbp), %eax
	cltq
	addq	%rax, -10344(%rbp)
	movq	-10344(%rbp), %rax
	movq	%rax, -9864(%rbp)
	movdqa	-7072(%rbp), %xmm0
	movaps	%xmm0, -9744(%rbp)
	movq	-9744(%rbp), %rax
	movq	%rax, %rdx
	movq	-9864(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movl	-10348(%rbp), %eax
	cltq
	addq	%rax, -10344(%rbp)
	movdqa	-7072(%rbp), %xmm0
	pshufd	$78, %xmm0, %xmm0
	movq	-10344(%rbp), %rax
	movq	%rax, -9872(%rbp)
	movaps	%xmm0, -9744(%rbp)
	movq	-9744(%rbp), %rax
	movq	%rax, %rdx
	movq	-9872(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L759
	call	__stack_chk_fail@PLT
.L759:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	stbi__idct_simd, .-stbi__idct_simd
	.type	stbi__get_marker, @function
stbi__get_marker:
.LFB586:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	18472(%rax), %eax
	cmpb	$-1, %al
	je	.L761
	movq	-24(%rbp), %rax
	movzbl	18472(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movb	$-1, 18472(%rax)
	movzbl	-1(%rbp), %eax
	jmp	.L762
.L761:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -1(%rbp)
	cmpb	$-1, -1(%rbp)
	je	.L764
	movl	$-1, %eax
	jmp	.L762
.L765:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -1(%rbp)
.L764:
	cmpb	$-1, -1(%rbp)
	je	.L765
	movzbl	-1(%rbp), %eax
.L762:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	stbi__get_marker, .-stbi__get_marker
	.type	stbi__jpeg_reset, @function
stbi__jpeg_reset:
.LFB587:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 18468(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 18464(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 18476(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 18392(%rax)
	movq	-8(%rbp), %rax
	movl	18392(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 18296(%rax)
	movq	-8(%rbp), %rax
	movl	18296(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 18200(%rax)
	movq	-8(%rbp), %rax
	movl	18200(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 18104(%rax)
	movq	-8(%rbp), %rax
	movb	$-1, 18472(%rax)
	movq	-8(%rbp), %rax
	movl	18536(%rax), %eax
	testl	%eax, %eax
	je	.L767
	movq	-8(%rbp), %rax
	movl	18536(%rax), %eax
	jmp	.L768
.L767:
	movl	$2147483647, %eax
.L768:
	movq	-8(%rbp), %rdx
	movl	%eax, 18540(%rdx)
	movq	-8(%rbp), %rax
	movl	$0, 18500(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	stbi__jpeg_reset, .-stbi__jpeg_reset
	.type	stbi__parse_entropy_coded_data, @function
stbi__parse_entropy_coded_data:
.LFB588:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_reset
	movq	-296(%rbp), %rax
	movl	18480(%rax), %eax
	testl	%eax, %eax
	jne	.L770
	movq	-296(%rbp), %rax
	movl	18516(%rax), %eax
	cmpl	$1, %eax
	jne	.L771
	movq	-296(%rbp), %rax
	movl	18520(%rax), %eax
	movl	%eax, -176(%rbp)
	movq	-296(%rbp), %rcx
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18108, %rax
	movl	(%rax), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -172(%rbp)
	movq	-296(%rbp), %rcx
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18112, %rax
	movl	(%rax), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -168(%rbp)
	movl	$0, -272(%rbp)
	jmp	.L772
.L781:
	movl	$0, -276(%rbp)
	jmp	.L773
.L780:
	movq	-296(%rbp), %rcx
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18100, %rax
	movl	(%rax), %eax
	movl	%eax, -164(%rbp)
	movq	-296(%rbp), %rcx
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18092, %rax
	movl	(%rax), %eax
	cltq
	addq	$105, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	movl	-164(%rbp), %eax
	cltq
	salq	$10, %rax
	leaq	13952(%rax), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %r10
	movq	-296(%rbp), %rax
	leaq	6728(%rax), %rdx
	movl	-164(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-296(%rbp), %rax
	leaq	8(%rax), %r8
	movq	-296(%rbp), %rsi
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18096, %rax
	movl	(%rax), %eax
	cltq
	imulq	$1680, %rax, %rax
	leaq	(%r8,%rax), %rdx
	movl	-176(%rbp), %r8d
	leaq	-144(%rbp), %rsi
	movq	-296(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movl	%r8d, %r9d
	movq	%r10, %r8
	movq	%rax, %rdi
	call	stbi__jpeg_decode_block
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L774
	movl	$0, %eax
	jmp	.L782
.L774:
	movq	-296(%rbp), %rax
	movq	18544(%rax), %r8
	movq	-296(%rbp), %rcx
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18116, %rax
	movl	(%rax), %ecx
	movq	-296(%rbp), %rsi
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18128, %rax
	movq	(%rax), %rsi
	movq	-296(%rbp), %rdi
	movl	-176(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rdi, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	imull	-272(%rbp), %eax
	sall	$3, %eax
	movslq	%eax, %rdx
	movl	-276(%rbp), %eax
	sall	$3, %eax
	cltq
	addq	%rdx, %rax
	leaq	(%rsi,%rax), %rdi
	leaq	-144(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	call	*%r8
	movq	-296(%rbp), %rax
	movl	18540(%rax), %eax
	leal	-1(%rax), %edx
	movq	-296(%rbp), %rax
	movl	%edx, 18540(%rax)
	movq	-296(%rbp), %rax
	movl	18540(%rax), %eax
	testl	%eax, %eax
	jg	.L776
	movq	-296(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	$23, %eax
	jg	.L777
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L777:
	movq	-296(%rbp), %rax
	movzbl	18472(%rax), %eax
	cmpb	$-49, %al
	jbe	.L778
	movq	-296(%rbp), %rax
	movzbl	18472(%rax), %eax
	cmpb	$-41, %al
	jbe	.L779
.L778:
	movl	$1, %eax
	jmp	.L782
.L779:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_reset
.L776:
	addl	$1, -276(%rbp)
.L773:
	movl	-276(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jl	.L780
	addl	$1, -272(%rbp)
.L772:
	movl	-272(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L781
	movl	$1, %eax
	jmp	.L782
.L771:
	movl	$0, -264(%rbp)
	jmp	.L783
.L798:
	movl	$0, -268(%rbp)
	jmp	.L784
.L797:
	movl	$0, -260(%rbp)
	jmp	.L785
.L792:
	movq	-296(%rbp), %rax
	movl	-260(%rbp), %edx
	movslq	%edx, %rdx
	addq	$4628, %rdx
	movl	8(%rax,%rdx,4), %eax
	movl	%eax, -192(%rbp)
	movl	$0, -252(%rbp)
	jmp	.L786
.L791:
	movl	$0, -256(%rbp)
	jmp	.L787
.L790:
	movq	-296(%rbp), %rcx
	movl	-192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	imull	-268(%rbp), %eax
	movl	%eax, %edx
	movl	-256(%rbp), %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, -188(%rbp)
	movq	-296(%rbp), %rcx
	movl	-192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	imull	-264(%rbp), %eax
	movl	%eax, %edx
	movl	-252(%rbp), %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, -184(%rbp)
	movq	-296(%rbp), %rcx
	movl	-192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18100, %rax
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	movq	-296(%rbp), %rcx
	movl	-192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18092, %rax
	movl	(%rax), %eax
	cltq
	addq	$105, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	movl	-180(%rbp), %eax
	cltq
	salq	$10, %rax
	leaq	13952(%rax), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %r10
	movq	-296(%rbp), %rax
	leaq	6728(%rax), %rdx
	movl	-180(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-296(%rbp), %rax
	leaq	8(%rax), %r8
	movq	-296(%rbp), %rsi
	movl	-192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18096, %rax
	movl	(%rax), %eax
	cltq
	imulq	$1680, %rax, %rax
	leaq	(%r8,%rax), %rdx
	movl	-192(%rbp), %r8d
	leaq	-144(%rbp), %rsi
	movq	-296(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movl	%r8d, %r9d
	movq	%r10, %r8
	movq	%rax, %rdi
	call	stbi__jpeg_decode_block
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L788
	movl	$0, %eax
	jmp	.L782
.L788:
	movq	-296(%rbp), %rax
	movq	18544(%rax), %r8
	movq	-296(%rbp), %rcx
	movl	-192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18116, %rax
	movl	(%rax), %ecx
	movq	-296(%rbp), %rsi
	movl	-192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18128, %rax
	movq	(%rax), %rsi
	movq	-296(%rbp), %rdi
	movl	-192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rdi, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	imull	-184(%rbp), %eax
	movslq	%eax, %rdx
	movl	-188(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	(%rsi,%rax), %rdi
	leaq	-144(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	call	*%r8
	addl	$1, -256(%rbp)
.L787:
	movq	-296(%rbp), %rcx
	movl	-192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	cmpl	%eax, -256(%rbp)
	jl	.L790
	addl	$1, -252(%rbp)
.L786:
	movq	-296(%rbp), %rcx
	movl	-192(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	cmpl	%eax, -252(%rbp)
	jl	.L791
	addl	$1, -260(%rbp)
.L785:
	movq	-296(%rbp), %rax
	movl	18516(%rax), %eax
	cmpl	%eax, -260(%rbp)
	jl	.L792
	movq	-296(%rbp), %rax
	movl	18540(%rax), %eax
	leal	-1(%rax), %edx
	movq	-296(%rbp), %rax
	movl	%edx, 18540(%rax)
	movq	-296(%rbp), %rax
	movl	18540(%rax), %eax
	testl	%eax, %eax
	jg	.L793
	movq	-296(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	$23, %eax
	jg	.L794
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L794:
	movq	-296(%rbp), %rax
	movzbl	18472(%rax), %eax
	cmpb	$-49, %al
	jbe	.L795
	movq	-296(%rbp), %rax
	movzbl	18472(%rax), %eax
	cmpb	$-41, %al
	jbe	.L796
.L795:
	movl	$1, %eax
	jmp	.L782
.L796:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_reset
.L793:
	addl	$1, -268(%rbp)
.L784:
	movq	-296(%rbp), %rax
	movl	18064(%rax), %eax
	cmpl	%eax, -268(%rbp)
	jl	.L797
	addl	$1, -264(%rbp)
.L783:
	movq	-296(%rbp), %rax
	movl	18068(%rax), %eax
	cmpl	%eax, -264(%rbp)
	jl	.L798
	movl	$1, %eax
	jmp	.L782
.L770:
	movq	-296(%rbp), %rax
	movl	18516(%rax), %eax
	cmpl	$1, %eax
	jne	.L799
	movq	-296(%rbp), %rax
	movl	18520(%rax), %eax
	movl	%eax, -208(%rbp)
	movq	-296(%rbp), %rcx
	movl	-208(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18108, %rax
	movl	(%rax), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -204(%rbp)
	movq	-296(%rbp), %rcx
	movl	-208(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18112, %rax
	movl	(%rax), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -200(%rbp)
	movl	$0, -244(%rbp)
	jmp	.L800
.L809:
	movl	$0, -248(%rbp)
	jmp	.L801
.L808:
	movq	-296(%rbp), %rcx
	movl	-208(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	(%rax), %rcx
	movq	-296(%rbp), %rsi
	movl	-208(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18168, %rax
	movl	(%rax), %eax
	imull	-244(%rbp), %eax
	movl	%eax, %edx
	movl	-248(%rbp), %eax
	addl	%edx, %eax
	sall	$6, %eax
	cltq
	addq	%rax, %rax
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-296(%rbp), %rax
	movl	18484(%rax), %eax
	testl	%eax, %eax
	jne	.L802
	movq	-296(%rbp), %rcx
	movl	-208(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18096, %rax
	movl	(%rax), %eax
	cltq
	imulq	$1680, %rax, %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	movl	-208(%rbp), %edx
	movq	-152(%rbp), %rsi
	movq	-296(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	stbi__jpeg_decode_block_prog_dc
	testl	%eax, %eax
	jne	.L803
	movl	$0, %eax
	jmp	.L782
.L802:
	movq	-296(%rbp), %rcx
	movl	-208(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18100, %rax
	movl	(%rax), %eax
	movl	%eax, -196(%rbp)
	movl	-196(%rbp), %eax
	cltq
	salq	$10, %rax
	leaq	13952(%rax), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	movl	-196(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	leaq	6720(%rax), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rsi
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_decode_block_prog_ac
	testl	%eax, %eax
	jne	.L803
	movl	$0, %eax
	jmp	.L782
.L803:
	movq	-296(%rbp), %rax
	movl	18540(%rax), %eax
	leal	-1(%rax), %edx
	movq	-296(%rbp), %rax
	movl	%edx, 18540(%rax)
	movq	-296(%rbp), %rax
	movl	18540(%rax), %eax
	testl	%eax, %eax
	jg	.L804
	movq	-296(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	$23, %eax
	jg	.L805
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L805:
	movq	-296(%rbp), %rax
	movzbl	18472(%rax), %eax
	cmpb	$-49, %al
	jbe	.L806
	movq	-296(%rbp), %rax
	movzbl	18472(%rax), %eax
	cmpb	$-41, %al
	jbe	.L807
.L806:
	movl	$1, %eax
	jmp	.L782
.L807:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_reset
.L804:
	addl	$1, -248(%rbp)
.L801:
	movl	-248(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jl	.L808
	addl	$1, -244(%rbp)
.L800:
	movl	-244(%rbp), %eax
	cmpl	-200(%rbp), %eax
	jl	.L809
	movl	$1, %eax
	jmp	.L782
.L799:
	movl	$0, -236(%rbp)
	jmp	.L810
.L824:
	movl	$0, -240(%rbp)
	jmp	.L811
.L823:
	movl	$0, -232(%rbp)
	jmp	.L812
.L818:
	movq	-296(%rbp), %rax
	movl	-232(%rbp), %edx
	movslq	%edx, %rdx
	addq	$4628, %rdx
	movl	8(%rax,%rdx,4), %eax
	movl	%eax, -220(%rbp)
	movl	$0, -224(%rbp)
	jmp	.L813
.L817:
	movl	$0, -228(%rbp)
	jmp	.L814
.L816:
	movq	-296(%rbp), %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	imull	-240(%rbp), %eax
	movl	%eax, %edx
	movl	-228(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -216(%rbp)
	movq	-296(%rbp), %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	imull	-236(%rbp), %eax
	movl	%eax, %edx
	movl	-224(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -212(%rbp)
	movq	-296(%rbp), %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	(%rax), %rcx
	movq	-296(%rbp), %rsi
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18168, %rax
	movl	(%rax), %eax
	imull	-212(%rbp), %eax
	movl	%eax, %edx
	movl	-216(%rbp), %eax
	addl	%edx, %eax
	sall	$6, %eax
	cltq
	addq	%rax, %rax
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-296(%rbp), %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18096, %rax
	movl	(%rax), %eax
	cltq
	imulq	$1680, %rax, %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	movl	-220(%rbp), %edx
	movq	-160(%rbp), %rsi
	movq	-296(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	stbi__jpeg_decode_block_prog_dc
	testl	%eax, %eax
	jne	.L815
	movl	$0, %eax
	jmp	.L782
.L815:
	addl	$1, -228(%rbp)
.L814:
	movq	-296(%rbp), %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	cmpl	%eax, -228(%rbp)
	jl	.L816
	addl	$1, -224(%rbp)
.L813:
	movq	-296(%rbp), %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	cmpl	%eax, -224(%rbp)
	jl	.L817
	addl	$1, -232(%rbp)
.L812:
	movq	-296(%rbp), %rax
	movl	18516(%rax), %eax
	cmpl	%eax, -232(%rbp)
	jl	.L818
	movq	-296(%rbp), %rax
	movl	18540(%rax), %eax
	leal	-1(%rax), %edx
	movq	-296(%rbp), %rax
	movl	%edx, 18540(%rax)
	movq	-296(%rbp), %rax
	movl	18540(%rax), %eax
	testl	%eax, %eax
	jg	.L819
	movq	-296(%rbp), %rax
	movl	18468(%rax), %eax
	cmpl	$23, %eax
	jg	.L820
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__grow_buffer_unsafe
.L820:
	movq	-296(%rbp), %rax
	movzbl	18472(%rax), %eax
	cmpb	$-49, %al
	jbe	.L821
	movq	-296(%rbp), %rax
	movzbl	18472(%rax), %eax
	cmpb	$-41, %al
	jbe	.L822
.L821:
	movl	$1, %eax
	jmp	.L782
.L822:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_reset
.L819:
	addl	$1, -240(%rbp)
.L811:
	movq	-296(%rbp), %rax
	movl	18064(%rax), %eax
	cmpl	%eax, -240(%rbp)
	jl	.L823
	addl	$1, -236(%rbp)
.L810:
	movq	-296(%rbp), %rax
	movl	18068(%rax), %eax
	cmpl	%eax, -236(%rbp)
	jl	.L824
	movl	$1, %eax
.L782:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L825
	call	__stack_chk_fail@PLT
.L825:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	stbi__parse_entropy_coded_data, .-stbi__parse_entropy_coded_data
	.type	stbi__jpeg_dequantize, @function
stbi__jpeg_dequantize:
.LFB589:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L827
.L828:
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	imull	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	addl	$1, -4(%rbp)
.L827:
	cmpl	$63, -4(%rbp)
	jle	.L828
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	stbi__jpeg_dequantize, .-stbi__jpeg_dequantize
	.type	stbi__jpeg_finish, @function
stbi__jpeg_finish:
.LFB590:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	18480(%rax), %eax
	testl	%eax, %eax
	je	.L837
	movl	$0, -20(%rbp)
	jmp	.L831
.L836:
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18108, %rax
	movl	(%rax), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18112, %rax
	movl	(%rax), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L832
.L835:
	movl	$0, -28(%rbp)
	jmp	.L833
.L834:
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18168, %rax
	movl	(%rax), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	sall	$6, %eax
	cltq
	addq	%rax, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18092, %rax
	movl	(%rax), %eax
	cltq
	addq	$105, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__jpeg_dequantize
	movq	-40(%rbp), %rax
	movq	18544(%rax), %r8
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18116, %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18128, %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rdi, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	imull	-24(%rbp), %eax
	sall	$3, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	sall	$3, %eax
	cltq
	addq	%rdx, %rax
	leaq	(%rsi,%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	call	*%r8
	addl	$1, -28(%rbp)
.L833:
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L834
	addl	$1, -24(%rbp)
.L832:
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L835
	addl	$1, -20(%rbp)
.L831:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L836
.L837:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	stbi__jpeg_finish, .-stbi__jpeg_finish
	.section	.rodata
.LC16:
	.string	"expected marker"
.LC17:
	.string	"bad DRI len"
.LC18:
	.string	"bad DQT type"
.LC19:
	.string	"bad DQT table"
.LC20:
	.string	"bad DHT header"
.LC21:
	.string	"bad COM len"
.LC22:
	.string	"bad APP len"
.LC23:
	.string	"unknown marker"
	.text
	.type	stbi__process_marker, @function
stbi__process_marker:
.LFB591:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movl	%esi, -188(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpl	$255, -188(%rbp)
	je	.L839
	cmpl	$255, -188(%rbp)
	jg	.L840
	cmpl	$221, -188(%rbp)
	je	.L841
	cmpl	$221, -188(%rbp)
	jg	.L840
	cmpl	$196, -188(%rbp)
	je	.L842
	cmpl	$219, -188(%rbp)
	je	.L843
	jmp	.L840
.L839:
	leaq	.LC16(%rip), %rdi
	call	stbi__err
	jmp	.L844
.L841:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	cmpl	$4, %eax
	je	.L845
	leaq	.LC17(%rip), %rdi
	call	stbi__err
	jmp	.L844
.L845:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movq	-184(%rbp), %rdx
	movl	%eax, 18536(%rdx)
	movl	$1, %eax
	jmp	.L844
.L843:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	subl	$2, %eax
	movl	%eax, -164(%rbp)
	jmp	.L846
.L855:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -128(%rbp)
	je	.L847
	cmpl	$1, -128(%rbp)
	je	.L847
	leaq	.LC18(%rip), %rdi
	call	stbi__err
	jmp	.L844
.L847:
	cmpl	$3, -120(%rbp)
	jle	.L848
	leaq	.LC19(%rip), %rdi
	call	stbi__err
	jmp	.L844
.L848:
	movl	$0, -160(%rbp)
	jmp	.L849
.L852:
	cmpl	$0, -124(%rbp)
	je	.L850
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	jmp	.L851
.L850:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
.L851:
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	leaq	stbi__jpeg_dezigzag(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movzbl	%dl, %ecx
	movq	-184(%rbp), %rdx
	movslq	%ecx, %rcx
	movl	-120(%rbp), %esi
	movslq	%esi, %rsi
	salq	$6, %rsi
	addq	%rsi, %rcx
	addq	$6720, %rcx
	movw	%ax, 8(%rdx,%rcx,2)
	addl	$1, -160(%rbp)
.L849:
	cmpl	$63, -160(%rbp)
	jle	.L852
	cmpl	$0, -124(%rbp)
	je	.L853
	movl	$129, %eax
	jmp	.L854
.L853:
	movl	$65, %eax
.L854:
	subl	%eax, -164(%rbp)
.L846:
	cmpl	$0, -164(%rbp)
	jg	.L855
	cmpl	$0, -164(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L844
.L842:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	subl	$2, %eax
	movl	%eax, -164(%rbp)
	jmp	.L856
.L869:
	movl	$0, -152(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -108(%rbp)
	cmpl	$1, -112(%rbp)
	jg	.L857
	cmpl	$3, -108(%rbp)
	jle	.L858
.L857:
	leaq	.LC20(%rip), %rdi
	call	stbi__err
	jmp	.L844
.L858:
	movl	$0, -156(%rbp)
	jmp	.L860
.L861:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movl	-156(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	movl	-156(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	addl	%eax, -152(%rbp)
	addl	$1, -156(%rbp)
.L860:
	cmpl	$15, -156(%rbp)
	jle	.L861
	subl	$17, -164(%rbp)
	cmpl	$0, -112(%rbp)
	jne	.L862
	movq	-184(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-108(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	addq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	stbi__build_huffman
	testl	%eax, %eax
	jne	.L863
	movl	$0, %eax
	jmp	.L844
.L863:
	movl	-108(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	leaq	1024(%rax), %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -104(%rbp)
	jmp	.L864
.L862:
	movq	-184(%rbp), %rax
	leaq	6728(%rax), %rdx
	movl	-108(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	addq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	stbi__build_huffman
	testl	%eax, %eax
	jne	.L865
	movl	$0, %eax
	jmp	.L844
.L865:
	movl	-108(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	leaq	7744(%rax), %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -104(%rbp)
.L864:
	movl	$0, -156(%rbp)
	jmp	.L866
.L867:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rcx
	movq	-104(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, (%rbx)
	addl	$1, -156(%rbp)
.L866:
	movl	-156(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jl	.L867
	cmpl	$0, -112(%rbp)
	je	.L868
	movq	-184(%rbp), %rax
	leaq	6728(%rax), %rdx
	movl	-108(%rbp), %eax
	cltq
	imulq	$1680, %rax, %rax
	addq	%rax, %rdx
	movl	-108(%rbp), %eax
	cltq
	salq	$10, %rax
	leaq	13952(%rax), %rcx
	movq	-184(%rbp), %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__build_fast_ac
.L868:
	movl	-152(%rbp), %eax
	subl	%eax, -164(%rbp)
.L856:
	cmpl	$0, -164(%rbp)
	jg	.L869
	cmpl	$0, -164(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L844
.L840:
	cmpl	$223, -188(%rbp)
	jle	.L870
	cmpl	$239, -188(%rbp)
	jle	.L871
.L870:
	cmpl	$254, -188(%rbp)
	jne	.L872
.L871:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -164(%rbp)
	cmpl	$1, -164(%rbp)
	jg	.L873
	cmpl	$254, -188(%rbp)
	jne	.L874
	leaq	.LC21(%rip), %rdi
	call	stbi__err
	jmp	.L844
.L874:
	leaq	.LC22(%rip), %rdi
	call	stbi__err
	jmp	.L844
.L873:
	subl	$2, -164(%rbp)
	cmpl	$224, -188(%rbp)
	jne	.L875
	cmpl	$4, -164(%rbp)
	jle	.L875
	movl	$1, -148(%rbp)
	movl	$0, -144(%rbp)
	jmp	.L876
.L878:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	leaq	tag.7682(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	cmpb	%dl, %al
	je	.L877
	movl	$0, -148(%rbp)
.L877:
	addl	$1, -144(%rbp)
.L876:
	cmpl	$4, -144(%rbp)
	jle	.L878
	subl	$5, -164(%rbp)
	cmpl	$0, -148(%rbp)
	je	.L885
	movq	-184(%rbp), %rax
	movl	$1, 18504(%rax)
	jmp	.L885
.L875:
	cmpl	$238, -188(%rbp)
	jne	.L880
	cmpl	$11, -164(%rbp)
	jle	.L880
	movl	$1, -140(%rbp)
	movl	$0, -136(%rbp)
	jmp	.L881
.L883:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	leaq	tag.7688(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	cmpb	%dl, %al
	je	.L882
	movl	$0, -140(%rbp)
.L882:
	addl	$1, -136(%rbp)
.L881:
	cmpl	$5, -136(%rbp)
	jle	.L883
	subl	$6, -164(%rbp)
	cmpl	$0, -140(%rbp)
	je	.L880
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-184(%rbp), %rax
	movl	%edx, 18508(%rax)
	subl	$6, -164(%rbp)
	jmp	.L880
.L885:
	nop
.L880:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movl	$1, %eax
	jmp	.L844
.L872:
	leaq	.LC23(%rip), %rdi
	call	stbi__err
.L844:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L884
	call	__stack_chk_fail@PLT
.L884:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	stbi__process_marker, .-stbi__process_marker
	.section	.rodata
.LC24:
	.string	"bad SOS component count"
.LC25:
	.string	"bad SOS len"
.LC26:
	.string	"bad DC huff"
.LC27:
	.string	"bad AC huff"
.LC28:
	.string	"bad SOS"
	.text
	.type	stbi__process_scan_header, @function
stbi__process_scan_header:
.LFB592:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 18516(%rax)
	movq	-40(%rbp), %rax
	movl	18516(%rax), %eax
	testl	%eax, %eax
	jle	.L887
	movq	-40(%rbp), %rax
	movl	18516(%rax), %eax
	cmpl	$4, %eax
	jg	.L887
	movq	-40(%rbp), %rax
	movl	18516(%rax), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jle	.L888
.L887:
	leaq	.LC24(%rip), %rdi
	call	stbi__err
	jmp	.L889
.L888:
	movq	-40(%rbp), %rax
	movl	18516(%rax), %eax
	addl	$3, %eax
	addl	%eax, %eax
	cmpl	%eax, -16(%rbp)
	je	.L890
	leaq	.LC25(%rip), %rdi
	call	stbi__err
	jmp	.L889
.L890:
	movl	$0, -24(%rbp)
	jmp	.L891
.L899:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L892
.L895:
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18080, %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	je	.L906
	addl	$1, -20(%rbp)
.L892:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L895
	jmp	.L894
.L906:
	nop
.L894:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L896
	movl	$0, %eax
	jmp	.L889
.L896:
	movl	-4(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18096, %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18096, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jle	.L897
	leaq	.LC26(%rip), %rdi
	call	stbi__err
	jmp	.L889
.L897:
	movl	-4(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18100, %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18100, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jle	.L898
	leaq	.LC27(%rip), %rdi
	call	stbi__err
	jmp	.L889
.L898:
	movq	-40(%rbp), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	4628(%rdx), %rcx
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax,%rcx,4)
	addl	$1, -24(%rbp)
.L891:
	movq	-40(%rbp), %rax
	movl	18516(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L899
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 18484(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 18488(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 18492(%rax)
	movl	-12(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 18496(%rax)
	movq	-40(%rbp), %rax
	movl	18480(%rax), %eax
	testl	%eax, %eax
	je	.L900
	movq	-40(%rbp), %rax
	movl	18484(%rax), %eax
	cmpl	$63, %eax
	jg	.L901
	movq	-40(%rbp), %rax
	movl	18488(%rax), %eax
	cmpl	$63, %eax
	jg	.L901
	movq	-40(%rbp), %rax
	movl	18484(%rax), %edx
	movq	-40(%rbp), %rax
	movl	18488(%rax), %eax
	cmpl	%eax, %edx
	jg	.L901
	movq	-40(%rbp), %rax
	movl	18492(%rax), %eax
	cmpl	$13, %eax
	jg	.L901
	movq	-40(%rbp), %rax
	movl	18496(%rax), %eax
	cmpl	$13, %eax
	jle	.L902
.L901:
	leaq	.LC28(%rip), %rdi
	call	stbi__err
	jmp	.L889
.L900:
	movq	-40(%rbp), %rax
	movl	18484(%rax), %eax
	testl	%eax, %eax
	je	.L903
	leaq	.LC28(%rip), %rdi
	call	stbi__err
	jmp	.L889
.L903:
	movq	-40(%rbp), %rax
	movl	18492(%rax), %eax
	testl	%eax, %eax
	jne	.L904
	movq	-40(%rbp), %rax
	movl	18496(%rax), %eax
	testl	%eax, %eax
	je	.L905
.L904:
	leaq	.LC28(%rip), %rdi
	call	stbi__err
	jmp	.L889
.L905:
	movq	-40(%rbp), %rax
	movl	$63, 18488(%rax)
.L902:
	movl	$1, %eax
.L889:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	stbi__process_scan_header, .-stbi__process_scan_header
	.type	stbi__free_jpeg_components, @function
stbi__free_jpeg_components:
.LFB593:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L908
.L912:
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L909
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18128, %rax
	movq	$0, (%rax)
.L909:
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L910
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	$0, (%rax)
.L910:
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L911
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	$0, (%rax)
.L911:
	addl	$1, -4(%rbp)
.L908:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L912
	movl	-32(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	stbi__free_jpeg_components, .-stbi__free_jpeg_components
	.section	.rodata
.LC29:
	.string	"bad SOF len"
.LC30:
	.string	"only 8-bit"
.LC31:
	.string	"no header height"
.LC32:
	.string	"0 width"
.LC33:
	.string	"too large"
.LC34:
	.string	"bad component count"
.LC35:
	.string	"bad H"
.LC36:
	.string	"bad V"
.LC37:
	.string	"bad TQ"
	.text
	.type	stbi__process_frame_header, @function
stbi__process_frame_header:
.LFB594:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -32(%rbp)
	movl	$1, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -24(%rbp)
	cmpl	$10, -24(%rbp)
	jg	.L915
	leaq	.LC29(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L915:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$8, -20(%rbp)
	je	.L917
	leaq	.LC30(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L917:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L918
	leaq	.LC31(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L918:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L919
	leaq	.LC32(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L919:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$16777216, %eax
	jbe	.L920
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L920:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16777216, %eax
	jbe	.L921
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L921:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$3, -16(%rbp)
	je	.L922
	cmpl	$1, -16(%rbp)
	je	.L922
	cmpl	$4, -16(%rbp)
	je	.L922
	leaq	.LC34(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L922:
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$0, -36(%rbp)
	jmp	.L923
.L924:
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18128, %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	$0, (%rax)
	addl	$1, -36(%rbp)
.L923:
	movl	-36(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L924
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$8, %eax
	cmpl	%eax, -24(%rbp)
	je	.L925
	leaq	.LC29(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L925:
	movq	-56(%rbp), %rax
	movl	$0, 18512(%rax)
	movl	$0, -36(%rbp)
	jmp	.L926
.L933:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18080, %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L927
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18080, %rax
	movl	(%rax), %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	rgb.7733(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jne	.L927
	movq	-56(%rbp), %rax
	movl	18512(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 18512(%rax)
.L927:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18084, %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L928
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jle	.L929
.L928:
	leaq	.LC35(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L929:
	movl	-12(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18088, %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L930
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jle	.L931
.L930:
	leaq	.LC36(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L931:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18092, %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18092, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jle	.L932
	leaq	.LC37(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L932:
	addl	$1, -36(%rbp)
.L926:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L933
	cmpl	$0, -60(%rbp)
	je	.L934
	movl	$1, %eax
	jmp	.L916
.L934:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edi
	movl	$0, %ecx
	movl	%eax, %edx
	call	stbi__mad3sizes_valid
	testl	%eax, %eax
	jne	.L935
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L935:
	movl	$0, -36(%rbp)
	jmp	.L936
.L939:
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jge	.L937
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
.L937:
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jge	.L938
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
.L938:
	addl	$1, -36(%rbp)
.L936:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L939
	movl	$0, -36(%rbp)
	jmp	.L940
.L943:
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18084, %rax
	movl	(%rax), %ecx
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L941
	leaq	.LC35(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L941:
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18088, %rax
	movl	(%rax), %ecx
	movl	-28(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L942
	leaq	.LC36(%rip), %rdi
	call	stbi__err
	jmp	.L916
.L942:
	addl	$1, -36(%rbp)
.L940:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L943
	movq	-56(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 18056(%rax)
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 18060(%rax)
	movl	-32(%rbp), %eax
	leal	0(,%rax,8), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 18072(%rax)
	movl	-28(%rbp), %eax
	leal	0(,%rax,8), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 18076(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	18072(%rax), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	18072(%rax), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 18064(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-56(%rbp), %rax
	movl	18076(%rax), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	18076(%rax), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 18068(%rax)
	movl	$0, -36(%rbp)
	jmp	.L944
.L948:
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	imull	%eax, %ecx
	movl	%ecx, %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	-32(%rbp), %edi
	movl	$0, %edx
	divl	%edi
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18108, %rax
	movl	%esi, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	imull	%eax, %ecx
	movl	%ecx, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	-28(%rbp), %edi
	movl	$0, %edx
	divl	%edi
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18112, %rax
	movl	%esi, (%rax)
	movq	-56(%rbp), %rax
	movl	18064(%rax), %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18084, %rax
	movl	(%rax), %eax
	imull	%ecx, %eax
	leal	0(,%rax,8), %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18116, %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movl	18068(%rax), %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18088, %rax
	movl	(%rax), %eax
	imull	%ecx, %eax
	leal	0(,%rax,8), %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18120, %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18120, %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	movl	$15, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__malloc_mad2
	movq	%rax, %rcx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18136, %rax
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L945
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__free_jpeg_components
	jmp	.L916
.L945:
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, %rsi
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18128, %rax
	movq	%rsi, (%rax)
	movq	-56(%rbp), %rax
	movl	18480(%rax), %eax
	testl	%eax, %eax
	je	.L946
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18168, %rax
	movl	%esi, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18120, %rax
	movl	(%rax), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18172, %rax
	movl	%esi, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18120, %rax
	movl	(%rax), %esi
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	movl	$15, %ecx
	movl	$2, %edx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, %rcx
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18144, %rax
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L947
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__free_jpeg_components
	jmp	.L916
.L947:
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, %rsi
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18160, %rax
	movq	%rsi, (%rax)
.L946:
	addl	$1, -36(%rbp)
.L944:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L948
	movl	$1, %eax
.L916:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	stbi__process_frame_header, .-stbi__process_frame_header
	.section	.rodata
.LC38:
	.string	"no SOI"
.LC39:
	.string	"no SOF"
	.text
	.type	stbi__decode_jpeg_header, @function
stbi__decode_jpeg_header:
.LFB595:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, 18504(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 18508(%rax)
	movq	-24(%rbp), %rax
	movb	$-1, 18472(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$216, -4(%rbp)
	je	.L950
	leaq	.LC38(%rip), %rdi
	call	stbi__err
	jmp	.L951
.L950:
	cmpl	$1, -28(%rbp)
	jne	.L952
	movl	$1, %eax
	jmp	.L951
.L952:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L953
.L959:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__process_marker
	testl	%eax, %eax
	jne	.L954
	movl	$0, %eax
	jmp	.L951
.L954:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L955
.L957:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	je	.L956
	leaq	.LC39(%rip), %rdi
	call	stbi__err
	jmp	.L951
.L956:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L955:
	cmpl	$255, -4(%rbp)
	je	.L957
.L953:
	cmpl	$192, -4(%rbp)
	je	.L958
	cmpl	$193, -4(%rbp)
	je	.L958
	cmpl	$194, -4(%rbp)
	jne	.L959
.L958:
	cmpl	$194, -4(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 18480(%rax)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__process_frame_header
	testl	%eax, %eax
	jne	.L960
	movl	$0, %eax
	jmp	.L951
.L960:
	movl	$1, %eax
.L951:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	stbi__decode_jpeg_header, .-stbi__decode_jpeg_header
	.section	.rodata
.LC40:
	.string	"bad DNL len"
.LC41:
	.string	"bad DNL height"
	.text
	.type	stbi__decode_jpeg_image, @function
stbi__decode_jpeg_image:
.LFB596:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L962
.L963:
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18136, %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18144, %rax
	movq	$0, (%rax)
	addl	$1, -16(%rbp)
.L962:
	cmpl	$3, -16(%rbp)
	jle	.L963
	movq	-24(%rbp), %rax
	movl	$0, 18536(%rax)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	stbi__decode_jpeg_header
	testl	%eax, %eax
	jne	.L964
	movl	$0, %eax
	jmp	.L965
.L964:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	jmp	.L966
.L976:
	cmpl	$218, -16(%rbp)
	jne	.L967
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__process_scan_header
	testl	%eax, %eax
	jne	.L968
	movl	$0, %eax
	jmp	.L965
.L968:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__parse_entropy_coded_data
	testl	%eax, %eax
	jne	.L969
	movl	$0, %eax
	jmp	.L965
.L969:
	movq	-24(%rbp), %rax
	movzbl	18472(%rax), %eax
	cmpb	$-1, %al
	jne	.L973
	jmp	.L971
.L972:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$255, -4(%rbp)
	jne	.L971
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-24(%rbp), %rdx
	movb	%al, 18472(%rdx)
	jmp	.L973
.L971:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	je	.L972
	jmp	.L973
.L967:
	cmpl	$220, -16(%rbp)
	jne	.L974
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -8(%rbp)
	cmpl	$4, -12(%rbp)
	je	.L975
	leaq	.LC40(%rip), %rdi
	call	stbi__err
	jmp	.L965
.L975:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -8(%rbp)
	je	.L973
	leaq	.LC41(%rip), %rdi
	call	stbi__err
	jmp	.L965
.L974:
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__process_marker
	testl	%eax, %eax
	jne	.L973
	movl	$0, %eax
	jmp	.L965
.L973:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_marker
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
.L966:
	cmpl	$217, -16(%rbp)
	jne	.L976
	movq	-24(%rbp), %rax
	movl	18480(%rax), %eax
	testl	%eax, %eax
	je	.L977
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_finish
.L977:
	movl	$1, %eax
.L965:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	stbi__decode_jpeg_image, .-stbi__decode_jpeg_image
	.type	resample_row_1, @function
resample_row_1:
.LFB597:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	resample_row_1, .-resample_row_1
	.type	stbi__resample_row_v_2, @function
stbi__resample_row_v_2:
.LFB598:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L981
.L982:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L981:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L982
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	stbi__resample_row_v_2, .-stbi__resample_row_v_2
	.type	stbi__resample_row_h_2, @function
stbi__resample_row_h_2:
.LFB599:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$1, -44(%rbp)
	jne	.L985
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L986
.L985:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	$1, -16(%rbp)
	jmp	.L987
.L988:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-16(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -16(%rbp)
.L987:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -16(%rbp)
	jl	.L988
	movl	-44(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-44(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-44(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	leaq	1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
.L986:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	stbi__resample_row_h_2, .-stbi__resample_row_h_2
	.type	stbi__resample_row_hv_2, @function
stbi__resample_row_hv_2:
.LFB600:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	cmpl	$1, -44(%rbp)
	jne	.L990
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L991
.L990:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, -12(%rbp)
	jmp	.L992
.L993:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -12(%rbp)
.L992:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L993
	movl	-8(%rbp), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	movl	-44(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
.L991:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	stbi__resample_row_hv_2, .-stbi__resample_row_hv_2
	.type	stbi__resample_row_hv_2_simd, @function
stbi__resample_row_hv_2_simd:
.LFB601:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$904, %rsp
	movq	%rdi, -1000(%rbp)
	movq	%rsi, -1008(%rbp)
	movq	%rdx, -1016(%rbp)
	movl	%ecx, -1020(%rbp)
	movl	%r8d, -1024(%rbp)
	movl	$0, -964(%rbp)
	cmpl	$1, -1020(%rbp)
	jne	.L995
	movq	-1008(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movq	-1016(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-1000(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-1000(%rbp), %rax
	movb	%dl, (%rax)
	movq	-1000(%rbp), %rax
	jmp	.L996
.L995:
	movq	-1008(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movq	-1016(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -960(%rbp)
	jmp	.L997
.L1023:
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -848(%rbp)
	movl	-964(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1016(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -888(%rbp)
	movq	-888(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rdx, -880(%rbp)
	movq	%rax, -872(%rbp)
	movq	-872(%rbp), %rax
	movq	-880(%rbp), %rdx
	movq	%rdx, -864(%rbp)
	movq	%rax, -856(%rbp)
	movq	-864(%rbp), %rdx
	movq	-856(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %xmm5
	punpcklqdq	%xmm5, %xmm0
	nop
	nop
	movaps	%xmm0, -832(%rbp)
	movl	-964(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1008(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -928(%rbp)
	movq	-928(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rdx, -920(%rbp)
	movq	%rax, -912(%rbp)
	movq	-912(%rbp), %rax
	movq	-920(%rbp), %rdx
	movq	%rdx, -904(%rbp)
	movq	%rax, -896(%rbp)
	movq	-904(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %xmm6
	punpcklqdq	%xmm6, %xmm0
	nop
	nop
	movaps	%xmm0, -816(%rbp)
	movdqa	-832(%rbp), %xmm0
	movaps	%xmm0, -32(%rbp)
	movdqa	-848(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movdqa	-16(%rbp), %xmm1
	movdqa	-32(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -800(%rbp)
	movdqa	-816(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movdqa	-848(%rbp), %xmm0
	movaps	%xmm0, -48(%rbp)
	movdqa	-48(%rbp), %xmm1
	movdqa	-64(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -784(%rbp)
	movdqa	-800(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movdqa	-784(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movdqa	-96(%rbp), %xmm0
	movdqa	-80(%rbp), %xmm1
	psubw	%xmm1, %xmm0
	movaps	%xmm0, -768(%rbp)
	movdqa	-784(%rbp), %xmm0
	movaps	%xmm0, -112(%rbp)
	movl	$2, -940(%rbp)
	movdqa	-112(%rbp), %xmm1
	movd	-940(%rbp), %xmm0
	psllw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -752(%rbp)
	movdqa	-752(%rbp), %xmm0
	movaps	%xmm0, -144(%rbp)
	movdqa	-768(%rbp), %xmm0
	movaps	%xmm0, -128(%rbp)
	movdqa	-144(%rbp), %xmm1
	movdqa	-128(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -736(%rbp)
	movdqa	-736(%rbp), %xmm0
	pslldq	$2, %xmm0
	movaps	%xmm0, -720(%rbp)
	movdqa	-736(%rbp), %xmm0
	psrldq	$2, %xmm0
	movaps	%xmm0, -704(%rbp)
	movl	-960(%rbp), %eax
	cwtl
	movdqa	-720(%rbp), %xmm0
	pinsrw	$0, %eax, %xmm0
	movaps	%xmm0, -688(%rbp)
	movl	-964(%rbp), %eax
	cltq
	leaq	8(%rax), %rdx
	movq	-1008(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-964(%rbp), %eax
	cltq
	leaq	8(%rax), %rcx
	movq	-1016(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	cwtl
	movdqa	-704(%rbp), %xmm0
	pinsrw	$7, %eax, %xmm0
	movaps	%xmm0, -672(%rbp)
	movw	$8, -982(%rbp)
	movswl	-982(%rbp), %eax
	movswl	-982(%rbp), %edx
	movswl	-982(%rbp), %ecx
	movswl	-982(%rbp), %esi
	movswl	-982(%rbp), %edi
	movswl	-982(%rbp), %r8d
	movswl	-982(%rbp), %r9d
	movswl	-982(%rbp), %r10d
	movw	%r10w, -980(%rbp)
	movw	%r9w, -978(%rbp)
	movw	%r8w, -976(%rbp)
	movw	%di, -974(%rbp)
	movw	%si, -972(%rbp)
	movw	%cx, -970(%rbp)
	movw	%dx, -968(%rbp)
	movw	%ax, -966(%rbp)
	movzwl	-966(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-968(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-970(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-972(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-974(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-976(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-978(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-980(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -656(%rbp)
	movdqa	-736(%rbp), %xmm0
	movaps	%xmm0, -160(%rbp)
	movl	$2, -944(%rbp)
	movdqa	-160(%rbp), %xmm1
	movd	-944(%rbp), %xmm0
	psllw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -640(%rbp)
	movdqa	-688(%rbp), %xmm0
	movaps	%xmm0, -192(%rbp)
	movdqa	-736(%rbp), %xmm0
	movaps	%xmm0, -176(%rbp)
	movdqa	-192(%rbp), %xmm0
	movdqa	-176(%rbp), %xmm1
	psubw	%xmm1, %xmm0
	movaps	%xmm0, -624(%rbp)
	movdqa	-672(%rbp), %xmm0
	movaps	%xmm0, -224(%rbp)
	movdqa	-736(%rbp), %xmm0
	movaps	%xmm0, -208(%rbp)
	movdqa	-224(%rbp), %xmm0
	movdqa	-208(%rbp), %xmm1
	psubw	%xmm1, %xmm0
	movaps	%xmm0, -608(%rbp)
	movdqa	-640(%rbp), %xmm0
	movaps	%xmm0, -256(%rbp)
	movdqa	-656(%rbp), %xmm0
	movaps	%xmm0, -240(%rbp)
	movdqa	-256(%rbp), %xmm1
	movdqa	-240(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -592(%rbp)
	movdqa	-624(%rbp), %xmm0
	movaps	%xmm0, -288(%rbp)
	movdqa	-592(%rbp), %xmm0
	movaps	%xmm0, -272(%rbp)
	movdqa	-288(%rbp), %xmm1
	movdqa	-272(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -576(%rbp)
	movdqa	-608(%rbp), %xmm0
	movaps	%xmm0, -320(%rbp)
	movdqa	-592(%rbp), %xmm0
	movaps	%xmm0, -304(%rbp)
	movdqa	-320(%rbp), %xmm1
	movdqa	-304(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -560(%rbp)
	movdqa	-576(%rbp), %xmm0
	movaps	%xmm0, -352(%rbp)
	movdqa	-560(%rbp), %xmm0
	movaps	%xmm0, -336(%rbp)
	movdqa	-336(%rbp), %xmm1
	movdqa	-352(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -544(%rbp)
	movdqa	-576(%rbp), %xmm0
	movaps	%xmm0, -384(%rbp)
	movdqa	-560(%rbp), %xmm0
	movaps	%xmm0, -368(%rbp)
	movdqa	-368(%rbp), %xmm1
	movdqa	-384(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -528(%rbp)
	movdqa	-544(%rbp), %xmm0
	movaps	%xmm0, -400(%rbp)
	movl	$4, -948(%rbp)
	movdqa	-400(%rbp), %xmm1
	movd	-948(%rbp), %xmm0
	psrlw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -512(%rbp)
	movdqa	-528(%rbp), %xmm0
	movaps	%xmm0, -416(%rbp)
	movl	$4, -952(%rbp)
	movdqa	-416(%rbp), %xmm1
	movd	-952(%rbp), %xmm0
	psrlw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -496(%rbp)
	movdqa	-512(%rbp), %xmm0
	movaps	%xmm0, -448(%rbp)
	movdqa	-496(%rbp), %xmm0
	movaps	%xmm0, -432(%rbp)
	movdqa	-432(%rbp), %xmm1
	movdqa	-448(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -480(%rbp)
	movl	-964(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-1000(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -936(%rbp)
	movdqa	-480(%rbp), %xmm0
	movaps	%xmm0, -464(%rbp)
	movdqa	-464(%rbp), %xmm0
	movq	-936(%rbp), %rax
	movups	%xmm0, (%rax)
	nop
	movl	-964(%rbp), %eax
	cltq
	leaq	7(%rax), %rdx
	movq	-1008(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-964(%rbp), %eax
	cltq
	leaq	7(%rax), %rcx
	movq	-1016(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -960(%rbp)
	addl	$8, -964(%rbp)
.L997:
	movl	-1020(%rbp), %eax
	subl	$1, %eax
	andl	$-8, %eax
	cmpl	%eax, -964(%rbp)
	jl	.L1023
	movl	-960(%rbp), %eax
	movl	%eax, -956(%rbp)
	movl	-964(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1008(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	-964(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1016(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	movl	%eax, -960(%rbp)
	movl	-960(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-956(%rbp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	movl	-964(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-1000(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -964(%rbp)
	jmp	.L1024
.L1025:
	movl	-960(%rbp), %eax
	movl	%eax, -956(%rbp)
	movl	-964(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1008(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	-964(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1016(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	movl	%eax, -960(%rbp)
	movl	-956(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-960(%rbp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	movl	-964(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-1000(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-960(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-956(%rbp), %eax
	addl	%edx, %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	movl	-964(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-1000(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -964(%rbp)
.L1024:
	movl	-964(%rbp), %eax
	cmpl	-1020(%rbp), %eax
	jl	.L1025
	movl	-960(%rbp), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	movl	-1020(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-1000(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-1000(%rbp), %rax
.L996:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	stbi__resample_row_hv_2_simd, .-stbi__resample_row_hv_2_simd
	.type	stbi__resample_row_generic, @function
stbi__resample_row_generic:
.LFB602:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L1027
.L1030:
	movl	$0, -4(%rbp)
	jmp	.L1028
.L1029:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L1028:
	movl	-4(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L1029
	addl	$1, -8(%rbp)
.L1027:
	movl	-8(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L1030
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	stbi__resample_row_generic, .-stbi__resample_row_generic
	.type	stbi__YCbCr_to_RGB_row, @function
stbi__YCbCr_to_RGB_row:
.LFB603:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L1033
.L1040:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$20, %eax
	addl	$524288, %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$-128, %eax
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$-128, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	imull	$1470208, %eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	imull	$-748800, %eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	imull	$-360960, %eax, %eax
	movw	$0, %ax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	imull	$1858048, %eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	sarl	$20, -24(%rbp)
	sarl	$20, -20(%rbp)
	sarl	$20, -16(%rbp)
	movl	-24(%rbp), %eax
	cmpl	$255, %eax
	jbe	.L1034
	cmpl	$0, -24(%rbp)
	jns	.L1035
	movl	$0, -24(%rbp)
	jmp	.L1034
.L1035:
	movl	$255, -24(%rbp)
.L1034:
	movl	-20(%rbp), %eax
	cmpl	$255, %eax
	jbe	.L1036
	cmpl	$0, -20(%rbp)
	jns	.L1037
	movl	$0, -20(%rbp)
	jmp	.L1036
.L1037:
	movl	$255, -20(%rbp)
.L1036:
	movl	-16(%rbp), %eax
	cmpl	$255, %eax
	jbe	.L1038
	cmpl	$0, -16(%rbp)
	jns	.L1039
	movl	$0, -16(%rbp)
	jmp	.L1038
.L1039:
	movl	$255, -16(%rbp)
.L1038:
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movl	-16(%rbp), %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movb	$-1, (%rax)
	movl	-72(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	addl	$1, -28(%rbp)
.L1033:
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L1040
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	stbi__YCbCr_to_RGB_row, .-stbi__YCbCr_to_RGB_row
	.type	stbi__YCbCr_to_RGB_simd, @function
stbi__YCbCr_to_RGB_simd:
.LFB604:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1488, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -1592(%rbp)
	movq	%rsi, -1600(%rbp)
	movq	%rdx, -1608(%rbp)
	movq	%rcx, -1616(%rbp)
	movl	%r8d, -1620(%rbp)
	movl	%r9d, -1624(%rbp)
	movl	$0, -1460(%rbp)
	cmpl	$4, -1624(%rbp)
	jne	.L1093
	movb	$-128, -1567(%rbp)
	movsbl	-1567(%rbp), %edx
	movsbl	-1567(%rbp), %ecx
	movsbl	-1567(%rbp), %esi
	movsbl	-1567(%rbp), %edi
	movsbl	-1567(%rbp), %r8d
	movsbl	-1567(%rbp), %r9d
	movsbl	-1567(%rbp), %r10d
	movsbl	-1567(%rbp), %r11d
	movsbl	-1567(%rbp), %ebx
	movsbl	-1567(%rbp), %r12d
	movsbl	-1567(%rbp), %r13d
	movsbl	-1567(%rbp), %r14d
	movsbl	-1567(%rbp), %r15d
	movsbl	-1567(%rbp), %eax
	movl	%eax, -1648(%rbp)
	movsbl	-1567(%rbp), %eax
	movl	%eax, -1628(%rbp)
	movsbl	-1567(%rbp), %eax
	movb	%al, -1566(%rbp)
	movzbl	-1628(%rbp), %eax
	movb	%al, -1565(%rbp)
	movzbl	-1648(%rbp), %eax
	movb	%al, -1564(%rbp)
	movb	%r15b, -1563(%rbp)
	movb	%r14b, -1562(%rbp)
	movb	%r13b, -1561(%rbp)
	movb	%r12b, -1560(%rbp)
	movb	%bl, -1559(%rbp)
	movb	%r11b, -1558(%rbp)
	movb	%r10b, -1557(%rbp)
	movb	%r9b, -1556(%rbp)
	movb	%r8b, -1555(%rbp)
	movb	%dil, -1554(%rbp)
	movb	%sil, -1553(%rbp)
	movb	%cl, -1552(%rbp)
	movb	%dl, -1551(%rbp)
	movzbl	-1558(%rbp), %edx
	movzbl	-1557(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1556(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1555(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1554(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1553(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1552(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1551(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1566(%rbp), %eax
	movzbl	-1565(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1564(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1563(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1562(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1561(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1560(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1559(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movq	%rdx, -1648(%rbp)
	movq	%rax, -1640(%rbp)
	movdqa	-1648(%rbp), %xmm0
	nop
	movaps	%xmm0, -1280(%rbp)
	movw	$5743, -1478(%rbp)
	movswl	-1478(%rbp), %eax
	movswl	-1478(%rbp), %edx
	movswl	-1478(%rbp), %ecx
	movswl	-1478(%rbp), %esi
	movswl	-1478(%rbp), %edi
	movswl	-1478(%rbp), %r8d
	movswl	-1478(%rbp), %r9d
	movswl	-1478(%rbp), %r10d
	movw	%r10w, -1476(%rbp)
	movw	%r9w, -1474(%rbp)
	movw	%r8w, -1472(%rbp)
	movw	%di, -1470(%rbp)
	movw	%si, -1468(%rbp)
	movw	%cx, -1466(%rbp)
	movw	%dx, -1464(%rbp)
	movw	%ax, -1462(%rbp)
	movzwl	-1462(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1464(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-1466(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1468(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-1470(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1472(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-1474(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1476(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -1264(%rbp)
	movw	$-2925, -1496(%rbp)
	movswl	-1496(%rbp), %eax
	movswl	-1496(%rbp), %edx
	movswl	-1496(%rbp), %ecx
	movswl	-1496(%rbp), %esi
	movswl	-1496(%rbp), %edi
	movswl	-1496(%rbp), %r8d
	movswl	-1496(%rbp), %r9d
	movswl	-1496(%rbp), %r10d
	movw	%r10w, -1494(%rbp)
	movw	%r9w, -1492(%rbp)
	movw	%r8w, -1490(%rbp)
	movw	%di, -1488(%rbp)
	movw	%si, -1486(%rbp)
	movw	%cx, -1484(%rbp)
	movw	%dx, -1482(%rbp)
	movw	%ax, -1480(%rbp)
	movzwl	-1480(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1482(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-1484(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1486(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-1488(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1490(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-1492(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1494(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -1248(%rbp)
	movw	$-1410, -1514(%rbp)
	movswl	-1514(%rbp), %eax
	movswl	-1514(%rbp), %edx
	movswl	-1514(%rbp), %ecx
	movswl	-1514(%rbp), %esi
	movswl	-1514(%rbp), %edi
	movswl	-1514(%rbp), %r8d
	movswl	-1514(%rbp), %r9d
	movswl	-1514(%rbp), %r10d
	movw	%r10w, -1512(%rbp)
	movw	%r9w, -1510(%rbp)
	movw	%r8w, -1508(%rbp)
	movw	%di, -1506(%rbp)
	movw	%si, -1504(%rbp)
	movw	%cx, -1502(%rbp)
	movw	%dx, -1500(%rbp)
	movw	%ax, -1498(%rbp)
	movzwl	-1498(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1500(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-1502(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1504(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-1506(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1508(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-1510(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1512(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -1232(%rbp)
	movw	$7258, -1532(%rbp)
	movswl	-1532(%rbp), %eax
	movswl	-1532(%rbp), %edx
	movswl	-1532(%rbp), %ecx
	movswl	-1532(%rbp), %esi
	movswl	-1532(%rbp), %edi
	movswl	-1532(%rbp), %r8d
	movswl	-1532(%rbp), %r9d
	movswl	-1532(%rbp), %r10d
	movw	%r10w, -1530(%rbp)
	movw	%r9w, -1528(%rbp)
	movw	%r8w, -1526(%rbp)
	movw	%di, -1524(%rbp)
	movw	%si, -1522(%rbp)
	movw	%cx, -1520(%rbp)
	movw	%dx, -1518(%rbp)
	movw	%ax, -1516(%rbp)
	movzwl	-1516(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1518(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-1520(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1522(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-1524(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1526(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-1528(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1530(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -1216(%rbp)
	movb	$-128, -1584(%rbp)
	movsbl	-1584(%rbp), %edx
	movsbl	-1584(%rbp), %ecx
	movsbl	-1584(%rbp), %esi
	movsbl	-1584(%rbp), %edi
	movsbl	-1584(%rbp), %r8d
	movsbl	-1584(%rbp), %r9d
	movsbl	-1584(%rbp), %r10d
	movsbl	-1584(%rbp), %r11d
	movsbl	-1584(%rbp), %ebx
	movsbl	-1584(%rbp), %r12d
	movsbl	-1584(%rbp), %r13d
	movsbl	-1584(%rbp), %r14d
	movsbl	-1584(%rbp), %r15d
	movsbl	-1584(%rbp), %eax
	movl	%eax, -1648(%rbp)
	movsbl	-1584(%rbp), %eax
	movl	%eax, -1628(%rbp)
	movsbl	-1584(%rbp), %eax
	movb	%al, -1583(%rbp)
	movzbl	-1628(%rbp), %eax
	movb	%al, -1582(%rbp)
	movzbl	-1648(%rbp), %eax
	movb	%al, -1581(%rbp)
	movb	%r15b, -1580(%rbp)
	movb	%r14b, -1579(%rbp)
	movb	%r13b, -1578(%rbp)
	movb	%r12b, -1577(%rbp)
	movb	%bl, -1576(%rbp)
	movb	%r11b, -1575(%rbp)
	movb	%r10b, -1574(%rbp)
	movb	%r9b, -1573(%rbp)
	movb	%r8b, -1572(%rbp)
	movb	%dil, -1571(%rbp)
	movb	%sil, -1570(%rbp)
	movb	%cl, -1569(%rbp)
	movb	%dl, -1568(%rbp)
	movzbl	-1575(%rbp), %edx
	movzbl	-1574(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1573(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1572(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1571(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1570(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1569(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1568(%rbp), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-1583(%rbp), %eax
	movzbl	-1582(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1581(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1580(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1579(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1578(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1577(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-1576(%rbp), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movq	%rdx, -1648(%rbp)
	movq	%rax, -1640(%rbp)
	movdqa	-1648(%rbp), %xmm0
	nop
	movaps	%xmm0, -1200(%rbp)
	movw	$255, -1550(%rbp)
	movswl	-1550(%rbp), %eax
	movswl	-1550(%rbp), %edx
	movswl	-1550(%rbp), %ecx
	movswl	-1550(%rbp), %esi
	movswl	-1550(%rbp), %edi
	movswl	-1550(%rbp), %r8d
	movswl	-1550(%rbp), %r9d
	movswl	-1550(%rbp), %r10d
	movw	%r10w, -1548(%rbp)
	movw	%r9w, -1546(%rbp)
	movw	%r8w, -1544(%rbp)
	movw	%di, -1542(%rbp)
	movw	%si, -1540(%rbp)
	movw	%cx, -1538(%rbp)
	movw	%dx, -1536(%rbp)
	movw	%ax, -1534(%rbp)
	movzwl	-1534(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1536(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm1
	movzwl	-1538(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1540(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm4
	movzwl	-1542(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1544(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm2
	movzwl	-1546(%rbp), %eax
	movd	%eax, %xmm0
	movzwl	-1548(%rbp), %eax
	pinsrw	$1, %eax, %xmm0
	movdqa	%xmm0, %xmm3
	punpckldq	%xmm4, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklqdq	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	nop
	movaps	%xmm0, -1184(%rbp)
	jmp	.L1057
.L1092:
	movl	-1460(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1600(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1320(%rbp)
	movq	-1320(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rdx, -1312(%rbp)
	movq	%rax, -1304(%rbp)
	movq	-1304(%rbp), %rax
	movq	-1312(%rbp), %rdx
	movq	%rdx, -1296(%rbp)
	movq	%rax, -1288(%rbp)
	movq	-1296(%rbp), %rdx
	movq	-1288(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %xmm5
	punpcklqdq	%xmm5, %xmm0
	nop
	nop
	movaps	%xmm0, -1168(%rbp)
	movl	-1460(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1616(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1360(%rbp)
	movq	-1360(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rdx, -1352(%rbp)
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rax
	movq	-1352(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	%rax, -1328(%rbp)
	movq	-1336(%rbp), %rdx
	movq	-1328(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %xmm6
	punpcklqdq	%xmm6, %xmm0
	nop
	nop
	movaps	%xmm0, -1152(%rbp)
	movl	-1460(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1608(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1400(%rbp)
	movq	-1400(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rdx, -1392(%rbp)
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	-1392(%rbp), %rdx
	movq	%rdx, -1376(%rbp)
	movq	%rax, -1368(%rbp)
	movq	-1376(%rbp), %rdx
	movq	-1368(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %xmm7
	punpcklqdq	%xmm7, %xmm0
	nop
	nop
	movaps	%xmm0, -1136(%rbp)
	movdqa	-1152(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movdqa	-1280(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movdqa	-80(%rbp), %xmm1
	movdqa	-64(%rbp), %xmm0
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -1120(%rbp)
	movdqa	-1136(%rbp), %xmm0
	movaps	%xmm0, -112(%rbp)
	movdqa	-1280(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movdqa	-112(%rbp), %xmm1
	movdqa	-96(%rbp), %xmm0
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -1104(%rbp)
	movdqa	-1200(%rbp), %xmm0
	movaps	%xmm0, -144(%rbp)
	movdqa	-1168(%rbp), %xmm0
	movaps	%xmm0, -128(%rbp)
	movdqa	-128(%rbp), %xmm1
	movdqa	-144(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -1088(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -176(%rbp)
	movdqa	-1120(%rbp), %xmm0
	movaps	%xmm0, -160(%rbp)
	movdqa	-160(%rbp), %xmm1
	movdqa	-176(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -1072(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -208(%rbp)
	movdqa	-1104(%rbp), %xmm0
	movaps	%xmm0, -192(%rbp)
	movdqa	-192(%rbp), %xmm1
	movdqa	-208(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -1056(%rbp)
	movdqa	-1088(%rbp), %xmm0
	movaps	%xmm0, -224(%rbp)
	movl	$4, -1420(%rbp)
	movdqa	-224(%rbp), %xmm1
	movd	-1420(%rbp), %xmm0
	psrlw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -1040(%rbp)
	movdqa	-1264(%rbp), %xmm0
	movaps	%xmm0, -256(%rbp)
	movdqa	-1072(%rbp), %xmm0
	movaps	%xmm0, -240(%rbp)
	movdqa	-240(%rbp), %xmm0
	movdqa	-256(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
	movaps	%xmm0, -1024(%rbp)
	movdqa	-1232(%rbp), %xmm0
	movaps	%xmm0, -288(%rbp)
	movdqa	-1056(%rbp), %xmm0
	movaps	%xmm0, -272(%rbp)
	movdqa	-272(%rbp), %xmm0
	movdqa	-288(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
	movaps	%xmm0, -1008(%rbp)
	movdqa	-1056(%rbp), %xmm0
	movaps	%xmm0, -320(%rbp)
	movdqa	-1216(%rbp), %xmm0
	movaps	%xmm0, -304(%rbp)
	movdqa	-304(%rbp), %xmm0
	movdqa	-320(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
	movaps	%xmm0, -992(%rbp)
	movdqa	-1072(%rbp), %xmm0
	movaps	%xmm0, -352(%rbp)
	movdqa	-1248(%rbp), %xmm0
	movaps	%xmm0, -336(%rbp)
	movdqa	-336(%rbp), %xmm0
	movdqa	-352(%rbp), %xmm1
	pmulhw	%xmm1, %xmm0
	movaps	%xmm0, -976(%rbp)
	movdqa	-1024(%rbp), %xmm0
	movaps	%xmm0, -384(%rbp)
	movdqa	-1040(%rbp), %xmm0
	movaps	%xmm0, -368(%rbp)
	movdqa	-384(%rbp), %xmm1
	movdqa	-368(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -960(%rbp)
	movdqa	-1008(%rbp), %xmm0
	movaps	%xmm0, -416(%rbp)
	movdqa	-1040(%rbp), %xmm0
	movaps	%xmm0, -400(%rbp)
	movdqa	-416(%rbp), %xmm1
	movdqa	-400(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -944(%rbp)
	movdqa	-1040(%rbp), %xmm0
	movaps	%xmm0, -448(%rbp)
	movdqa	-992(%rbp), %xmm0
	movaps	%xmm0, -432(%rbp)
	movdqa	-448(%rbp), %xmm1
	movdqa	-432(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -928(%rbp)
	movdqa	-944(%rbp), %xmm0
	movaps	%xmm0, -480(%rbp)
	movdqa	-976(%rbp), %xmm0
	movaps	%xmm0, -464(%rbp)
	movdqa	-480(%rbp), %xmm1
	movdqa	-464(%rbp), %xmm0
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -912(%rbp)
	movdqa	-960(%rbp), %xmm0
	movaps	%xmm0, -496(%rbp)
	movl	$4, -1424(%rbp)
	movdqa	-496(%rbp), %xmm1
	movd	-1424(%rbp), %xmm0
	psraw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -896(%rbp)
	movdqa	-928(%rbp), %xmm0
	movaps	%xmm0, -512(%rbp)
	movl	$4, -1428(%rbp)
	movdqa	-512(%rbp), %xmm1
	movd	-1428(%rbp), %xmm0
	psraw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -880(%rbp)
	movdqa	-912(%rbp), %xmm0
	movaps	%xmm0, -528(%rbp)
	movl	$4, -1432(%rbp)
	movdqa	-528(%rbp), %xmm1
	movd	-1432(%rbp), %xmm0
	psraw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movaps	%xmm0, -864(%rbp)
	movdqa	-896(%rbp), %xmm0
	movaps	%xmm0, -560(%rbp)
	movdqa	-880(%rbp), %xmm0
	movaps	%xmm0, -544(%rbp)
	movdqa	-544(%rbp), %xmm1
	movdqa	-560(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -848(%rbp)
	movdqa	-864(%rbp), %xmm0
	movaps	%xmm0, -592(%rbp)
	movdqa	-1184(%rbp), %xmm0
	movaps	%xmm0, -576(%rbp)
	movdqa	-576(%rbp), %xmm1
	movdqa	-592(%rbp), %xmm0
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -832(%rbp)
	movdqa	-848(%rbp), %xmm0
	movaps	%xmm0, -624(%rbp)
	movdqa	-832(%rbp), %xmm0
	movaps	%xmm0, -608(%rbp)
	movdqa	-608(%rbp), %xmm1
	movdqa	-624(%rbp), %xmm0
	punpcklbw	%xmm1, %xmm0
	movaps	%xmm0, -816(%rbp)
	movdqa	-848(%rbp), %xmm0
	movaps	%xmm0, -656(%rbp)
	movdqa	-832(%rbp), %xmm0
	movaps	%xmm0, -640(%rbp)
	movdqa	-640(%rbp), %xmm1
	movdqa	-656(%rbp), %xmm0
	punpckhbw	%xmm1, %xmm0
	movaps	%xmm0, -800(%rbp)
	movdqa	-816(%rbp), %xmm0
	movaps	%xmm0, -688(%rbp)
	movdqa	-800(%rbp), %xmm0
	movaps	%xmm0, -672(%rbp)
	movdqa	-672(%rbp), %xmm1
	movdqa	-688(%rbp), %xmm0
	punpcklwd	%xmm1, %xmm0
	movaps	%xmm0, -784(%rbp)
	movdqa	-816(%rbp), %xmm0
	movaps	%xmm0, -720(%rbp)
	movdqa	-800(%rbp), %xmm0
	movaps	%xmm0, -704(%rbp)
	movdqa	-704(%rbp), %xmm1
	movdqa	-720(%rbp), %xmm0
	punpckhwd	%xmm1, %xmm0
	movaps	%xmm0, -768(%rbp)
	movq	-1592(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movdqa	-784(%rbp), %xmm0
	movaps	%xmm0, -736(%rbp)
	movdqa	-736(%rbp), %xmm0
	movq	-1408(%rbp), %rax
	movups	%xmm0, (%rax)
	nop
	movq	-1592(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1416(%rbp)
	movdqa	-768(%rbp), %xmm0
	movaps	%xmm0, -752(%rbp)
	movdqa	-752(%rbp), %xmm0
	movq	-1416(%rbp), %rax
	movups	%xmm0, (%rax)
	nop
	addq	$32, -1592(%rbp)
	addl	$8, -1460(%rbp)
.L1057:
	movl	-1460(%rbp), %eax
	addl	$7, %eax
	cmpl	%eax, -1620(%rbp)
	jg	.L1092
	jmp	.L1093
.L1100:
	movl	-1460(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1600(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$20, %eax
	addl	$524288, %eax
	movl	%eax, -1444(%rbp)
	movl	-1460(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1616(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$-128, %eax
	movl	%eax, -1440(%rbp)
	movl	-1460(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1608(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$-128, %eax
	movl	%eax, -1436(%rbp)
	movl	-1440(%rbp), %eax
	imull	$1470208, %eax, %edx
	movl	-1444(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -1456(%rbp)
	movl	-1440(%rbp), %eax
	imull	$-748800, %eax, %edx
	movl	-1444(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	-1436(%rbp), %eax
	imull	$-360960, %eax, %eax
	movw	$0, %ax
	addl	%edx, %eax
	movl	%eax, -1452(%rbp)
	movl	-1436(%rbp), %eax
	imull	$1858048, %eax, %edx
	movl	-1444(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -1448(%rbp)
	sarl	$20, -1456(%rbp)
	sarl	$20, -1452(%rbp)
	sarl	$20, -1448(%rbp)
	movl	-1456(%rbp), %eax
	cmpl	$255, %eax
	jbe	.L1094
	cmpl	$0, -1456(%rbp)
	jns	.L1095
	movl	$0, -1456(%rbp)
	jmp	.L1094
.L1095:
	movl	$255, -1456(%rbp)
.L1094:
	movl	-1452(%rbp), %eax
	cmpl	$255, %eax
	jbe	.L1096
	cmpl	$0, -1452(%rbp)
	jns	.L1097
	movl	$0, -1452(%rbp)
	jmp	.L1096
.L1097:
	movl	$255, -1452(%rbp)
.L1096:
	movl	-1448(%rbp), %eax
	cmpl	$255, %eax
	jbe	.L1098
	cmpl	$0, -1448(%rbp)
	jns	.L1099
	movl	$0, -1448(%rbp)
	jmp	.L1098
.L1099:
	movl	$255, -1448(%rbp)
.L1098:
	movl	-1456(%rbp), %eax
	movl	%eax, %edx
	movq	-1592(%rbp), %rax
	movb	%dl, (%rax)
	movq	-1592(%rbp), %rax
	addq	$1, %rax
	movl	-1452(%rbp), %edx
	movb	%dl, (%rax)
	movq	-1592(%rbp), %rax
	addq	$2, %rax
	movl	-1448(%rbp), %edx
	movb	%dl, (%rax)
	movq	-1592(%rbp), %rax
	addq	$3, %rax
	movb	$-1, (%rax)
	movl	-1624(%rbp), %eax
	cltq
	addq	%rax, -1592(%rbp)
	addl	$1, -1460(%rbp)
.L1093:
	movl	-1460(%rbp), %eax
	cmpl	-1620(%rbp), %eax
	jl	.L1100
	nop
	nop
	addq	$1488, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	stbi__YCbCr_to_RGB_simd, .-stbi__YCbCr_to_RGB_simd
	.type	stbi__setup_jpeg, @function
stbi__setup_jpeg:
.LFB605:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	stbi__idct_block(%rip), %rdx
	movq	%rdx, 18544(%rax)
	movq	-8(%rbp), %rax
	leaq	stbi__YCbCr_to_RGB_row(%rip), %rdx
	movq	%rdx, 18552(%rax)
	movq	-8(%rbp), %rax
	leaq	stbi__resample_row_hv_2(%rip), %rdx
	movq	%rdx, 18560(%rax)
	call	stbi__sse2_available
	testl	%eax, %eax
	je	.L1103
	movq	-8(%rbp), %rax
	leaq	stbi__idct_simd(%rip), %rdx
	movq	%rdx, 18544(%rax)
	movq	-8(%rbp), %rax
	leaq	stbi__YCbCr_to_RGB_simd(%rip), %rdx
	movq	%rdx, 18552(%rax)
	movq	-8(%rbp), %rax
	leaq	stbi__resample_row_hv_2_simd(%rip), %rdx
	movq	%rdx, 18560(%rax)
.L1103:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	stbi__setup_jpeg, .-stbi__setup_jpeg
	.type	stbi__cleanup_jpeg, @function
stbi__cleanup_jpeg:
.LFB606:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__free_jpeg_components
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	stbi__cleanup_jpeg, .-stbi__cleanup_jpeg
	.type	stbi__blinn_8x8, @function
stbi__blinn_8x8:
.LFB607:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -20(%rbp)
	movb	%al, -24(%rbp)
	movzbl	-20(%rbp), %edx
	movzbl	-24(%rbp), %eax
	imull	%edx, %eax
	subl	$-128, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	shrl	$8, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	stbi__blinn_8x8, .-stbi__blinn_8x8
	.section	.rodata
.LC42:
	.string	"bad req_comp"
	.text
	.type	load_jpeg_image, @function
load_jpeg_image:
.LFB608:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%rcx, -384(%rbp)
	movl	%r8d, -388(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 8(%rax)
	cmpl	$0, -388(%rbp)
	js	.L1108
	cmpl	$4, -388(%rbp)
	jle	.L1109
.L1108:
	leaq	.LC42(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1110
.L1109:
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__decode_jpeg_image
	testl	%eax, %eax
	jne	.L1111
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__cleanup_jpeg
	movl	$0, %eax
	jmp	.L1110
.L1111:
	cmpl	$0, -388(%rbp)
	jne	.L1112
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jle	.L1113
	movl	$3, %eax
	jmp	.L1115
.L1113:
	movl	$1, %eax
	jmp	.L1115
.L1112:
	movl	-388(%rbp), %eax
.L1115:
	movl	%eax, -316(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L1116
	movq	-360(%rbp), %rax
	movl	18512(%rax), %eax
	cmpl	$3, %eax
	je	.L1117
	movq	-360(%rbp), %rax
	movl	18508(%rax), %eax
	testl	%eax, %eax
	jne	.L1116
	movq	-360(%rbp), %rax
	movl	18504(%rax), %eax
	testl	%eax, %eax
	jne	.L1116
.L1117:
	movl	$1, %eax
	jmp	.L1118
.L1116:
	movl	$0, %eax
.L1118:
	movl	%eax, -312(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L1119
	cmpl	$2, -316(%rbp)
	jg	.L1119
	cmpl	$0, -312(%rbp)
	jne	.L1119
	movl	$1, -332(%rbp)
	jmp	.L1120
.L1119:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, -332(%rbp)
.L1120:
	cmpl	$0, -332(%rbp)
	jg	.L1121
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__cleanup_jpeg
	movl	$0, %eax
	jmp	.L1110
.L1121:
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movl	$0, -328(%rbp)
	jmp	.L1122
.L1130:
	leaq	-224(%rbp), %rcx
	movl	-328(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	addl	$3, %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, %rcx
	movq	-360(%rbp), %rsi
	movl	-328(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18152, %rax
	movq	%rcx, (%rax)
	movq	-360(%rbp), %rcx
	movl	-328(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18152, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L1123
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__cleanup_jpeg
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1110
.L1123:
	movq	-360(%rbp), %rax
	movl	18056(%rax), %ecx
	movq	-360(%rbp), %rsi
	movl	-328(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18084, %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	movl	%eax, %edx
	movq	-264(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-360(%rbp), %rax
	movl	18060(%rax), %ecx
	movq	-360(%rbp), %rsi
	movl	-328(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18088, %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	movl	%eax, %edx
	movq	-264(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-264(%rbp), %rax
	movl	28(%rax), %eax
	sarl	%eax
	movl	%eax, %edx
	movq	-264(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-264(%rbp), %rax
	movl	24(%rax), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-264(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	movq	-264(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-264(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-360(%rbp), %rcx
	movl	-328(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$18128, %rax
	movq	(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-264(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-264(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L1125
	movq	-264(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jne	.L1125
	movq	-264(%rbp), %rax
	leaq	resample_row_1(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L1126
.L1125:
	movq	-264(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L1127
	movq	-264(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$2, %eax
	jne	.L1127
	movq	-264(%rbp), %rax
	leaq	stbi__resample_row_v_2(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L1126
.L1127:
	movq	-264(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L1128
	movq	-264(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jne	.L1128
	movq	-264(%rbp), %rax
	leaq	stbi__resample_row_h_2(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L1126
.L1128:
	movq	-264(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L1129
	movq	-264(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$2, %eax
	jne	.L1129
	movq	-360(%rbp), %rax
	movq	18560(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L1126
.L1129:
	movq	-264(%rbp), %rax
	leaq	stbi__resample_row_generic(%rip), %rdx
	movq	%rdx, (%rax)
.L1126:
	addl	$1, -328(%rbp)
.L1122:
	movl	-328(%rbp), %eax
	cmpl	-332(%rbp), %eax
	jl	.L1130
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	-316(%rbp), %eax
	movl	$1, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -296(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.L1131
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__cleanup_jpeg
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1110
.L1131:
	movl	$0, -320(%rbp)
	jmp	.L1132
.L1172:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movl	-316(%rbp), %eax
	imull	%edx, %eax
	imull	-320(%rbp), %eax
	movl	%eax, %edx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movl	$0, -328(%rbp)
	jmp	.L1133
.L1139:
	leaq	-224(%rbp), %rcx
	movl	-328(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movl	36(%rax), %edx
	movq	-272(%rbp), %rax
	movl	28(%rax), %eax
	sarl	%eax
	cmpl	%eax, %edx
	setge	%al
	movzbl	%al, %eax
	movl	%eax, -308(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %r9
	movq	-272(%rbp), %rax
	movl	24(%rax), %r10d
	movq	-272(%rbp), %rax
	movl	32(%rax), %edi
	cmpl	$0, -308(%rbp)
	je	.L1134
	movq	-272(%rbp), %rax
	movq	8(%rax), %rdx
	jmp	.L1135
.L1134:
	movq	-272(%rbp), %rax
	movq	16(%rax), %rdx
.L1135:
	cmpl	$0, -308(%rbp)
	je	.L1136
	movq	-272(%rbp), %rax
	movq	16(%rax), %rsi
	jmp	.L1137
.L1136:
	movq	-272(%rbp), %rax
	movq	8(%rax), %rsi
.L1137:
	movq	-360(%rbp), %r8
	movl	-328(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%r8, %rax
	addq	$18152, %rax
	movq	(%rax), %rax
	movl	%r10d, %r8d
	movl	%edi, %ecx
	movq	%rax, %rdi
	call	*%r9
	movl	-328(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -256(%rbp,%rdx,8)
	movq	-272(%rbp), %rax
	movl	36(%rax), %eax
	leal	1(%rax), %edx
	movq	-272(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-272(%rbp), %rax
	movl	36(%rax), %edx
	movq	-272(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, %edx
	jl	.L1138
	movq	-272(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-272(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-272(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-272(%rbp), %rax
	movl	40(%rax), %eax
	leal	1(%rax), %edx
	movq	-272(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-272(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-360(%rbp), %rsi
	movl	-328(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18112, %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	jge	.L1138
	movq	-272(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-360(%rbp), %rsi
	movl	-328(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$18116, %rax
	movl	(%rax), %eax
	cltq
	leaq	(%rcx,%rax), %rdx
	movq	-272(%rbp), %rax
	movq	%rdx, 16(%rax)
.L1138:
	addl	$1, -328(%rbp)
.L1133:
	movl	-328(%rbp), %eax
	cmpl	-332(%rbp), %eax
	jl	.L1139
	cmpl	$2, -316(%rbp)
	jle	.L1140
	movq	-256(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L1141
	cmpl	$0, -312(%rbp)
	je	.L1142
	movl	$0, -324(%rbp)
	jmp	.L1143
.L1144:
	movl	-324(%rbp), %edx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-304(%rbp), %rax
	movb	%dl, (%rax)
	movq	-248(%rbp), %rdx
	movl	-324(%rbp), %eax
	addq	%rdx, %rax
	movq	-304(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-240(%rbp), %rdx
	movl	-324(%rbp), %eax
	addq	%rdx, %rax
	movq	-304(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-304(%rbp), %rax
	addq	$3, %rax
	movb	$-1, (%rax)
	movl	-316(%rbp), %eax
	cltq
	addq	%rax, -304(%rbp)
	addl	$1, -324(%rbp)
.L1143:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -324(%rbp)
	jb	.L1144
	jmp	.L1145
.L1142:
	movq	-360(%rbp), %rax
	movq	18552(%rax), %r10
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %r8d
	movq	-240(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movl	-316(%rbp), %edi
	movq	-280(%rbp), %rsi
	movq	-304(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	*%r10
	jmp	.L1145
.L1141:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L1146
	movq	-360(%rbp), %rax
	movl	18508(%rax), %eax
	testl	%eax, %eax
	jne	.L1147
	movl	$0, -324(%rbp)
	jmp	.L1148
.L1149:
	movq	-232(%rbp), %rdx
	movl	-324(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -333(%rbp)
	movzbl	-333(%rbp), %edx
	movq	-256(%rbp), %rcx
	movl	-324(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movq	-304(%rbp), %rdx
	movb	%al, (%rdx)
	movzbl	-333(%rbp), %edx
	movq	-248(%rbp), %rcx
	movl	-324(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-304(%rbp), %rcx
	leaq	1(%rcx), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movb	%al, (%rbx)
	movzbl	-333(%rbp), %edx
	movq	-240(%rbp), %rcx
	movl	-324(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-304(%rbp), %rcx
	leaq	2(%rcx), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movb	%al, (%rbx)
	movq	-304(%rbp), %rax
	addq	$3, %rax
	movb	$-1, (%rax)
	movl	-316(%rbp), %eax
	cltq
	addq	%rax, -304(%rbp)
	addl	$1, -324(%rbp)
.L1148:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -324(%rbp)
	jb	.L1149
	jmp	.L1145
.L1147:
	movq	-360(%rbp), %rax
	movl	18508(%rax), %eax
	cmpl	$2, %eax
	jne	.L1150
	movq	-360(%rbp), %rax
	movq	18552(%rax), %r10
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %r8d
	movq	-240(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movl	-316(%rbp), %edi
	movq	-280(%rbp), %rsi
	movq	-304(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	*%r10
	movl	$0, -324(%rbp)
	jmp	.L1151
.L1152:
	movq	-232(%rbp), %rdx
	movl	-324(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -334(%rbp)
	movzbl	-334(%rbp), %edx
	movq	-304(%rbp), %rax
	movzbl	(%rax), %eax
	notl	%eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movq	-304(%rbp), %rdx
	movb	%al, (%rdx)
	movzbl	-334(%rbp), %edx
	movq	-304(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	notl	%eax
	movzbl	%al, %eax
	movq	-304(%rbp), %rcx
	leaq	1(%rcx), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movb	%al, (%rbx)
	movzbl	-334(%rbp), %edx
	movq	-304(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	notl	%eax
	movzbl	%al, %eax
	movq	-304(%rbp), %rcx
	leaq	2(%rcx), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movb	%al, (%rbx)
	movl	-316(%rbp), %eax
	cltq
	addq	%rax, -304(%rbp)
	addl	$1, -324(%rbp)
.L1151:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -324(%rbp)
	jb	.L1152
	jmp	.L1145
.L1150:
	movq	-360(%rbp), %rax
	movq	18552(%rax), %r10
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %r8d
	movq	-240(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movl	-316(%rbp), %edi
	movq	-280(%rbp), %rsi
	movq	-304(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	*%r10
	jmp	.L1145
.L1146:
	movl	$0, -324(%rbp)
	jmp	.L1153
.L1154:
	movl	-324(%rbp), %edx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	movq	-304(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-304(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-304(%rbp), %rax
	movb	%dl, (%rax)
	movq	-304(%rbp), %rax
	addq	$3, %rax
	movb	$-1, (%rax)
	movl	-316(%rbp), %eax
	cltq
	addq	%rax, -304(%rbp)
	addl	$1, -324(%rbp)
.L1153:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -324(%rbp)
	jb	.L1154
	jmp	.L1145
.L1140:
	cmpl	$0, -312(%rbp)
	je	.L1155
	cmpl	$1, -316(%rbp)
	jne	.L1156
	movl	$0, -324(%rbp)
	jmp	.L1157
.L1158:
	movq	-240(%rbp), %rdx
	movl	-324(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-248(%rbp), %rcx
	movl	-324(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-256(%rbp), %rsi
	movl	-324(%rbp), %eax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-304(%rbp), %rbx
	leaq	1(%rbx), %rsi
	movq	%rsi, -304(%rbp)
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	movb	%al, (%rbx)
	addl	$1, -324(%rbp)
.L1157:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -324(%rbp)
	jb	.L1158
	jmp	.L1145
.L1156:
	movl	$0, -324(%rbp)
	jmp	.L1159
.L1160:
	movq	-240(%rbp), %rdx
	movl	-324(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-248(%rbp), %rcx
	movl	-324(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-256(%rbp), %rsi
	movl	-324(%rbp), %eax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	movq	-304(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-304(%rbp), %rax
	addq	$1, %rax
	movb	$-1, (%rax)
	addl	$1, -324(%rbp)
	addq	$2, -304(%rbp)
.L1159:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -324(%rbp)
	jb	.L1160
	jmp	.L1145
.L1155:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L1161
	movq	-360(%rbp), %rax
	movl	18508(%rax), %eax
	testl	%eax, %eax
	jne	.L1161
	movl	$0, -324(%rbp)
	jmp	.L1162
.L1163:
	movq	-232(%rbp), %rdx
	movl	-324(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -338(%rbp)
	movzbl	-338(%rbp), %edx
	movq	-256(%rbp), %rcx
	movl	-324(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movb	%al, -337(%rbp)
	movzbl	-338(%rbp), %edx
	movq	-248(%rbp), %rcx
	movl	-324(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movb	%al, -336(%rbp)
	movzbl	-338(%rbp), %edx
	movq	-240(%rbp), %rcx
	movl	-324(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movb	%al, -335(%rbp)
	movzbl	-335(%rbp), %edx
	movzbl	-336(%rbp), %ecx
	movzbl	-337(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__compute_y
	movq	-304(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-304(%rbp), %rax
	addq	$1, %rax
	movb	$-1, (%rax)
	movl	-316(%rbp), %eax
	cltq
	addq	%rax, -304(%rbp)
	addl	$1, -324(%rbp)
.L1162:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -324(%rbp)
	jb	.L1163
	jmp	.L1145
.L1161:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L1164
	movq	-360(%rbp), %rax
	movl	18508(%rax), %eax
	cmpl	$2, %eax
	jne	.L1164
	movl	$0, -324(%rbp)
	jmp	.L1165
.L1166:
	movq	-232(%rbp), %rdx
	movl	-324(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-256(%rbp), %rcx
	movl	-324(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	notl	%eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__blinn_8x8
	movq	-304(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-304(%rbp), %rax
	addq	$1, %rax
	movb	$-1, (%rax)
	movl	-316(%rbp), %eax
	cltq
	addq	%rax, -304(%rbp)
	addl	$1, -324(%rbp)
.L1165:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -324(%rbp)
	jb	.L1166
	jmp	.L1145
.L1164:
	movq	-256(%rbp), %rax
	movq	%rax, -288(%rbp)
	cmpl	$1, -316(%rbp)
	jne	.L1167
	movl	$0, -324(%rbp)
	jmp	.L1168
.L1169:
	movl	-324(%rbp), %edx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movl	-324(%rbp), %ecx
	movq	-304(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -324(%rbp)
.L1168:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -324(%rbp)
	jb	.L1169
	jmp	.L1145
.L1167:
	movl	$0, -324(%rbp)
	jmp	.L1170
.L1171:
	movl	-324(%rbp), %edx
	movq	-288(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-304(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -304(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	movq	-304(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -304(%rbp)
	movb	$-1, (%rax)
	addl	$1, -324(%rbp)
.L1170:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -324(%rbp)
	jb	.L1171
.L1145:
	addl	$1, -320(%rbp)
.L1132:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -320(%rbp)
	jb	.L1172
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__cleanup_jpeg
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-368(%rbp), %rax
	movl	%edx, (%rax)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -384(%rbp)
	je	.L1173
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jle	.L1174
	movl	$3, %edx
	jmp	.L1175
.L1174:
	movl	$1, %edx
.L1175:
	movq	-384(%rbp), %rax
	movl	%edx, (%rax)
.L1173:
	movq	-296(%rbp), %rax
.L1110:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1176
	call	__stack_chk_fail@PLT
.L1176:
	addq	$392, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	load_jpeg_image, .-load_jpeg_image
	.type	stbi__jpeg_load, @function
stbi__jpeg_load:
.LFB609:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movl	$18568, %edi
	call	stbi__malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1178
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1179
.L1178:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__setup_jpeg
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	load_jpeg_image
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
.L1179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	stbi__jpeg_load, .-stbi__jpeg_load
	.type	stbi__jpeg_test, @function
stbi__jpeg_test:
.LFB610:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$18568, %edi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1181
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1182
.L1181:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__setup_jpeg
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbi__decode_jpeg_header
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-12(%rbp), %eax
.L1182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	stbi__jpeg_test, .-stbi__jpeg_test
	.type	stbi__jpeg_info_raw, @function
stbi__jpeg_info_raw:
.LFB611:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	stbi__decode_jpeg_header
	testl	%eax, %eax
	jne	.L1184
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1185
.L1184:
	cmpq	$0, -16(%rbp)
	je	.L1186
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L1186:
	cmpq	$0, -24(%rbp)
	je	.L1187
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L1187:
	cmpq	$0, -32(%rbp)
	je	.L1188
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jle	.L1189
	movl	$3, %edx
	jmp	.L1190
.L1189:
	movl	$1, %edx
.L1190:
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L1188:
	movl	$1, %eax
.L1185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	stbi__jpeg_info_raw, .-stbi__jpeg_info_raw
	.type	stbi__jpeg_info, @function
stbi__jpeg_info:
.LFB612:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$18568, %edi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1192
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1193
.L1192:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_info_raw
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-12(%rbp), %eax
.L1193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	stbi__jpeg_info, .-stbi__jpeg_info
	.type	stbi__bitreverse16, @function
stbi__bitreverse16:
.LFB613:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	%eax
	andl	$21845, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	andl	$43690, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$2, %eax
	andl	$13107, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	sall	$2, %eax
	andl	$52428, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$4, %eax
	andl	$3855, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	sall	$4, %eax
	andl	$61680, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	sall	$8, %eax
	movzwl	%ax, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	stbi__bitreverse16, .-stbi__bitreverse16
	.section	.rodata
.LC43:
	.string	"bits <= 16"
	.text
	.type	stbi__bit_reverse, @function
stbi__bit_reverse:
.LFB614:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$16, -8(%rbp)
	jle	.L1197
	leaq	__PRETTY_FUNCTION__.8082(%rip), %rcx
	movl	$4061, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC43(%rip), %rdi
	call	__assert_fail@PLT
.L1197:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	stbi__bitreverse16
	movl	%eax, %edx
	movl	$16, %eax
	subl	-8(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	stbi__bit_reverse, .-stbi__bit_reverse
	.section	.rodata
.LC44:
	.string	"bad sizes"
.LC45:
	.string	"bad codelengths"
	.text
	.type	stbi__zbuild_huffman, @function
stbi__zbuild_huffman:
.LFB615:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -164(%rbp)
	leaq	-80(%rbp), %rax
	movl	$68, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-184(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -168(%rbp)
	jmp	.L1200
.L1201:
	movl	-168(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movslq	%eax, %rdx
	movl	-80(%rbp,%rdx,4), %edx
	addl	$1, %edx
	cltq
	movl	%edx, -80(%rbp,%rax,4)
	addl	$1, -168(%rbp)
.L1200:
	movl	-168(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jl	.L1201
	movl	$0, -80(%rbp)
	movl	$1, -168(%rbp)
	jmp	.L1202
.L1205:
	movl	-168(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %edx
	movl	-168(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	cmpl	%eax, %edx
	jle	.L1203
	leaq	.LC44(%rip), %rdi
	call	stbi__err
	jmp	.L1215
.L1203:
	addl	$1, -168(%rbp)
.L1202:
	cmpl	$15, -168(%rbp)
	jle	.L1205
	movl	$0, -160(%rbp)
	movl	$1, -168(%rbp)
	jmp	.L1206
.L1208:
	movl	-168(%rbp), %eax
	cltq
	movl	-160(%rbp), %edx
	movl	%edx, -144(%rbp,%rax,4)
	movl	-160(%rbp), %eax
	movl	%eax, %ecx
	movq	-184(%rbp), %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	addq	$512, %rdx
	movw	%cx, (%rax,%rdx,2)
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	movq	-184(%rbp), %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	addq	$560, %rdx
	movw	%cx, 4(%rax,%rdx,2)
	movl	-168(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%eax, -160(%rbp)
	movl	-168(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L1207
	movl	-168(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -160(%rbp)
	jle	.L1207
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1215
.L1207:
	movl	$16, %eax
	subl	-168(%rbp), %eax
	movl	-160(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	movq	-184(%rbp), %rax
	movl	-168(%rbp), %edx
	movslq	%edx, %rdx
	addq	$264, %rdx
	movl	%ecx, (%rax,%rdx,4)
	sall	-160(%rbp)
	movl	-168(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%eax, -164(%rbp)
	addl	$1, -168(%rbp)
.L1206:
	cmpl	$15, -168(%rbp)
	jle	.L1208
	movq	-184(%rbp), %rax
	movl	$65536, 1120(%rax)
	movl	$0, -168(%rbp)
	jmp	.L1209
.L1214:
	movl	-168(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.L1210
	movl	-152(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %edx
	movq	-184(%rbp), %rax
	movl	-152(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$512, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movzwl	%ax, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movq	-184(%rbp), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	addq	$560, %rdx
	movzwl	4(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
	addl	%ecx, %eax
	movl	%eax, -148(%rbp)
	movl	-152(%rbp), %eax
	sall	$9, %eax
	movl	%eax, %edx
	movl	-168(%rbp), %eax
	orl	%edx, %eax
	movw	%ax, -170(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, %ecx
	movq	-184(%rbp), %rdx
	movl	-148(%rbp), %eax
	cltq
	movb	%cl, 1156(%rdx,%rax)
	movl	-168(%rbp), %eax
	movl	%eax, %ecx
	movq	-184(%rbp), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	addq	$720, %rdx
	movw	%cx, 4(%rax,%rdx,2)
	cmpl	$9, -152(%rbp)
	jg	.L1211
	movl	-152(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	movl	-152(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	stbi__bit_reverse
	movl	%eax, -156(%rbp)
	jmp	.L1212
.L1213:
	movq	-184(%rbp), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	-170(%rbp), %ecx
	movw	%cx, (%rax,%rdx,2)
	movl	-152(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	addl	%eax, -156(%rbp)
.L1212:
	cmpl	$511, -156(%rbp)
	jle	.L1213
.L1211:
	movl	-152(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-152(%rbp), %eax
	cltq
	movl	%edx, -144(%rbp,%rax,4)
.L1210:
	addl	$1, -168(%rbp)
.L1209:
	movl	-168(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jl	.L1214
	movl	$1, %eax
.L1215:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1216
	call	__stack_chk_fail@PLT
.L1216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	stbi__zbuild_huffman, .-stbi__zbuild_huffman
	.type	stbi__zeof, @function
stbi__zeof:
.LFB616:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	stbi__zeof, .-stbi__zeof
	.type	stbi__zget8, @function
stbi__zget8:
.LFB617:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zeof
	testl	%eax, %eax
	jne	.L1220
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	movzbl	(%rax), %eax
	jmp	.L1222
.L1220:
	movl	$0, %eax
.L1222:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	stbi__zget8, .-stbi__zget8
	.type	stbi__fill_bits, @function
stbi__fill_bits:
.LFB618:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
.L1226:
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L1224
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L1223
.L1224:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zget8
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	leal	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$24, %eax
	jle	.L1226
.L1223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	stbi__fill_bits, .-stbi__fill_bits
	.type	stbi__zreceive, @function
stbi__zreceive:
.LFB619:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L1228
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__fill_bits
.L1228:
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-28(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	stbi__zreceive, .-stbi__zreceive
	.type	stbi__zhuffman_decode_slowpath, @function
stbi__zhuffman_decode_slowpath:
.LFB620:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	stbi__bit_reverse
	movl	%eax, -8(%rbp)
	movl	$10, -12(%rbp)
.L1233:
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$264, %rdx
	movl	(%rax,%rdx,4), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L1239
	addl	$1, -12(%rbp)
	jmp	.L1233
.L1239:
	nop
	cmpl	$15, -12(%rbp)
	jle	.L1234
	movl	$-1, %eax
	jmp	.L1235
.L1234:
	movl	$16, %eax
	subl	-12(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$512, %rdx
	movzwl	(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
	subl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$560, %rdx
	movzwl	4(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	cmpl	$287, -4(%rbp)
	jle	.L1236
	movl	$-1, %eax
	jmp	.L1235
.L1236:
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	1156(%rdx,%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -12(%rbp)
	je	.L1237
	movl	$-1, %eax
	jmp	.L1235
.L1237:
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$720, %rdx
	movzwl	4(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
.L1235:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	stbi__zhuffman_decode_slowpath, .-stbi__zhuffman_decode_slowpath
	.type	stbi__zhuffman_decode, @function
stbi__zhuffman_decode:
.LFB621:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$15, %eax
	jg	.L1241
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zeof
	testl	%eax, %eax
	je	.L1242
	movl	$-1, %eax
	jmp	.L1243
.L1242:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__fill_bits
.L1241:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	andl	$511, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %edx
	movzwl	(%rax,%rdx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L1244
	movl	-8(%rbp), %eax
	sarl	$9, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	-8(%rbp), %eax
	andl	$511, %eax
	jmp	.L1243
.L1244:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__zhuffman_decode_slowpath
.L1243:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	stbi__zhuffman_decode, .-stbi__zhuffman_decode
	.section	.rodata
.LC46:
	.string	"output buffer limit"
	.text
	.type	stbi__zexpand, @function
stbi__zexpand:
.LFB622:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L1246
	leaq	.LC46(%rip), %rdi
	call	stbi__err
	jmp	.L1247
.L1246:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	cmpl	%eax, %edx
	jnb	.L1249
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1247
.L1251:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jns	.L1250
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1247
.L1250:
	sall	-20(%rbp)
.L1249:
	movl	-52(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -20(%rbp)
	jb	.L1251
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1252
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1247
.L1252:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L1247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	stbi__zexpand, .-stbi__zexpand
	.section	.rodata
	.align 32
	.type	stbi__zlength_base, @object
	.size	stbi__zlength_base, 124
stbi__zlength_base:
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	15
	.long	17
	.long	19
	.long	23
	.long	27
	.long	31
	.long	35
	.long	43
	.long	51
	.long	59
	.long	67
	.long	83
	.long	99
	.long	115
	.long	131
	.long	163
	.long	195
	.long	227
	.long	258
	.long	0
	.long	0
	.align 32
	.type	stbi__zlength_extra, @object
	.size	stbi__zlength_extra, 124
stbi__zlength_extra:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.align 32
	.type	stbi__zdist_base, @object
	.size	stbi__zdist_base, 128
stbi__zdist_base:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	7
	.long	9
	.long	13
	.long	17
	.long	25
	.long	33
	.long	49
	.long	65
	.long	97
	.long	129
	.long	193
	.long	257
	.long	385
	.long	513
	.long	769
	.long	1025
	.long	1537
	.long	2049
	.long	3073
	.long	4097
	.long	6145
	.long	8193
	.long	12289
	.long	16385
	.long	24577
	.long	0
	.long	0
	.align 32
	.type	stbi__zdist_extra, @object
	.size	stbi__zdist_extra, 128
stbi__zdist_extra:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	3
	.long	3
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	10
	.long	10
	.long	11
	.long	11
	.long	12
	.long	12
	.long	13
	.long	13
	.zero	8
.LC47:
	.string	"bad dist"
	.text
	.type	stbi__parse_huffman_block, @function
stbi__parse_huffman_block:
.LFB623:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L1270:
	movq	-40(%rbp), %rax
	leaq	52(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__zhuffman_decode
	movl	%eax, -20(%rbp)
	cmpl	$255, -20(%rbp)
	jg	.L1254
	cmpl	$0, -20(%rbp)
	jns	.L1255
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L1256
.L1255:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L1257
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__zexpand
	testl	%eax, %eax
	jne	.L1258
	movl	$0, %eax
	jmp	.L1256
.L1258:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L1257:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L1270
.L1254:
	cmpl	$256, -20(%rbp)
	jne	.L1260
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
	jmp	.L1256
.L1260:
	subl	$257, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zlength_base(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zlength_extra(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L1261
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zlength_extra(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	movl	-28(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
.L1261:
	movq	-40(%rbp), %rax
	leaq	2072(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__zhuffman_decode
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L1262
	leaq	.LC14(%rip), %rdi
	call	stbi__err
	jmp	.L1256
.L1262:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zdist_base(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zdist_extra(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L1263
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	stbi__zdist_extra(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	movl	-24(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
.L1263:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L1264
	leaq	.LC47(%rip), %rdi
	call	stbi__err
	jmp	.L1256
.L1264:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L1265
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__zexpand
	testl	%eax, %eax
	jne	.L1266
	movl	$0, %eax
	jmp	.L1256
.L1266:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L1265:
	movl	-24(%rbp), %eax
	cltq
	negq	%rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpl	$1, -24(%rbp)
	jne	.L1267
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -29(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L1270
.L1268:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	-29(%rbp), %edx
	movb	%dl, (%rax)
	subl	$1, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L1268
	jmp	.L1270
.L1267:
	cmpl	$0, -28(%rbp)
	je	.L1270
.L1269:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	subl	$1, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L1269
	jmp	.L1270
.L1256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	stbi__parse_huffman_block, .-stbi__parse_huffman_block
	.type	stbi__compute_huffman_codes, @function
stbi__compute_huffman_codes:
.LFB624:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2592, %rsp
	movq	%rdi, -2584(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-2584(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	addl	$257, %eax
	movl	%eax, -2548(%rbp)
	movq	-2584(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	addl	$1, %eax
	movl	%eax, -2544(%rbp)
	movq	-2584(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	addl	$4, %eax
	movl	%eax, -2540(%rbp)
	movl	-2548(%rbp), %edx
	movl	-2544(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -2536(%rbp)
	leaq	-496(%rbp), %rax
	movl	$19, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -2560(%rbp)
	jmp	.L1272
.L1273:
	movq	-2584(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	movl	%eax, -2532(%rbp)
	movl	-2560(%rbp), %eax
	cltq
	leaq	length_dezigzag.8188(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	-2532(%rbp), %edx
	cltq
	movb	%dl, -496(%rbp,%rax)
	addl	$1, -2560(%rbp)
.L1272:
	movl	-2560(%rbp), %eax
	cmpl	-2540(%rbp), %eax
	jl	.L1273
	leaq	-496(%rbp), %rcx
	leaq	-2528(%rbp), %rax
	movl	$19, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__zbuild_huffman
	testl	%eax, %eax
	jne	.L1274
	movl	$0, %eax
	jmp	.L1290
.L1274:
	movl	$0, -2556(%rbp)
	jmp	.L1276
.L1286:
	leaq	-2528(%rbp), %rdx
	movq	-2584(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__zhuffman_decode
	movl	%eax, -2552(%rbp)
	cmpl	$0, -2552(%rbp)
	js	.L1277
	cmpl	$18, -2552(%rbp)
	jle	.L1278
.L1277:
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1290
.L1278:
	cmpl	$15, -2552(%rbp)
	jg	.L1279
	movl	-2556(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -2556(%rbp)
	movl	-2552(%rbp), %edx
	cltq
	movb	%dl, -464(%rbp,%rax)
	jmp	.L1276
.L1279:
	movb	$0, -2561(%rbp)
	cmpl	$16, -2552(%rbp)
	jne	.L1280
	movq	-2584(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	addl	$3, %eax
	movl	%eax, -2552(%rbp)
	cmpl	$0, -2556(%rbp)
	jne	.L1281
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1290
.L1281:
	movl	-2556(%rbp), %eax
	subl	$1, %eax
	cltq
	movzbl	-464(%rbp,%rax), %eax
	movb	%al, -2561(%rbp)
	jmp	.L1282
.L1280:
	cmpl	$17, -2552(%rbp)
	jne	.L1283
	movq	-2584(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	addl	$3, %eax
	movl	%eax, -2552(%rbp)
	jmp	.L1282
.L1283:
	cmpl	$18, -2552(%rbp)
	jne	.L1284
	movq	-2584(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	addl	$11, %eax
	movl	%eax, -2552(%rbp)
	jmp	.L1282
.L1284:
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1290
.L1282:
	movl	-2536(%rbp), %eax
	subl	-2556(%rbp), %eax
	cmpl	%eax, -2552(%rbp)
	jle	.L1285
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1290
.L1285:
	movl	-2552(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	-2561(%rbp), %eax
	movl	-2556(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-464(%rbp), %rsi
	addq	%rsi, %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movl	-2552(%rbp), %eax
	addl	%eax, -2556(%rbp)
.L1276:
	movl	-2556(%rbp), %eax
	cmpl	-2536(%rbp), %eax
	jl	.L1286
	movl	-2556(%rbp), %eax
	cmpl	-2536(%rbp), %eax
	je	.L1287
	leaq	.LC45(%rip), %rdi
	call	stbi__err
	jmp	.L1290
.L1287:
	movq	-2584(%rbp), %rax
	leaq	52(%rax), %rcx
	movl	-2548(%rbp), %edx
	leaq	-464(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	stbi__zbuild_huffman
	testl	%eax, %eax
	jne	.L1288
	movl	$0, %eax
	jmp	.L1290
.L1288:
	movl	-2548(%rbp), %eax
	cltq
	leaq	-464(%rbp), %rdx
	leaq	(%rdx,%rax), %rsi
	movq	-2584(%rbp), %rax
	leaq	2072(%rax), %rcx
	movl	-2544(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	stbi__zbuild_huffman
	testl	%eax, %eax
	jne	.L1289
	movl	$0, %eax
	jmp	.L1290
.L1289:
	movl	$1, %eax
.L1290:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1291
	call	__stack_chk_fail@PLT
.L1291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	stbi__compute_huffman_codes, .-stbi__compute_huffman_codes
	.section	.rodata
.LC48:
	.string	"zlib corrupt"
.LC49:
	.string	"read past buffer"
	.text
	.type	stbi__parse_uncompressed_block, @function
stbi__parse_uncompressed_block:
.LFB625:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	andl	$7, %eax
	testl	%eax, %eax
	je	.L1293
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	andl	$7, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
.L1293:
	movl	$0, -40(%rbp)
	jmp	.L1294
.L1295:
	movq	-56(%rbp), %rax
	movl	20(%rax), %ecx
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -40(%rbp)
	movl	%ecx, %edx
	cltq
	movb	%dl, -28(%rbp,%rax)
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	leal	-8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
.L1294:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jg	.L1295
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jns	.L1298
	leaq	.LC48(%rip), %rdi
	call	stbi__err
	jmp	.L1303
.L1299:
	movl	-40(%rbp), %ebx
	leal	1(%rbx), %eax
	movl	%eax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zget8
	movslq	%ebx, %rdx
	movb	%al, -28(%rbp,%rdx)
.L1298:
	cmpl	$3, -40(%rbp)
	jle	.L1299
	movzbl	-27(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-28(%rbp), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movzbl	-25(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-26(%rbp), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	xorl	$65535, %eax
	cmpl	%eax, -32(%rbp)
	je	.L1300
	leaq	.LC48(%rip), %rdi
	call	stbi__err
	jmp	.L1303
.L1300:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L1301
	leaq	.LC49(%rip), %rdi
	call	stbi__err
	jmp	.L1303
.L1301:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L1302
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__zexpand
	testl	%eax, %eax
	jne	.L1302
	movl	$0, %eax
	jmp	.L1303
.L1302:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L1303:
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L1304
	call	__stack_chk_fail@PLT
.L1304:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	stbi__parse_uncompressed_block, .-stbi__parse_uncompressed_block
	.section	.rodata
.LC50:
	.string	"bad zlib header"
.LC51:
	.string	"no preset dict"
.LC52:
	.string	"bad compression"
	.text
	.type	stbi__parse_zlib_header, @function
stbi__parse_zlib_header:
.LFB626:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zget8
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zget8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__zeof
	testl	%eax, %eax
	je	.L1306
	leaq	.LC50(%rip), %rdi
	call	stbi__err
	jmp	.L1307
.L1306:
	movl	-12(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%eax, %edx
	movslq	%edx, %rax
	imulq	$-2078209981, %rax, %rax
	shrq	$32, %rax
	addl	%edx, %eax
	sarl	$4, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sall	$5, %ecx
	subl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	je	.L1308
	leaq	.LC50(%rip), %rdi
	call	stbi__err
	jmp	.L1307
.L1308:
	movl	-4(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L1309
	leaq	.LC51(%rip), %rdi
	call	stbi__err
	jmp	.L1307
.L1309:
	cmpl	$8, -8(%rbp)
	je	.L1310
	leaq	.LC52(%rip), %rdi
	call	stbi__err
	jmp	.L1307
.L1310:
	movl	$1, %eax
.L1307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	stbi__parse_zlib_header, .-stbi__parse_zlib_header
	.section	.rodata
	.align 32
	.type	stbi__zdefault_length, @object
	.size	stbi__zdefault_length, 288
stbi__zdefault_length:
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
	.ascii	"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\t\t\t\t\t\t"
	.ascii	"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
	.ascii	"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
	.ascii	"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
	.ascii	"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\007\007\007\007\007\007\007"
	.ascii	"\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007"
	.ascii	"\007\007\b\b\b\b\b\b\b\b"
	.align 32
	.type	stbi__zdefault_distance, @object
	.size	stbi__zdefault_distance, 32
stbi__zdefault_distance:
	.ascii	"\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005"
	.ascii	"\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005"
	.ascii	"\005\005"
	.text
	.type	stbi__parse_zlib, @function
stbi__parse_zlib:
.LFB627:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L1312
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__parse_zlib_header
	testl	%eax, %eax
	jne	.L1312
	movl	$0, %eax
	jmp	.L1313
.L1312:
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 20(%rax)
.L1320:
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	stbi__zreceive
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L1314
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__parse_uncompressed_block
	testl	%eax, %eax
	jne	.L1315
	movl	$0, %eax
	jmp	.L1313
.L1314:
	cmpl	$3, -4(%rbp)
	jne	.L1316
	movl	$0, %eax
	jmp	.L1313
.L1316:
	cmpl	$1, -4(%rbp)
	jne	.L1317
	movq	-24(%rbp), %rax
	addq	$52, %rax
	movl	$288, %edx
	leaq	stbi__zdefault_length(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__zbuild_huffman
	testl	%eax, %eax
	jne	.L1318
	movl	$0, %eax
	jmp	.L1313
.L1318:
	movq	-24(%rbp), %rax
	addq	$2072, %rax
	movl	$32, %edx
	leaq	stbi__zdefault_distance(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__zbuild_huffman
	testl	%eax, %eax
	jne	.L1319
	movl	$0, %eax
	jmp	.L1313
.L1317:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__compute_huffman_codes
	testl	%eax, %eax
	jne	.L1319
	movl	$0, %eax
	jmp	.L1313
.L1319:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__parse_huffman_block
	testl	%eax, %eax
	jne	.L1315
	movl	$0, %eax
	jmp	.L1313
.L1315:
	cmpl	$0, -8(%rbp)
	je	.L1320
	movl	$1, %eax
.L1313:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	stbi__parse_zlib, .-stbi__parse_zlib
	.type	stbi__do_zlib, @function
stbi__do_zlib:
.LFB628:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 48(%rax)
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__parse_zlib
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	stbi__do_zlib, .-stbi__do_zlib
	.globl	stbi_zlib_decode_malloc_guesssize
	.type	stbi_zlib_decode_malloc_guesssize, @function
stbi_zlib_decode_malloc_guesssize:
.LFB629:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$64, %rsp
	movq	%rdi, -4136(%rbp)
	movl	%esi, -4140(%rbp)
	movl	%edx, -4144(%rbp)
	movq	%rcx, -4152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-4144(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -4120(%rbp)
	cmpq	$0, -4120(%rbp)
	jne	.L1324
	movl	$0, %eax
	jmp	.L1328
.L1324:
	movq	-4136(%rbp), %rax
	movq	%rax, -4112(%rbp)
	movl	-4140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4104(%rbp)
	movl	-4144(%rbp), %edx
	movq	-4120(%rbp), %rsi
	leaq	-4112(%rbp), %rax
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	stbi__do_zlib
	testl	%eax, %eax
	je	.L1326
	cmpq	$0, -4152(%rbp)
	je	.L1327
	movq	-4088(%rbp), %rdx
	movq	-4080(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-4152(%rbp), %rax
	movl	%edx, (%rax)
.L1327:
	movq	-4080(%rbp), %rax
	jmp	.L1328
.L1326:
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L1328:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1329
	call	__stack_chk_fail@PLT
.L1329:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	stbi_zlib_decode_malloc_guesssize, .-stbi_zlib_decode_malloc_guesssize
	.globl	stbi_zlib_decode_malloc
	.type	stbi_zlib_decode_malloc, @function
stbi_zlib_decode_malloc:
.LFB630:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16384, %edx
	movq	%rax, %rdi
	call	stbi_zlib_decode_malloc_guesssize
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	stbi_zlib_decode_malloc, .-stbi_zlib_decode_malloc
	.globl	stbi_zlib_decode_malloc_guesssize_headerflag
	.type	stbi_zlib_decode_malloc_guesssize_headerflag, @function
stbi_zlib_decode_malloc_guesssize_headerflag:
.LFB631:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$64, %rsp
	movq	%rdi, -4136(%rbp)
	movl	%esi, -4140(%rbp)
	movl	%edx, -4144(%rbp)
	movq	%rcx, -4152(%rbp)
	movl	%r8d, -4156(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-4144(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -4120(%rbp)
	cmpq	$0, -4120(%rbp)
	jne	.L1333
	movl	$0, %eax
	jmp	.L1337
.L1333:
	movq	-4136(%rbp), %rax
	movq	%rax, -4112(%rbp)
	movl	-4140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4104(%rbp)
	movl	-4156(%rbp), %ecx
	movl	-4144(%rbp), %edx
	movq	-4120(%rbp), %rsi
	leaq	-4112(%rbp), %rax
	movl	%ecx, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	stbi__do_zlib
	testl	%eax, %eax
	je	.L1335
	cmpq	$0, -4152(%rbp)
	je	.L1336
	movq	-4088(%rbp), %rdx
	movq	-4080(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-4152(%rbp), %rax
	movl	%edx, (%rax)
.L1336:
	movq	-4080(%rbp), %rax
	jmp	.L1337
.L1335:
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L1337:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1338
	call	__stack_chk_fail@PLT
.L1338:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	stbi_zlib_decode_malloc_guesssize_headerflag, .-stbi_zlib_decode_malloc_guesssize_headerflag
	.globl	stbi_zlib_decode_buffer
	.type	stbi_zlib_decode_buffer, @function
stbi_zlib_decode_buffer:
.LFB632:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$48, %rsp
	movq	%rdi, -4120(%rbp)
	movl	%esi, -4124(%rbp)
	movq	%rdx, -4136(%rbp)
	movl	%ecx, -4128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-4136(%rbp), %rax
	movq	%rax, -4112(%rbp)
	movl	-4128(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4104(%rbp)
	movl	-4124(%rbp), %edx
	movq	-4120(%rbp), %rsi
	leaq	-4112(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	stbi__do_zlib
	testl	%eax, %eax
	je	.L1340
	movq	-4088(%rbp), %rdx
	movq	-4080(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L1342
.L1340:
	movl	$-1, %eax
.L1342:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1343
	call	__stack_chk_fail@PLT
.L1343:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	stbi_zlib_decode_buffer, .-stbi_zlib_decode_buffer
	.globl	stbi_zlib_decode_noheader_malloc
	.type	stbi_zlib_decode_noheader_malloc, @function
stbi_zlib_decode_noheader_malloc:
.LFB633:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$64, %rsp
	movq	%rdi, -4136(%rbp)
	movl	%esi, -4140(%rbp)
	movq	%rdx, -4152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$16384, %edi
	call	stbi__malloc
	movq	%rax, -4120(%rbp)
	cmpq	$0, -4120(%rbp)
	jne	.L1345
	movl	$0, %eax
	jmp	.L1349
.L1345:
	movq	-4136(%rbp), %rax
	movq	%rax, -4112(%rbp)
	movl	-4140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4104(%rbp)
	movq	-4120(%rbp), %rsi
	leaq	-4112(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$16384, %edx
	movq	%rax, %rdi
	call	stbi__do_zlib
	testl	%eax, %eax
	je	.L1347
	cmpq	$0, -4152(%rbp)
	je	.L1348
	movq	-4088(%rbp), %rdx
	movq	-4080(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-4152(%rbp), %rax
	movl	%edx, (%rax)
.L1348:
	movq	-4080(%rbp), %rax
	jmp	.L1349
.L1347:
	movq	-4080(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L1349:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1350
	call	__stack_chk_fail@PLT
.L1350:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	stbi_zlib_decode_noheader_malloc, .-stbi_zlib_decode_noheader_malloc
	.globl	stbi_zlib_decode_noheader_buffer
	.type	stbi_zlib_decode_noheader_buffer, @function
stbi_zlib_decode_noheader_buffer:
.LFB634:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$48, %rsp
	movq	%rdi, -4120(%rbp)
	movl	%esi, -4124(%rbp)
	movq	%rdx, -4136(%rbp)
	movl	%ecx, -4128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-4136(%rbp), %rax
	movq	%rax, -4112(%rbp)
	movl	-4128(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4104(%rbp)
	movl	-4124(%rbp), %edx
	movq	-4120(%rbp), %rsi
	leaq	-4112(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	stbi__do_zlib
	testl	%eax, %eax
	je	.L1352
	movq	-4088(%rbp), %rdx
	movq	-4080(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L1354
.L1352:
	movl	$-1, %eax
.L1354:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1355
	call	__stack_chk_fail@PLT
.L1355:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	stbi_zlib_decode_noheader_buffer, .-stbi_zlib_decode_noheader_buffer
	.type	stbi__get_chunk_header, @function
stbi__get_chunk_header:
.LFB635:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, -4(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	stbi__get_chunk_header, .-stbi__get_chunk_header
	.section	.rodata
.LC53:
	.string	"bad png sig"
	.text
	.type	stbi__check_png_header, @function
stbi__check_png_header:
.LFB636:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L1359
.L1362:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	png_sig.8297(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	cmpb	%dl, %al
	je	.L1360
	leaq	.LC53(%rip), %rdi
	call	stbi__err
	jmp	.L1361
.L1360:
	addl	$1, -4(%rbp)
.L1359:
	cmpl	$7, -4(%rbp)
	jle	.L1362
	movl	$1, %eax
.L1361:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	stbi__check_png_header, .-stbi__check_png_header
	.data
	.type	first_row_filter, @object
	.size	first_row_filter, 5
first_row_filter:
	.string	""
	.string	"\001"
	.ascii	"\005\006"
	.text
	.type	stbi__paeth, @function
stbi__paeth:
.LFB637:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -12(%rbp)
	subl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -8(%rbp)
	subl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -4(%rbp)
	subl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.L1364
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.L1364
	movl	-20(%rbp), %eax
	jmp	.L1365
.L1364:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.L1366
	movl	-24(%rbp), %eax
	jmp	.L1365
.L1366:
	movl	-28(%rbp), %eax
.L1365:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	stbi__paeth, .-stbi__paeth
	.section	.rodata
	.align 8
	.type	stbi__depth_scale_table, @object
	.size	stbi__depth_scale_table, 9
stbi__depth_scale_table:
	.string	""
	.string	"\377U"
	.string	"\021"
	.string	""
	.string	""
	.ascii	"\001"
	.align 8
.LC54:
	.string	"out_n == s->img_n || out_n == s->img_n+1"
.LC55:
	.string	"not enough pixels"
.LC56:
	.string	"invalid filter"
.LC57:
	.string	"invalid width"
.LC58:
	.string	"img_n+1 == out_n"
.LC59:
	.string	"img_n == 3"
	.text
	.type	stbi__create_png_image_raw, @function
stbi__create_png_image_raw:
.LFB638:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movl	%ecx, -168(%rbp)
	movl	%r8d, -172(%rbp)
	movl	%r9d, -176(%rbp)
	cmpl	$16, 16(%rbp)
	jne	.L1368
	movl	$2, %eax
	jmp	.L1369
.L1368:
	movl	$1, %eax
.L1369:
	movl	%eax, -100(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-168(%rbp), %eax
	imull	-172(%rbp), %eax
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -92(%rbp)
	movl	-168(%rbp), %eax
	imull	-100(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-92(%rbp), %eax
	imull	-100(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-172(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -168(%rbp)
	je	.L1370
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, -168(%rbp)
	je	.L1370
	leaq	__PRETTY_FUNCTION__.8350(%rip), %rcx
	movl	$4607, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC54(%rip), %rdi
	call	__assert_fail@PLT
.L1370:
	movl	-176(%rbp), %esi
	movl	-172(%rbp), %eax
	movl	-88(%rbp), %edx
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	-152(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L1371
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1372
.L1371:
	movl	-172(%rbp), %esi
	movl	-92(%rbp), %eax
	movl	$7, %ecx
	movl	16(%rbp), %edx
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	testl	%eax, %eax
	jne	.L1373
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L1372
.L1373:
	movl	-92(%rbp), %eax
	imull	-172(%rbp), %eax
	movl	%eax, %edx
	movl	16(%rbp), %eax
	imull	%edx, %eax
	addl	$7, %eax
	shrl	$3, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	leal	1(%rax), %edx
	movl	-176(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-164(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jnb	.L1374
	leaq	.LC55(%rip), %rdi
	call	stbi__err
	jmp	.L1372
.L1374:
	movl	$0, -124(%rbp)
	jmp	.L1375
.L1460:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-96(%rbp), %eax
	imull	-124(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-160(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -160(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%rbp)
	cmpl	$4, -108(%rbp)
	jle	.L1376
	leaq	.LC56(%rip), %rdi
	call	stbi__err
	jmp	.L1372
.L1376:
	cmpl	$7, 16(%rbp)
	jg	.L1377
	movl	-84(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jbe	.L1378
	leaq	.LC57(%rip), %rdi
	call	stbi__err
	jmp	.L1372
.L1378:
	movl	-168(%rbp), %eax
	imull	-172(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, %eax
	addq	%rax, -72(%rbp)
	movl	$1, -116(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -112(%rbp)
.L1377:
	movl	-96(%rbp), %eax
	negq	%rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.L1379
	movl	-108(%rbp), %eax
	cltq
	leaq	first_row_filter(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%rbp)
.L1379:
	movl	$0, -120(%rbp)
	jmp	.L1380
.L1390:
	cmpl	$6, -108(%rbp)
	ja	.L1381
	movl	-108(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L1383(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L1383(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L1383:
	.long	.L1389-.L1383
	.long	.L1388-.L1383
	.long	.L1387-.L1383
	.long	.L1386-.L1383
	.long	.L1385-.L1383
	.long	.L1384-.L1383
	.long	.L1382-.L1383
	.text
.L1389:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	-120(%rbp), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	jmp	.L1381
.L1388:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	-120(%rbp), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	jmp	.L1381
.L1387:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-120(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L1381
.L1386:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-120(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	shrb	%al
	movl	%eax, %esi
	movl	-120(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	addl	%esi, %edx
	movb	%dl, (%rax)
	jmp	.L1381
.L1385:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	stbi__paeth
	movl	%eax, %ecx
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	leal	(%rbx,%rcx), %edx
	movb	%dl, (%rax)
	jmp	.L1381
.L1384:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	-120(%rbp), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	jmp	.L1381
.L1382:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	-120(%rbp), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	nop
.L1381:
	addl	$1, -120(%rbp)
.L1380:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L1390
	cmpl	$8, 16(%rbp)
	jne	.L1391
	movl	-92(%rbp), %eax
	cmpl	-168(%rbp), %eax
	je	.L1392
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
.L1392:
	movl	-92(%rbp), %eax
	cltq
	addq	%rax, -160(%rbp)
	movl	-168(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	movl	-168(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
	jmp	.L1393
.L1391:
	cmpl	$16, 16(%rbp)
	jne	.L1394
	movl	-92(%rbp), %eax
	cmpl	-168(%rbp), %eax
	je	.L1395
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-116(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
.L1395:
	movl	-116(%rbp), %eax
	cltq
	addq	%rax, -160(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
	jmp	.L1393
.L1394:
	addq	$1, -160(%rbp)
	addq	$1, -72(%rbp)
	addq	$1, -64(%rbp)
.L1393:
	cmpl	$7, 16(%rbp)
	jle	.L1396
	movl	-92(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jne	.L1397
.L1396:
	movl	-112(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-116(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -76(%rbp)
	cmpl	$6, -108(%rbp)
	ja	.L1398
	movl	-108(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L1400(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L1400(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L1400:
	.long	.L1406-.L1400
	.long	.L1405-.L1400
	.long	.L1404-.L1400
	.long	.L1403-.L1400
	.long	.L1402-.L1400
	.long	.L1401-.L1400
	.long	.L1399-.L1400
	.text
.L1406:
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L1398
.L1405:
	movl	$0, -120(%rbp)
	jmp	.L1407
.L1408:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-120(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-120(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1407:
	movl	-120(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L1408
	jmp	.L1398
.L1404:
	movl	$0, -120(%rbp)
	jmp	.L1409
.L1410:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-120(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1409:
	movl	-120(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L1410
	jmp	.L1398
.L1403:
	movl	$0, -120(%rbp)
	jmp	.L1411
.L1412:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-120(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-120(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-120(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	addl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1411:
	movl	-120(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L1412
	jmp	.L1398
.L1402:
	movl	$0, -120(%rbp)
	jmp	.L1413
.L1414:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-120(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-120(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-120(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__paeth
	movl	%eax, %ecx
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	leal	(%rbx,%rcx), %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1413:
	movl	-120(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L1414
	jmp	.L1398
.L1401:
	movl	$0, -120(%rbp)
	jmp	.L1415
.L1416:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-120(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	shrb	%al
	movl	%eax, %esi
	movl	-120(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	addl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1415:
	movl	-120(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L1416
	jmp	.L1398
.L1399:
	movl	$0, -120(%rbp)
	jmp	.L1417
.L1418:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-120(%rbp), %eax
	subl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	stbi__paeth
	movl	%eax, %ecx
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	leal	(%rbx,%rcx), %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1417:
	movl	-120(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L1418
	nop
.L1398:
	movl	-76(%rbp), %eax
	cltq
	addq	%rax, -160(%rbp)
	jmp	.L1419
.L1397:
	movl	-92(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -168(%rbp)
	je	.L1420
	leaq	__PRETTY_FUNCTION__.8350(%rip), %rcx
	movl	$4691, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC58(%rip), %rdi
	call	__assert_fail@PLT
.L1420:
	cmpl	$6, -108(%rbp)
	ja	.L1421
	movl	-108(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L1423(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L1423(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L1423:
	.long	.L1429-.L1423
	.long	.L1428-.L1423
	.long	.L1427-.L1423
	.long	.L1426-.L1423
	.long	.L1425-.L1423
	.long	.L1424-.L1423
	.long	.L1422-.L1423
	.text
.L1429:
	movl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L1430
.L1433:
	movl	$0, -120(%rbp)
	jmp	.L1431
.L1432:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	-120(%rbp), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -120(%rbp)
.L1431:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L1432
	subl	$1, -128(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-116(%rbp), %eax
	cltq
	addq	%rax, -160(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
.L1430:
	cmpl	$0, -128(%rbp)
	jne	.L1433
	jmp	.L1421
.L1428:
	movl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L1434
.L1437:
	movl	$0, -120(%rbp)
	jmp	.L1435
.L1436:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-120(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-120(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1435:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L1436
	subl	$1, -128(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-116(%rbp), %eax
	cltq
	addq	%rax, -160(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
.L1434:
	cmpl	$0, -128(%rbp)
	jne	.L1437
	jmp	.L1421
.L1427:
	movl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L1438
.L1441:
	movl	$0, -120(%rbp)
	jmp	.L1439
.L1440:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-120(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1439:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L1440
	subl	$1, -128(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-116(%rbp), %eax
	cltq
	addq	%rax, -160(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
.L1438:
	cmpl	$0, -128(%rbp)
	jne	.L1441
	jmp	.L1421
.L1426:
	movl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L1442
.L1445:
	movl	$0, -120(%rbp)
	jmp	.L1443
.L1444:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-120(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-120(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-120(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	addl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1443:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L1444
	subl	$1, -128(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-116(%rbp), %eax
	cltq
	addq	%rax, -160(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
.L1442:
	cmpl	$0, -128(%rbp)
	jne	.L1445
	jmp	.L1421
.L1425:
	movl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L1446
.L1449:
	movl	$0, -120(%rbp)
	jmp	.L1447
.L1448:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-120(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-120(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-120(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__paeth
	movl	%eax, %ecx
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	leal	(%rbx,%rcx), %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1447:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L1448
	subl	$1, -128(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-116(%rbp), %eax
	cltq
	addq	%rax, -160(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
.L1446:
	cmpl	$0, -128(%rbp)
	jne	.L1449
	jmp	.L1421
.L1424:
	movl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L1450
.L1453:
	movl	$0, -120(%rbp)
	jmp	.L1451
.L1452:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-120(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	shrb	%al
	movl	%eax, %esi
	movl	-120(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	addl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1451:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L1452
	subl	$1, -128(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-116(%rbp), %eax
	cltq
	addq	%rax, -160(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
.L1450:
	cmpl	$0, -128(%rbp)
	jne	.L1453
	jmp	.L1421
.L1422:
	movl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L1454
.L1457:
	movl	$0, -120(%rbp)
	jmp	.L1455
.L1456:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-120(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	stbi__paeth
	movl	%eax, %ecx
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	leal	(%rbx,%rcx), %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L1455:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L1456
	subl	$1, -128(%rbp)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-116(%rbp), %eax
	cltq
	addq	%rax, -160(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -64(%rbp)
.L1454:
	cmpl	$0, -128(%rbp)
	jne	.L1457
	nop
.L1421:
	cmpl	$16, 16(%rbp)
	jne	.L1419
	movq	-152(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-96(%rbp), %eax
	imull	-124(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -128(%rbp)
	jmp	.L1458
.L1459:
	movl	-116(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	addl	$1, -128(%rbp)
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, -72(%rbp)
.L1458:
	movl	-128(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jb	.L1459
.L1419:
	addl	$1, -124(%rbp)
.L1375:
	movl	-124(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jb	.L1460
	cmpl	$7, 16(%rbp)
	jg	.L1461
	movl	$0, -124(%rbp)
	jmp	.L1462
.L1489:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-96(%rbp), %eax
	imull	-124(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-96(%rbp), %eax
	imull	-124(%rbp), %eax
	movl	%eax, %ecx
	movl	-168(%rbp), %eax
	imull	-172(%rbp), %eax
	movl	%eax, %eax
	addq	%rax, %rcx
	movl	-84(%rbp), %eax
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, 24(%rbp)
	jne	.L1463
	movl	16(%rbp), %eax
	cltq
	leaq	stbi__depth_scale_table(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	jmp	.L1464
.L1463:
	movl	$1, %eax
.L1464:
	movb	%al, -129(%rbp)
	cmpl	$4, 16(%rbp)
	jne	.L1465
	movl	-92(%rbp), %eax
	imull	-172(%rbp), %eax
	movl	%eax, -120(%rbp)
	jmp	.L1466
.L1467:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	subl	$2, -120(%rbp)
	addq	$1, -48(%rbp)
.L1466:
	cmpl	$1, -120(%rbp)
	jg	.L1467
	cmpl	$0, -120(%rbp)
	jle	.L1468
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	jmp	.L1468
.L1465:
	cmpl	$2, 16(%rbp)
	jne	.L1469
	movl	-92(%rbp), %eax
	imull	-172(%rbp), %eax
	movl	%eax, -120(%rbp)
	jmp	.L1470
.L1471:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$6, %al
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	andl	$3, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$3, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	subl	$4, -120(%rbp)
	addq	$1, -48(%rbp)
.L1470:
	cmpl	$3, -120(%rbp)
	jg	.L1471
	cmpl	$0, -120(%rbp)
	jle	.L1472
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$6, %al
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
.L1472:
	cmpl	$1, -120(%rbp)
	jle	.L1473
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	andl	$3, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
.L1473:
	cmpl	$2, -120(%rbp)
	jle	.L1468
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	jmp	.L1468
.L1469:
	cmpl	$1, 16(%rbp)
	jne	.L1468
	movl	-92(%rbp), %eax
	imull	-172(%rbp), %eax
	movl	%eax, -120(%rbp)
	jmp	.L1474
.L1475:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$7, %al
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
	subl	$8, -120(%rbp)
	addq	$1, -48(%rbp)
.L1474:
	cmpl	$7, -120(%rbp)
	jg	.L1475
	cmpl	$0, -120(%rbp)
	jle	.L1476
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$7, %al
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
.L1476:
	cmpl	$1, -120(%rbp)
	jle	.L1477
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
.L1477:
	cmpl	$2, -120(%rbp)
	jle	.L1478
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
.L1478:
	cmpl	$3, -120(%rbp)
	jle	.L1479
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
.L1479:
	cmpl	$4, -120(%rbp)
	jle	.L1480
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
.L1480:
	cmpl	$5, -120(%rbp)
	jle	.L1481
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
.L1481:
	cmpl	$6, -120(%rbp)
	jle	.L1468
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	movl	%ecx, %eax
	mulb	-129(%rbp)
	movb	%al, (%rdx)
.L1468:
	movl	-92(%rbp), %eax
	cmpl	-168(%rbp), %eax
	je	.L1482
	movq	-152(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-96(%rbp), %eax
	imull	-124(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpl	$1, -92(%rbp)
	jne	.L1483
	movl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.L1484
.L1485:
	movl	-104(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-104(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	subl	$1, -104(%rbp)
.L1484:
	cmpl	$0, -104(%rbp)
	jns	.L1485
	jmp	.L1482
.L1483:
	cmpl	$3, -92(%rbp)
	je	.L1486
	leaq	__PRETTY_FUNCTION__.8350(%rip), %rcx
	movl	$4780, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC59(%rip), %rdi
	call	__assert_fail@PLT
.L1486:
	movl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.L1487
.L1488:
	movl	-104(%rbp), %eax
	sall	$2, %eax
	cltq
	leaq	3(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	movl	-104(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	leaq	2(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-104(%rbp), %edx
	sall	$2, %edx
	movslq	%edx, %rdx
	leaq	2(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-104(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-104(%rbp), %edx
	sall	$2, %edx
	movslq	%edx, %rdx
	leaq	1(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-104(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-104(%rbp), %edx
	sall	$2, %edx
	movslq	%edx, %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	subl	$1, -104(%rbp)
.L1487:
	cmpl	$0, -104(%rbp)
	jns	.L1488
.L1482:
	addl	$1, -124(%rbp)
.L1462:
	movl	-124(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jb	.L1489
	jmp	.L1490
.L1461:
	cmpl	$16, 16(%rbp)
	jne	.L1490
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -128(%rbp)
	jmp	.L1491
.L1492:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
	addl	$1, -128(%rbp)
	addq	$2, -32(%rbp)
	addq	$2, -40(%rbp)
.L1491:
	movl	-172(%rbp), %eax
	imull	-176(%rbp), %eax
	movl	%eax, %edx
	movl	-168(%rbp), %eax
	imull	%edx, %eax
	cmpl	%eax, -128(%rbp)
	jb	.L1492
.L1490:
	movl	$1, %eax
.L1372:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	stbi__create_png_image_raw, .-stbi__create_png_image_raw
	.type	stbi__create_png_image, @function
stbi__create_png_image:
.LFB639:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movl	%edx, -212(%rbp)
	movl	%ecx, -216(%rbp)
	movl	%r8d, -220(%rbp)
	movl	%r9d, -224(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$16, -220(%rbp)
	jne	.L1494
	movl	$2, %eax
	jmp	.L1495
.L1494:
	movl	$1, %eax
.L1495:
	movl	%eax, -180(%rbp)
	movl	-216(%rbp), %eax
	imull	-180(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, 16(%rbp)
	jne	.L1496
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %r9d
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %r8d
	movl	-216(%rbp), %ecx
	movl	-212(%rbp), %edx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	-224(%rbp), %edi
	pushq	%rdi
	movl	-220(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbi__create_png_image_raw
	addq	$16, %rsp
	jmp	.L1497
.L1496:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	movl	-176(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edx
	call	stbi__malloc_mad3
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.L1498
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1497
.L1498:
	movl	$0, -192(%rbp)
	jmp	.L1499
.L1506:
	movl	$0, -144(%rbp)
	movl	$4, -140(%rbp)
	movl	$0, -136(%rbp)
	movl	$2, -132(%rbp)
	movl	$0, -128(%rbp)
	movl	$1, -124(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -108(%rbp)
	movl	$4, -104(%rbp)
	movl	$0, -100(%rbp)
	movl	$2, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$1, -88(%rbp)
	movl	$8, -80(%rbp)
	movl	$8, -76(%rbp)
	movl	$4, -72(%rbp)
	movl	$4, -68(%rbp)
	movl	$2, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$1, -56(%rbp)
	movl	$8, -48(%rbp)
	movl	$8, -44(%rbp)
	movl	$8, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	$4, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$2, -24(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movl	-192(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	subl	%eax, %edx
	movl	-192(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movl	-192(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -172(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movl	-192(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	subl	%eax, %edx
	movl	-192(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movl	-192(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, -168(%rbp)
	cmpl	$0, -172(%rbp)
	je	.L1500
	cmpl	$0, -168(%rbp)
	je	.L1500
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	imull	-172(%rbp), %eax
	imull	-220(%rbp), %eax
	addl	$7, %eax
	sarl	$3, %eax
	addl	$1, %eax
	imull	-168(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-168(%rbp), %r9d
	movl	-172(%rbp), %r8d
	movl	-216(%rbp), %ecx
	movl	-212(%rbp), %edx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	-224(%rbp), %edi
	pushq	%rdi
	movl	-220(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbi__create_png_image_raw
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1501
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L1497
.L1501:
	movl	$0, -184(%rbp)
	jmp	.L1502
.L1505:
	movl	$0, -188(%rbp)
	jmp	.L1503
.L1504:
	movl	-192(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	imull	-184(%rbp), %eax
	movl	%eax, %edx
	movl	-192(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -160(%rbp)
	movl	-192(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	imull	-188(%rbp), %eax
	movl	%eax, %edx
	movl	-192(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -156(%rbp)
	movl	-176(%rbp), %eax
	cltq
	movq	-200(%rbp), %rdx
	movq	24(%rdx), %rcx
	movl	-184(%rbp), %edx
	movl	%edx, %esi
	imull	-172(%rbp), %esi
	movl	-188(%rbp), %edx
	addl	%esi, %edx
	imull	-176(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-200(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rdx), %ecx
	movl	-160(%rbp), %edx
	imull	%edx, %ecx
	movl	-176(%rbp), %edx
	imull	%ecx, %edx
	movl	%edx, %ecx
	movl	-156(%rbp), %edx
	imull	-176(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	-152(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	addl	$1, -188(%rbp)
.L1503:
	movl	-188(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jl	.L1504
	addl	$1, -184(%rbp)
.L1502:
	movl	-184(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L1505
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-164(%rbp), %eax
	addq	%rax, -208(%rbp)
	movl	-164(%rbp), %eax
	subl	%eax, -212(%rbp)
.L1500:
	addl	$1, -192(%rbp)
.L1499:
	cmpl	$6, -192(%rbp)
	jle	.L1506
	movq	-200(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L1497:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L1507
	call	__stack_chk_fail@PLT
.L1507:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	stbi__create_png_image, .-stbi__create_png_image
	.section	.rodata
.LC60:
	.string	"out_n == 2 || out_n == 4"
	.text
	.type	stbi__compute_transparency, @function
stbi__compute_transparency:
.LFB640:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$2, -52(%rbp)
	je	.L1509
	cmpl	$4, -52(%rbp)
	je	.L1509
	leaq	__PRETTY_FUNCTION__.8517(%rip), %rcx
	movl	$4859, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC60(%rip), %rdi
	call	__assert_fail@PLT
.L1509:
	cmpl	$2, -52(%rbp)
	jne	.L1510
	movl	$0, -24(%rbp)
	jmp	.L1511
.L1514:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L1512
	movl	$0, %edx
	jmp	.L1513
.L1512:
	movl	$-1, %edx
.L1513:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	addq	$2, -16(%rbp)
	addl	$1, -24(%rbp)
.L1511:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L1514
	jmp	.L1515
.L1510:
	movl	$0, -24(%rbp)
	jmp	.L1516
.L1518:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L1517
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %edx
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L1517
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %edx
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L1517
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
.L1517:
	addq	$4, -16(%rbp)
	addl	$1, -24(%rbp)
.L1516:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L1518
.L1515:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	stbi__compute_transparency, .-stbi__compute_transparency
	.type	stbi__compute_transparency16, @function
stbi__compute_transparency16:
.LFB641:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$2, -52(%rbp)
	je	.L1521
	cmpl	$4, -52(%rbp)
	je	.L1521
	leaq	__PRETTY_FUNCTION__.8533(%rip), %rcx
	movl	$4884, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC60(%rip), %rdi
	call	__assert_fail@PLT
.L1521:
	cmpl	$2, -52(%rbp)
	jne	.L1522
	movl	$0, -24(%rbp)
	jmp	.L1523
.L1526:
	movq	-16(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L1524
	movl	$0, %edx
	jmp	.L1525
.L1524:
	movl	$-1, %edx
.L1525:
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movw	%dx, (%rax)
	addq	$4, -16(%rbp)
	addl	$1, -24(%rbp)
.L1523:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L1526
	jmp	.L1527
.L1522:
	movl	$0, -24(%rbp)
	jmp	.L1528
.L1530:
	movq	-16(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L1529
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %edx
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L1529
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %edx
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	.L1529
	movq	-16(%rbp), %rax
	addq	$6, %rax
	movw	$0, (%rax)
.L1529:
	addq	$8, -16(%rbp)
	addl	$1, -24(%rbp)
.L1528:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L1530
.L1527:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	stbi__compute_transparency16, .-stbi__compute_transparency16
	.type	stbi__expand_png_palette, @function
stbi__expand_png_palette:
.LFB642:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	movl	-72(%rbp), %ecx
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__malloc_mad2
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L1533
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1534
.L1533:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$3, -72(%rbp)
	jne	.L1535
	movl	$0, -40(%rbp)
	jmp	.L1536
.L1537:
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-28(%rbp), %eax
	cltq
	leaq	2(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$3, -24(%rbp)
	addl	$1, -40(%rbp)
.L1536:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L1537
	jmp	.L1538
.L1535:
	movl	$0, -40(%rbp)
	jmp	.L1539
.L1540:
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-32(%rbp), %eax
	cltq
	leaq	2(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-32(%rbp), %eax
	cltq
	leaq	3(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	addq	$3, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$4, -24(%rbp)
	addl	$1, -40(%rbp)
.L1539:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L1540
.L1538:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L1534:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	stbi__expand_png_palette, .-stbi__expand_png_palette
	.local	stbi__unpremultiply_on_load_global
	.comm	stbi__unpremultiply_on_load_global,4,4
	.local	stbi__de_iphone_flag_global
	.comm	stbi__de_iphone_flag_global,4,4
	.globl	stbi_set_unpremultiply_on_load
	.type	stbi_set_unpremultiply_on_load, @function
stbi_set_unpremultiply_on_load:
.LFB643:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, stbi__unpremultiply_on_load_global(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	stbi_set_unpremultiply_on_load, .-stbi_set_unpremultiply_on_load
	.globl	stbi_convert_iphone_png_to_rgb
	.type	stbi_convert_iphone_png_to_rgb, @function
stbi_convert_iphone_png_to_rgb:
.LFB644:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, stbi__de_iphone_flag_global(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	stbi_convert_iphone_png_to_rgb, .-stbi_convert_iphone_png_to_rgb
	.section	.tbss
	.align 4
	.type	stbi__unpremultiply_on_load_local, @object
	.size	stbi__unpremultiply_on_load_local, 4
stbi__unpremultiply_on_load_local:
	.zero	4
	.align 4
	.type	stbi__unpremultiply_on_load_set, @object
	.size	stbi__unpremultiply_on_load_set, 4
stbi__unpremultiply_on_load_set:
	.zero	4
	.align 4
	.type	stbi__de_iphone_flag_local, @object
	.size	stbi__de_iphone_flag_local, 4
stbi__de_iphone_flag_local:
	.zero	4
	.align 4
	.type	stbi__de_iphone_flag_set, @object
	.size	stbi__de_iphone_flag_set, 4
stbi__de_iphone_flag_set:
	.zero	4
	.text
	.globl	stbi__unpremultiply_on_load_thread
	.type	stbi__unpremultiply_on_load_thread, @function
stbi__unpremultiply_on_load_thread:
.LFB645:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %fs:stbi__unpremultiply_on_load_local@tpoff
	movl	$1, %fs:stbi__unpremultiply_on_load_set@tpoff
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	stbi__unpremultiply_on_load_thread, .-stbi__unpremultiply_on_load_thread
	.globl	stbi_convert_iphone_png_to_rgb_thread
	.type	stbi_convert_iphone_png_to_rgb_thread, @function
stbi_convert_iphone_png_to_rgb_thread:
.LFB646:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %fs:stbi__de_iphone_flag_local@tpoff
	movl	$1, %fs:stbi__de_iphone_flag_set@tpoff
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	stbi_convert_iphone_png_to_rgb_thread, .-stbi_convert_iphone_png_to_rgb_thread
	.section	.rodata
.LC61:
	.string	"s->img_out_n == 4"
	.text
	.type	stbi__de_iphone, @function
stbi__de_iphone:
.LFB647:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$3, %eax
	jne	.L1546
	movl	$0, -24(%rbp)
	jmp	.L1547
.L1548:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movzbl	-25(%rbp), %eax
	movb	%al, (%rdx)
	addq	$3, -16(%rbp)
	addl	$1, -24(%rbp)
.L1547:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L1548
	jmp	.L1560
.L1546:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$4, %eax
	je	.L1550
	leaq	__PRETTY_FUNCTION__.8588(%rip), %rcx
	movl	$4992, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC61(%rip), %rdi
	call	__assert_fail@PLT
.L1550:
	movl	%fs:stbi__unpremultiply_on_load_set@tpoff, %eax
	testl	%eax, %eax
	je	.L1551
	movl	%fs:stbi__unpremultiply_on_load_local@tpoff, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L1552
.L1551:
	movl	stbi__unpremultiply_on_load_global(%rip), %eax
	testl	%eax, %eax
	setne	%al
.L1552:
	testb	%al, %al
	je	.L1553
	movl	$0, -24(%rbp)
	jmp	.L1554
.L1557:
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, -28(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -27(%rbp)
	cmpb	$0, -28(%rbp)
	je	.L1555
	movzbl	-28(%rbp), %eax
	shrb	%al
	movb	%al, -26(%rbp)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movzbl	-26(%rbp), %eax
	addl	%edx, %eax
	movzbl	-28(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movzbl	-26(%rbp), %eax
	addl	%edx, %eax
	movzbl	-28(%rbp), %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movzbl	-27(%rbp), %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movzbl	-26(%rbp), %eax
	addl	%edx, %eax
	movzbl	-28(%rbp), %edi
	cltd
	idivl	%edi
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	jmp	.L1556
.L1555:
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movzbl	-27(%rbp), %eax
	movb	%al, (%rdx)
.L1556:
	addq	$4, -16(%rbp)
	addl	$1, -24(%rbp)
.L1554:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L1557
	jmp	.L1560
.L1553:
	movl	$0, -24(%rbp)
	jmp	.L1558
.L1559:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -29(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movzbl	-29(%rbp), %eax
	movb	%al, (%rdx)
	addq	$4, -16(%rbp)
	addl	$1, -24(%rbp)
.L1558:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L1559
.L1560:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	stbi__de_iphone, .-stbi__de_iphone
	.section	.rodata
.LC62:
	.string	"multiple IHDR"
.LC63:
	.string	"bad IHDR len"
.LC64:
	.string	"1/2/4/8/16-bit only"
.LC65:
	.string	"bad ctype"
.LC66:
	.string	"bad comp method"
.LC67:
	.string	"bad filter method"
.LC68:
	.string	"bad interlace method"
.LC69:
	.string	"0-pixel image"
.LC70:
	.string	"first not IHDR"
.LC71:
	.string	"invalid PLTE"
.LC72:
	.string	"tRNS after IDAT"
.LC73:
	.string	"tRNS before PLTE"
.LC74:
	.string	"bad tRNS len"
.LC75:
	.string	"tRNS with alpha"
.LC76:
	.string	"no PLTE"
.LC77:
	.string	"outofdata"
.LC78:
	.string	"no IDAT"
	.text
	.type	stbi__parse_png_file, @function
stbi__parse_png_file:
.LFB648:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1176, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1176(%rbp)
	movl	%esi, -1180(%rbp)
	movl	%edx, -1184(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movb	$0, -1154(%rbp)
	movb	$0, -1153(%rbp)
	movw	$0, -1059(%rbp)
	movb	$0, -1057(%rbp)
	movl	$0, -1148(%rbp)
	movl	$0, -1144(%rbp)
	movl	$0, -1136(%rbp)
	movl	$1, -1132(%rbp)
	movl	$0, -1124(%rbp)
	movl	$0, -1120(%rbp)
	movl	$0, -1116(%rbp)
	movq	-1176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1096(%rbp)
	movq	-1176(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-1176(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-1176(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__check_png_header
	testl	%eax, %eax
	jne	.L1562
	movl	$0, %eax
	jmp	.L1644
.L1562:
	cmpl	$1, -1180(%rbp)
	jne	.L1564
	movl	$1, %eax
	jmp	.L1644
.L1564:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get_chunk_header
	movq	%rax, -1076(%rbp)
	movl	-1072(%rbp), %eax
	cmpl	$1951551059, %eax
	je	.L1565
	cmpl	$1951551059, %eax
	ja	.L1566
	cmpl	$1347179589, %eax
	je	.L1567
	cmpl	$1347179589, %eax
	ja	.L1566
	cmpl	$1229472850, %eax
	je	.L1568
	cmpl	$1229472850, %eax
	ja	.L1566
	cmpl	$1229278788, %eax
	je	.L1569
	cmpl	$1229278788, %eax
	ja	.L1566
	cmpl	$1130840649, %eax
	je	.L1570
	cmpl	$1229209940, %eax
	je	.L1571
	jmp	.L1566
.L1570:
	movl	$1, -1116(%rbp)
	movl	-1076(%rbp), %eax
	movl	%eax, %edx
	movq	-1096(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	jmp	.L1572
.L1568:
	cmpl	$0, -1132(%rbp)
	jne	.L1573
	leaq	.LC62(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1573:
	movl	$0, -1132(%rbp)
	movl	-1076(%rbp), %eax
	cmpl	$13, %eax
	je	.L1575
	leaq	.LC63(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1575:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movq	-1096(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movq	-1096(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-1096(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$16777216, %eax
	jbe	.L1576
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1576:
	movq	-1096(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16777216, %eax
	jbe	.L1577
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1577:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-1176(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-1176(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$1, %eax
	je	.L1578
	movq	-1176(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	je	.L1578
	movq	-1176(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$4, %eax
	je	.L1578
	movq	-1176(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$8, %eax
	je	.L1578
	movq	-1176(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$16, %eax
	je	.L1578
	leaq	.LC64(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1578:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -1120(%rbp)
	cmpl	$6, -1120(%rbp)
	jle	.L1579
	leaq	.LC65(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1579:
	cmpl	$3, -1120(%rbp)
	jne	.L1580
	movq	-1176(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$16, %eax
	jne	.L1580
	leaq	.LC65(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1580:
	cmpl	$3, -1120(%rbp)
	jne	.L1581
	movb	$3, -1154(%rbp)
	jmp	.L1582
.L1581:
	movl	-1120(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1582
	leaq	.LC65(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1582:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -1112(%rbp)
	cmpl	$0, -1112(%rbp)
	je	.L1583
	leaq	.LC66(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1583:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -1108(%rbp)
	cmpl	$0, -1108(%rbp)
	je	.L1584
	leaq	.LC67(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1584:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -1124(%rbp)
	cmpl	$1, -1124(%rbp)
	jle	.L1585
	leaq	.LC68(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1585:
	movq	-1096(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1586
	movq	-1096(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L1587
.L1586:
	leaq	.LC69(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1587:
	cmpb	$0, -1154(%rbp)
	jne	.L1588
	movl	-1120(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1589
	movl	$3, %edx
	jmp	.L1590
.L1589:
	movl	$1, %edx
.L1590:
	movl	-1120(%rbp), %eax
	sarl	$2, %eax
	andl	$1, %eax
	addl	%eax, %edx
	movq	-1096(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-1096(%rbp), %rax
	movl	(%rax), %ebx
	movl	$1073741824, %eax
	movl	$0, %edx
	divl	%ebx
	movl	%eax, %edx
	movq	-1096(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	movq	-1096(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jnb	.L1591
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1591:
	cmpl	$2, -1180(%rbp)
	jne	.L1646
	movl	$1, %eax
	jmp	.L1644
.L1588:
	movq	-1096(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-1096(%rbp), %rax
	movl	(%rax), %ebx
	movl	$268435456, %eax
	movl	$0, %edx
	divl	%ebx
	movl	%eax, %edx
	movq	-1096(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jnb	.L1646
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1567:
	cmpl	$0, -1132(%rbp)
	je	.L1593
	leaq	.LC70(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1593:
	movl	-1076(%rbp), %eax
	cmpl	$768, %eax
	jbe	.L1594
	leaq	.LC71(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1594:
	movl	-1076(%rbp), %eax
	movl	%eax, %edx
	movl	$2863311531, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	%eax
	movl	%eax, -1136(%rbp)
	movl	-1136(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-1076(%rbp), %eax
	cmpl	%eax, %edx
	je	.L1595
	leaq	.LC71(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1595:
	movl	$0, -1140(%rbp)
	jmp	.L1596
.L1597:
	movl	-1140(%rbp), %eax
	leal	0(,%rax,4), %ebx
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	%ebx, %edx
	movb	%al, -1056(%rbp,%rdx)
	movl	-1140(%rbp), %eax
	sall	$2, %eax
	leal	1(%rax), %ebx
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	%ebx, %edx
	movb	%al, -1056(%rbp,%rdx)
	movl	-1140(%rbp), %eax
	sall	$2, %eax
	leal	2(%rax), %ebx
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	%ebx, %edx
	movb	%al, -1056(%rbp,%rdx)
	movl	-1140(%rbp), %eax
	sall	$2, %eax
	addl	$3, %eax
	movl	%eax, %eax
	movb	$-1, -1056(%rbp,%rax)
	addl	$1, -1140(%rbp)
.L1596:
	movl	-1140(%rbp), %eax
	cmpl	-1136(%rbp), %eax
	jb	.L1597
	jmp	.L1572
.L1565:
	cmpl	$0, -1132(%rbp)
	je	.L1598
	leaq	.LC70(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1598:
	movq	-1176(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1599
	leaq	.LC72(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1599:
	cmpb	$0, -1154(%rbp)
	je	.L1600
	cmpl	$2, -1180(%rbp)
	jne	.L1601
	movq	-1096(%rbp), %rax
	movl	$4, 8(%rax)
	movl	$1, %eax
	jmp	.L1644
.L1601:
	cmpl	$0, -1136(%rbp)
	jne	.L1602
	leaq	.LC73(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1602:
	movl	-1076(%rbp), %eax
	cmpl	%eax, -1136(%rbp)
	jnb	.L1603
	leaq	.LC74(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1603:
	movb	$4, -1154(%rbp)
	movl	$0, -1140(%rbp)
	jmp	.L1604
.L1605:
	movl	-1140(%rbp), %eax
	sall	$2, %eax
	leal	3(%rax), %ebx
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	%ebx, %edx
	movb	%al, -1056(%rbp,%rdx)
	addl	$1, -1140(%rbp)
.L1604:
	movl	-1076(%rbp), %eax
	cmpl	%eax, -1140(%rbp)
	jb	.L1605
	jmp	.L1572
.L1600:
	movq	-1096(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1607
	leaq	.LC75(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1607:
	movl	-1076(%rbp), %edx
	movq	-1096(%rbp), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	cmpl	%eax, %edx
	je	.L1608
	leaq	.LC74(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1608:
	movb	$1, -1153(%rbp)
	movq	-1176(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$16, %eax
	jne	.L1609
	movl	$0, -1128(%rbp)
	jmp	.L1610
.L1611:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, %edx
	movl	-1128(%rbp), %eax
	cltq
	movw	%dx, -1066(%rbp,%rax,2)
	addl	$1, -1128(%rbp)
.L1610:
	movq	-1096(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -1128(%rbp)
	jl	.L1611
	jmp	.L1572
.L1609:
	movl	$0, -1128(%rbp)
	jmp	.L1612
.L1613:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, %ecx
	movq	-1176(%rbp), %rax
	movl	32(%rax), %eax
	cltq
	leaq	stbi__depth_scale_table(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	movl	-1128(%rbp), %eax
	cltq
	movb	%dl, -1059(%rbp,%rax)
	addl	$1, -1128(%rbp)
.L1612:
	movq	-1096(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -1128(%rbp)
	jl	.L1613
	jmp	.L1572
.L1571:
	cmpl	$0, -1132(%rbp)
	je	.L1614
	leaq	.LC70(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1614:
	cmpb	$0, -1154(%rbp)
	je	.L1615
	cmpl	$0, -1136(%rbp)
	jne	.L1615
	leaq	.LC76(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1615:
	cmpl	$2, -1180(%rbp)
	jne	.L1616
	movzbl	-1154(%rbp), %edx
	movq	-1096(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$1, %eax
	jmp	.L1644
.L1616:
	movl	-1076(%rbp), %edx
	movl	-1148(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	-1148(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L1617
	movl	$0, %eax
	jmp	.L1644
.L1617:
	movl	-1076(%rbp), %edx
	movl	-1148(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -1144(%rbp)
	jnb	.L1618
	movl	-1144(%rbp), %eax
	movl	%eax, -1100(%rbp)
	cmpl	$0, -1144(%rbp)
	jne	.L1620
	movl	-1076(%rbp), %eax
	movl	$4096, %edx
	cmpl	$4096, %eax
	cmovb	%edx, %eax
	movl	%eax, -1144(%rbp)
	jmp	.L1620
.L1621:
	sall	-1144(%rbp)
.L1620:
	movl	-1076(%rbp), %edx
	movl	-1148(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -1144(%rbp)
	jb	.L1621
	movl	-1144(%rbp), %edx
	movq	-1176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -1088(%rbp)
	cmpq	$0, -1088(%rbp)
	jne	.L1622
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1622:
	movq	-1176(%rbp), %rax
	movq	-1088(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L1618:
	movl	-1076(%rbp), %eax
	movl	%eax, %esi
	movq	-1176(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-1148(%rbp), %eax
	leaq	(%rdx,%rax), %rcx
	movq	-1096(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__getn
	testl	%eax, %eax
	jne	.L1623
	leaq	.LC77(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1623:
	movl	-1076(%rbp), %eax
	addl	%eax, -1148(%rbp)
	jmp	.L1572
.L1569:
	cmpl	$0, -1132(%rbp)
	je	.L1624
	leaq	.LC70(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1624:
	cmpl	$0, -1180(%rbp)
	je	.L1626
	movl	$1, %eax
	jmp	.L1644
.L1626:
	movq	-1176(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L1627
	leaq	.LC78(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1627:
	movq	-1096(%rbp), %rax
	movl	(%rax), %edx
	movq	-1176(%rbp), %rax
	movl	32(%rax), %eax
	imull	%edx, %eax
	addl	$7, %eax
	shrl	$3, %eax
	movl	%eax, -1104(%rbp)
	movq	-1096(%rbp), %rax
	movl	4(%rax), %eax
	imull	-1104(%rbp), %eax
	movl	%eax, %edx
	movq	-1096(%rbp), %rax
	movl	8(%rax), %eax
	imull	%eax, %edx
	movq	-1096(%rbp), %rax
	movl	4(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -1152(%rbp)
	cmpl	$0, -1116(%rbp)
	sete	%al
	movzbl	%al, %ecx
	movl	-1152(%rbp), %eax
	movl	%eax, %edi
	movl	-1148(%rbp), %esi
	movq	-1176(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-1152(%rbp), %rdx
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	stbi_zlib_decode_malloc_guesssize_headerflag
	movq	-1176(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-1176(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L1628
	movl	$0, %eax
	jmp	.L1644
.L1628:
	movq	-1176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-1176(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-1096(%rbp), %rax
	movl	8(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, -1184(%rbp)
	jne	.L1629
	cmpl	$3, -1184(%rbp)
	je	.L1629
	cmpb	$0, -1154(%rbp)
	je	.L1630
.L1629:
	cmpb	$0, -1153(%rbp)
	je	.L1631
.L1630:
	movq	-1096(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-1096(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L1632
.L1631:
	movq	-1096(%rbp), %rax
	movl	8(%rax), %edx
	movq	-1096(%rbp), %rax
	movl	%edx, 12(%rax)
.L1632:
	movq	-1176(%rbp), %rax
	movl	32(%rax), %r8d
	movq	-1096(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-1152(%rbp), %edx
	movq	-1176(%rbp), %rax
	movq	16(%rax), %rsi
	movl	-1120(%rbp), %r9d
	movq	-1176(%rbp), %rax
	subq	$8, %rsp
	movl	-1124(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbi__create_png_image
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L1633
	movl	$0, %eax
	jmp	.L1644
.L1633:
	cmpb	$0, -1153(%rbp)
	je	.L1634
	movq	-1176(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$16, %eax
	jne	.L1635
	movq	-1096(%rbp), %rax
	movl	12(%rax), %edx
	leaq	-1066(%rbp), %rcx
	movq	-1176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__compute_transparency16
	testl	%eax, %eax
	jne	.L1634
	movl	$0, %eax
	jmp	.L1644
.L1635:
	movq	-1096(%rbp), %rax
	movl	12(%rax), %edx
	leaq	-1059(%rbp), %rcx
	movq	-1176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__compute_transparency
	testl	%eax, %eax
	jne	.L1634
	movl	$0, %eax
	jmp	.L1644
.L1634:
	cmpl	$0, -1116(%rbp)
	je	.L1636
	movl	%fs:stbi__de_iphone_flag_set@tpoff, %eax
	testl	%eax, %eax
	je	.L1637
	movl	%fs:stbi__de_iphone_flag_local@tpoff, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L1638
.L1637:
	movl	stbi__de_iphone_flag_global(%rip), %eax
	testl	%eax, %eax
	setne	%al
.L1638:
	testb	%al, %al
	je	.L1636
	movq	-1096(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$2, %eax
	jle	.L1636
	movq	-1176(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__de_iphone
.L1636:
	cmpb	$0, -1154(%rbp)
	je	.L1639
	movzbl	-1154(%rbp), %edx
	movq	-1096(%rbp), %rax
	movl	%edx, 8(%rax)
	movzbl	-1154(%rbp), %edx
	movq	-1096(%rbp), %rax
	movl	%edx, 12(%rax)
	cmpl	$2, -1184(%rbp)
	jle	.L1640
	movq	-1096(%rbp), %rax
	movl	-1184(%rbp), %edx
	movl	%edx, 12(%rax)
.L1640:
	movq	-1096(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-1136(%rbp), %edx
	leaq	-1056(%rbp), %rsi
	movq	-1176(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__expand_png_palette
	testl	%eax, %eax
	jne	.L1641
	movl	$0, %eax
	jmp	.L1644
.L1639:
	cmpb	$0, -1153(%rbp)
	je	.L1641
	movq	-1096(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-1096(%rbp), %rax
	movl	%edx, 8(%rax)
.L1641:
	movq	-1176(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-1176(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	$1, %eax
	jmp	.L1644
.L1566:
	cmpl	$0, -1132(%rbp)
	je	.L1642
	leaq	.LC70(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1642:
	movl	-1072(%rbp), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	jne	.L1643
	movl	-1072(%rbp), %eax
	shrl	$24, %eax
	movb	%al, invalid_chunk.8649(%rip)
	movl	-1072(%rbp), %eax
	shrl	$16, %eax
	movb	%al, 1+invalid_chunk.8649(%rip)
	movl	-1072(%rbp), %eax
	shrl	$8, %eax
	movb	%al, 2+invalid_chunk.8649(%rip)
	movl	-1072(%rbp), %eax
	movb	%al, 3+invalid_chunk.8649(%rip)
	leaq	invalid_chunk.8649(%rip), %rdi
	call	stbi__err
	jmp	.L1644
.L1643:
	movl	-1076(%rbp), %eax
	movl	%eax, %edx
	movq	-1096(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	jmp	.L1572
.L1646:
	nop
.L1572:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	jmp	.L1564
.L1644:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1645
	call	__stack_chk_fail@PLT
.L1645:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	stbi__parse_png_file, .-stbi__parse_png_file
	.section	.rodata
.LC79:
	.string	"bad bits_per_channel"
	.text
	.type	stbi__do_png, @function
stbi__do_png:
.LFB649:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L1648
	cmpl	$4, -52(%rbp)
	jle	.L1649
.L1648:
	leaq	.LC42(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1650
.L1649:
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	stbi__parse_png_file
	testl	%eax, %eax
	je	.L1651
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$8, %eax
	jg	.L1652
	movq	-64(%rbp), %rax
	movl	$8, (%rax)
	jmp	.L1653
.L1652:
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$16, %eax
	jne	.L1654
	movq	-64(%rbp), %rax
	movl	$16, (%rax)
	jmp	.L1653
.L1654:
	leaq	.LC79(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1650
.L1653:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	cmpl	$0, -52(%rbp)
	je	.L1655
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -52(%rbp)
	je	.L1655
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	jne	.L1656
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %esi
	movl	-52(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -8(%rbp)
	jmp	.L1657
.L1656:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %esi
	movl	-52(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__convert_format16
	movq	%rax, -8(%rbp)
.L1657:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 12(%rax)
	cmpq	$0, -8(%rbp)
	jne	.L1655
	movq	-8(%rbp), %rax
	jmp	.L1650
.L1655:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -48(%rbp)
	je	.L1651
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L1651:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
.L1650:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	stbi__do_png, .-stbi__do_png
	.type	stbi__png_load, @function
stbi__png_load:
.LFB650:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	%r9, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %r8
	movl	-84(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__do_png
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L1660
	call	__stack_chk_fail@PLT
.L1660:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	stbi__png_load, .-stbi__png_load
	.type	stbi__png_test, @function
stbi__png_test:
.LFB651:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__check_png_header
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	stbi__png_test, .-stbi__png_test
	.type	stbi__png_info_raw, @function
stbi__png_info_raw:
.LFB652:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	stbi__parse_png_file
	testl	%eax, %eax
	jne	.L1664
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1665
.L1664:
	cmpq	$0, -16(%rbp)
	je	.L1666
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L1666:
	cmpq	$0, -24(%rbp)
	je	.L1667
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L1667:
	cmpq	$0, -32(%rbp)
	je	.L1668
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L1668:
	movl	$1, %eax
.L1665:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	stbi__png_info_raw, .-stbi__png_info_raw
	.type	stbi__png_info, @function
stbi__png_info:
.LFB653:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__png_info_raw
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1671
	call	__stack_chk_fail@PLT
.L1671:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	stbi__png_info, .-stbi__png_info
	.type	stbi__png_is16, @function
stbi__png_is16:
.LFB654:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	stbi__png_info_raw
	testl	%eax, %eax
	jne	.L1673
	movl	$0, %eax
	jmp	.L1676
.L1673:
	movl	-16(%rbp), %eax
	cmpl	$16, %eax
	je	.L1675
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1676
.L1675:
	movl	$1, %eax
.L1676:
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L1677
	call	__stack_chk_fail@PLT
.L1677:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	stbi__png_is16, .-stbi__png_is16
	.type	stbi__bmp_test_raw, @function
stbi__bmp_test_raw:
.LFB655:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$66, %al
	je	.L1679
	movl	$0, %eax
	jmp	.L1680
.L1679:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$77, %al
	je	.L1681
	movl	$0, %eax
	jmp	.L1680
.L1681:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movl	%eax, -8(%rbp)
	cmpl	$12, -8(%rbp)
	je	.L1682
	cmpl	$40, -8(%rbp)
	je	.L1682
	cmpl	$56, -8(%rbp)
	je	.L1682
	cmpl	$108, -8(%rbp)
	je	.L1682
	cmpl	$124, -8(%rbp)
	jne	.L1683
.L1682:
	movl	$1, %eax
	jmp	.L1684
.L1683:
	movl	$0, %eax
.L1684:
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L1680:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	stbi__bmp_test_raw, .-stbi__bmp_test_raw
	.type	stbi__bmp_test, @function
stbi__bmp_test:
.LFB656:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__bmp_test_raw
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	stbi__bmp_test, .-stbi__bmp_test
	.type	stbi__high_bit, @function
stbi__high_bit:
.LFB657:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L1688
	movl	$-1, %eax
	jmp	.L1689
.L1688:
	cmpl	$65535, -20(%rbp)
	jbe	.L1690
	addl	$16, -4(%rbp)
	shrl	$16, -20(%rbp)
.L1690:
	cmpl	$255, -20(%rbp)
	jbe	.L1691
	addl	$8, -4(%rbp)
	shrl	$8, -20(%rbp)
.L1691:
	cmpl	$15, -20(%rbp)
	jbe	.L1692
	addl	$4, -4(%rbp)
	shrl	$4, -20(%rbp)
.L1692:
	cmpl	$3, -20(%rbp)
	jbe	.L1693
	addl	$2, -4(%rbp)
	shrl	$2, -20(%rbp)
.L1693:
	cmpl	$1, -20(%rbp)
	jbe	.L1694
	addl	$1, -4(%rbp)
.L1694:
	movl	-4(%rbp), %eax
.L1689:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	stbi__high_bit, .-stbi__high_bit
	.type	stbi__bitcount, @function
stbi__bitcount:
.LFB658:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1431655765, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	shrl	%eax
	andl	$1431655765, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$858993459, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	shrl	$2, %eax
	andl	$858993459, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$252645135, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	stbi__bitcount, .-stbi__bitcount
	.section	.rodata
.LC80:
	.string	"v < 256"
.LC81:
	.string	"bits >= 0 && bits <= 8"
	.text
	.type	stbi__shiftsigned, @function
stbi__shiftsigned:
.LFB659:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L1698
	movl	-8(%rbp), %eax
	negl	%eax
	movl	%eax, %ecx
	sall	%cl, -4(%rbp)
	jmp	.L1699
.L1698:
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, -4(%rbp)
.L1699:
	cmpl	$255, -4(%rbp)
	jbe	.L1700
	leaq	__PRETTY_FUNCTION__.8713(%rip), %rcx
	movl	$5345, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC80(%rip), %rdi
	call	__assert_fail@PLT
.L1700:
	movl	$8, %eax
	subl	-12(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, -4(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L1701
	cmpl	$8, -12(%rbp)
	jle	.L1704
.L1701:
	leaq	__PRETTY_FUNCTION__.8713(%rip), %rcx
	movl	$5347, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC81(%rip), %rdi
	call	__assert_fail@PLT
.L1704:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mul_table.8711(%rip), %rax
	movl	(%rdx,%rax), %eax
	imull	-4(%rbp), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	shift_table.8712(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	stbi__shiftsigned, .-stbi__shiftsigned
	.type	stbi__bmp_set_mask_defaults, @function
stbi__bmp_set_mask_defaults:
.LFB660:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$3, -12(%rbp)
	jne	.L1706
	movl	$1, %eax
	jmp	.L1707
.L1706:
	cmpl	$0, -12(%rbp)
	jne	.L1708
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jne	.L1709
	movq	-8(%rbp), %rax
	movl	$31744, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$992, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$31, 20(%rax)
	jmp	.L1710
.L1709:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	jne	.L1711
	movq	-8(%rbp), %rax
	movl	$16711680, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$65280, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$255, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$-16777216, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	jmp	.L1710
.L1711:
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
.L1710:
	movl	$1, %eax
	jmp	.L1707
.L1708:
	movl	$0, %eax
.L1707:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	stbi__bmp_set_mask_defaults, .-stbi__bmp_set_mask_defaults
	.section	.rodata
.LC82:
	.string	"not BMP"
.LC83:
	.string	"bad BMP"
.LC84:
	.string	"unknown BMP"
.LC85:
	.string	"BMP RLE"
.LC86:
	.string	"BMP JPEG/PNG"
	.text
	.type	stbi__bmp_parse_header, @function
stbi__bmp_parse_header:
.LFB661:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$66, %al
	jne	.L1713
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$77, %al
	je	.L1714
.L1713:
	leaq	.LC82(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1715
.L1714:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movl	24(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-32(%rbp), %rax
	movl	20(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-32(%rbp), %rax
	movl	$14, 32(%rax)
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1716
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1715
.L1716:
	cmpl	$12, -8(%rbp)
	je	.L1717
	cmpl	$40, -8(%rbp)
	je	.L1717
	cmpl	$56, -8(%rbp)
	je	.L1717
	cmpl	$108, -8(%rbp)
	je	.L1717
	cmpl	$124, -8(%rbp)
	je	.L1717
	leaq	.LC84(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1715
.L1717:
	cmpl	$12, -8(%rbp)
	jne	.L1718
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L1719
.L1718:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rdx
	movl	%eax, 4(%rdx)
.L1719:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	cmpl	$1, %eax
	je	.L1720
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1715
.L1720:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	cmpl	$12, -8(%rbp)
	je	.L1721
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L1722
	cmpl	$2, -4(%rbp)
	jne	.L1723
.L1722:
	leaq	.LC85(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1715
.L1723:
	cmpl	$3, -4(%rbp)
	jle	.L1724
	leaq	.LC86(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1715
.L1724:
	cmpl	$3, -4(%rbp)
	jne	.L1725
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L1725
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L1725
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1715
.L1725:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	cmpl	$40, -8(%rbp)
	je	.L1726
	cmpl	$56, -8(%rbp)
	jne	.L1727
.L1726:
	cmpl	$56, -8(%rbp)
	jne	.L1728
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
.L1728:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L1729
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	jne	.L1737
.L1729:
	cmpl	$0, -4(%rbp)
	jne	.L1731
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__bmp_set_mask_defaults
	jmp	.L1737
.L1731:
	cmpl	$3, -4(%rbp)
	jne	.L1732
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-32(%rbp), %rdx
	movl	%eax, 12(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-32(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-32(%rbp), %rdx
	movl	%eax, 20(%rdx)
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	leal	12(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	jne	.L1737
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, %edx
	jne	.L1737
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1715
.L1732:
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1715
.L1727:
	cmpl	$108, -8(%rbp)
	je	.L1733
	cmpl	$124, -8(%rbp)
	je	.L1733
	leaq	.LC83(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1715
.L1733:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-32(%rbp), %rdx
	movl	%eax, 12(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-32(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-32(%rbp), %rdx
	movl	%eax, 20(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-32(%rbp), %rdx
	movl	%eax, 24(%rdx)
	cmpl	$3, -4(%rbp)
	je	.L1734
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__bmp_set_mask_defaults
.L1734:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movl	$0, -12(%rbp)
	jmp	.L1735
.L1736:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	addl	$1, -12(%rbp)
.L1735:
	cmpl	$11, -12(%rbp)
	jle	.L1736
	cmpl	$124, -8(%rbp)
	jne	.L1721
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
	jmp	.L1721
.L1737:
	nop
.L1721:
	movl	$1, %eax
.L1715:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	stbi__bmp_parse_header, .-stbi__bmp_parse_header
	.section	.rodata
.LC87:
	.string	"bad offset"
.LC88:
	.string	"invalid"
.LC89:
	.string	"bad bpp"
.LC90:
	.string	"bad masks"
	.text
	.type	stbi__bmp_load, @function
stbi__bmp_load:
.LFB662:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1304, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1272(%rbp)
	movq	%rsi, -1280(%rbp)
	movq	%rdx, -1288(%rbp)
	movq	%rcx, -1296(%rbp)
	movl	%r8d, -1300(%rbp)
	movq	%r9, -1312(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -1168(%rbp)
	movl	$0, -1164(%rbp)
	movl	$0, -1160(%rbp)
	movl	$0, -1156(%rbp)
	movl	$0, -1248(%rbp)
	movl	$255, -1076(%rbp)
	leaq	-1104(%rbp), %rdx
	movq	-1272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__bmp_parse_header
	testq	%rax, %rax
	jne	.L1739
	movl	$0, %eax
	jmp	.L1822
.L1739:
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -1152(%rbp)
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movq	-1272(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$16777216, %eax
	jbe	.L1741
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1822
.L1741:
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16777216, %eax
	jbe	.L1742
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1822
.L1742:
	movl	-1092(%rbp), %eax
	movl	%eax, -1168(%rbp)
	movl	-1088(%rbp), %eax
	movl	%eax, -1164(%rbp)
	movl	-1084(%rbp), %eax
	movl	%eax, -1160(%rbp)
	movl	-1080(%rbp), %eax
	movl	%eax, -1156(%rbp)
	movl	-1076(%rbp), %eax
	movl	%eax, -1252(%rbp)
	movl	-1096(%rbp), %eax
	cmpl	$12, %eax
	jne	.L1743
	movl	-1104(%rbp), %eax
	cmpl	$23, %eax
	jg	.L1744
	movl	-1100(%rbp), %edx
	movl	-1072(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$24, %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -1248(%rbp)
	jmp	.L1744
.L1743:
	movl	-1104(%rbp), %eax
	cmpl	$15, %eax
	jg	.L1744
	movl	-1100(%rbp), %edx
	movl	-1072(%rbp), %eax
	subl	%eax, %edx
	movl	-1096(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -1248(%rbp)
.L1744:
	cmpl	$0, -1248(%rbp)
	jne	.L1745
	movl	-1100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1272(%rbp), %rax
	movl	184(%rax), %eax
	movslq	%eax, %rcx
	movq	-1272(%rbp), %rax
	movq	192(%rax), %rsi
	movq	-1272(%rbp), %rax
	movq	208(%rax), %rax
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	je	.L1745
	leaq	.LC87(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1822
.L1745:
	movl	-1104(%rbp), %eax
	cmpl	$24, %eax
	jne	.L1746
	cmpl	$-16777216, -1156(%rbp)
	jne	.L1746
	movq	-1272(%rbp), %rax
	movl	$3, 8(%rax)
	jmp	.L1747
.L1746:
	cmpl	$0, -1156(%rbp)
	je	.L1748
	movl	$4, %edx
	jmp	.L1749
.L1748:
	movl	$3, %edx
.L1749:
	movq	-1272(%rbp), %rax
	movl	%edx, 8(%rax)
.L1747:
	cmpl	$0, -1300(%rbp)
	je	.L1750
	cmpl	$2, -1300(%rbp)
	jle	.L1750
	movl	-1300(%rbp), %eax
	movl	%eax, -1232(%rbp)
	jmp	.L1751
.L1750:
	movq	-1272(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -1232(%rbp)
.L1751:
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	-1232(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	testl	%eax, %eax
	jne	.L1752
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1822
.L1752:
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	-1232(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -1128(%rbp)
	cmpq	$0, -1128(%rbp)
	jne	.L1753
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1822
.L1753:
	movl	-1104(%rbp), %eax
	cmpl	$15, %eax
	jg	.L1754
	movl	$0, -1228(%rbp)
	cmpl	$0, -1248(%rbp)
	je	.L1755
	cmpl	$256, -1248(%rbp)
	jle	.L1756
.L1755:
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC88(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1822
.L1756:
	movl	$0, -1244(%rbp)
	jmp	.L1757
.L1759:
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	-1244(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, -1054(%rbp,%rdx,4)
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	-1244(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, -1055(%rbp,%rdx,4)
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	-1244(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, -1056(%rbp,%rdx,4)
	movl	-1096(%rbp), %eax
	cmpl	$12, %eax
	je	.L1758
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
.L1758:
	movl	-1244(%rbp), %eax
	cltq
	movb	$-1, -1053(%rbp,%rax,4)
	addl	$1, -1244(%rbp)
.L1757:
	movl	-1244(%rbp), %eax
	cmpl	-1248(%rbp), %eax
	jl	.L1759
	movl	-1100(%rbp), %edx
	movl	-1072(%rbp), %eax
	subl	%eax, %edx
	movl	-1096(%rbp), %eax
	subl	%eax, %edx
	movl	-1096(%rbp), %eax
	cmpl	$12, %eax
	jne	.L1760
	movl	$3, %eax
	jmp	.L1761
.L1760:
	movl	$4, %eax
.L1761:
	imull	-1248(%rbp), %eax
	subl	%eax, %edx
	movq	-1272(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movl	-1104(%rbp), %eax
	cmpl	$1, %eax
	jne	.L1762
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	addl	$7, %eax
	shrl	$3, %eax
	movl	%eax, -1236(%rbp)
	jmp	.L1763
.L1762:
	movl	-1104(%rbp), %eax
	cmpl	$4, %eax
	jne	.L1764
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	shrl	%eax
	movl	%eax, -1236(%rbp)
	jmp	.L1763
.L1764:
	movl	-1104(%rbp), %eax
	cmpl	$8, %eax
	jne	.L1765
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -1236(%rbp)
	jmp	.L1763
.L1765:
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC89(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1822
.L1763:
	movl	-1236(%rbp), %eax
	negl	%eax
	andl	$3, %eax
	movl	%eax, -1148(%rbp)
	movl	-1104(%rbp), %eax
	cmpl	$1, %eax
	jne	.L1766
	movl	$0, -1240(%rbp)
	jmp	.L1767
.L1774:
	movl	$7, -1224(%rbp)
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -1220(%rbp)
	movl	$0, -1244(%rbp)
	jmp	.L1768
.L1773:
	movl	-1224(%rbp), %eax
	movl	-1220(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -1132(%rbp)
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rax, %rdx
	movl	-1132(%rbp), %eax
	cltq
	movzbl	-1056(%rbp,%rax,4), %eax
	movb	%al, (%rdx)
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rax, %rdx
	movl	-1132(%rbp), %eax
	cltq
	movzbl	-1055(%rbp,%rax,4), %eax
	movb	%al, (%rdx)
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rax, %rdx
	movl	-1132(%rbp), %eax
	cltq
	movzbl	-1054(%rbp,%rax,4), %eax
	movb	%al, (%rdx)
	cmpl	$4, -1232(%rbp)
	jne	.L1769
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
.L1769:
	movl	-1244(%rbp), %eax
	leal	1(%rax), %edx
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L1824
	subl	$1, -1224(%rbp)
	cmpl	$0, -1224(%rbp)
	jns	.L1772
	movl	$7, -1224(%rbp)
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -1220(%rbp)
.L1772:
	addl	$1, -1244(%rbp)
.L1768:
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -1244(%rbp)
	jl	.L1773
	jmp	.L1771
.L1824:
	nop
.L1771:
	movl	-1148(%rbp), %edx
	movq	-1272(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	addl	$1, -1240(%rbp)
.L1767:
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -1240(%rbp)
	jl	.L1774
	jmp	.L1775
.L1766:
	movl	$0, -1240(%rbp)
	jmp	.L1776
.L1786:
	movl	$0, -1244(%rbp)
	jmp	.L1777
.L1785:
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -1216(%rbp)
	movl	$0, -1212(%rbp)
	movl	-1104(%rbp), %eax
	cmpl	$4, %eax
	jne	.L1778
	movl	-1216(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -1212(%rbp)
	sarl	$4, -1216(%rbp)
.L1778:
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rax, %rdx
	movl	-1216(%rbp), %eax
	cltq
	movzbl	-1056(%rbp,%rax,4), %eax
	movb	%al, (%rdx)
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rax, %rdx
	movl	-1216(%rbp), %eax
	cltq
	movzbl	-1055(%rbp,%rax,4), %eax
	movb	%al, (%rdx)
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rax, %rdx
	movl	-1216(%rbp), %eax
	cltq
	movzbl	-1054(%rbp,%rax,4), %eax
	movb	%al, (%rdx)
	cmpl	$4, -1232(%rbp)
	jne	.L1779
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
.L1779:
	movl	-1244(%rbp), %eax
	leal	1(%rax), %edx
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L1825
	movl	-1104(%rbp), %eax
	cmpl	$8, %eax
	jne	.L1782
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	jmp	.L1783
.L1782:
	movl	-1212(%rbp), %eax
.L1783:
	movl	%eax, -1216(%rbp)
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rax, %rdx
	movl	-1216(%rbp), %eax
	cltq
	movzbl	-1056(%rbp,%rax,4), %eax
	movb	%al, (%rdx)
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rax, %rdx
	movl	-1216(%rbp), %eax
	cltq
	movzbl	-1055(%rbp,%rax,4), %eax
	movb	%al, (%rdx)
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rax, %rdx
	movl	-1216(%rbp), %eax
	cltq
	movzbl	-1054(%rbp,%rax,4), %eax
	movb	%al, (%rdx)
	cmpl	$4, -1232(%rbp)
	jne	.L1784
	movl	-1228(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1228(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
.L1784:
	addl	$2, -1244(%rbp)
.L1777:
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -1244(%rbp)
	jl	.L1785
	jmp	.L1781
.L1825:
	nop
.L1781:
	movl	-1148(%rbp), %edx
	movq	-1272(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	addl	$1, -1240(%rbp)
.L1776:
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -1240(%rbp)
	jl	.L1786
	jmp	.L1775
.L1754:
	movl	$0, -1208(%rbp)
	movl	$0, -1204(%rbp)
	movl	$0, -1200(%rbp)
	movl	$0, -1196(%rbp)
	movl	$0, -1192(%rbp)
	movl	$0, -1188(%rbp)
	movl	$0, -1184(%rbp)
	movl	$0, -1180(%rbp)
	movl	$0, -1176(%rbp)
	movl	$0, -1172(%rbp)
	movl	-1100(%rbp), %edx
	movl	-1072(%rbp), %eax
	subl	%eax, %edx
	movl	-1096(%rbp), %eax
	subl	%eax, %edx
	movq	-1272(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movl	-1104(%rbp), %eax
	cmpl	$24, %eax
	jne	.L1787
	movq	-1272(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -1236(%rbp)
	jmp	.L1788
.L1787:
	movl	-1104(%rbp), %eax
	cmpl	$16, %eax
	jne	.L1789
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, %eax
	movl	%eax, -1236(%rbp)
	jmp	.L1788
.L1789:
	movl	$0, -1236(%rbp)
.L1788:
	movl	-1236(%rbp), %eax
	negl	%eax
	andl	$3, %eax
	movl	%eax, -1148(%rbp)
	movl	-1104(%rbp), %eax
	cmpl	$24, %eax
	jne	.L1790
	movl	$1, -1172(%rbp)
	jmp	.L1791
.L1790:
	movl	-1104(%rbp), %eax
	cmpl	$32, %eax
	jne	.L1791
	cmpl	$255, -1160(%rbp)
	jne	.L1791
	cmpl	$65280, -1164(%rbp)
	jne	.L1791
	cmpl	$16711680, -1168(%rbp)
	jne	.L1791
	cmpl	$-16777216, -1156(%rbp)
	jne	.L1791
	movl	$2, -1172(%rbp)
.L1791:
	cmpl	$0, -1172(%rbp)
	jne	.L1792
	cmpl	$0, -1168(%rbp)
	je	.L1793
	cmpl	$0, -1164(%rbp)
	je	.L1793
	cmpl	$0, -1160(%rbp)
	jne	.L1794
.L1793:
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC90(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1822
.L1794:
	movl	-1168(%rbp), %eax
	movl	%eax, %edi
	call	stbi__high_bit
	subl	$7, %eax
	movl	%eax, -1208(%rbp)
	movl	-1168(%rbp), %eax
	movl	%eax, %edi
	call	stbi__bitcount
	movl	%eax, -1192(%rbp)
	movl	-1164(%rbp), %eax
	movl	%eax, %edi
	call	stbi__high_bit
	subl	$7, %eax
	movl	%eax, -1204(%rbp)
	movl	-1164(%rbp), %eax
	movl	%eax, %edi
	call	stbi__bitcount
	movl	%eax, -1188(%rbp)
	movl	-1160(%rbp), %eax
	movl	%eax, %edi
	call	stbi__high_bit
	subl	$7, %eax
	movl	%eax, -1200(%rbp)
	movl	-1160(%rbp), %eax
	movl	%eax, %edi
	call	stbi__bitcount
	movl	%eax, -1184(%rbp)
	movl	-1156(%rbp), %eax
	movl	%eax, %edi
	call	stbi__high_bit
	subl	$7, %eax
	movl	%eax, -1196(%rbp)
	movl	-1156(%rbp), %eax
	movl	%eax, %edi
	call	stbi__bitcount
	movl	%eax, -1180(%rbp)
	cmpl	$8, -1192(%rbp)
	jg	.L1795
	cmpl	$8, -1188(%rbp)
	jg	.L1795
	cmpl	$8, -1184(%rbp)
	jg	.L1795
	cmpl	$8, -1180(%rbp)
	jle	.L1792
.L1795:
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC90(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1822
.L1792:
	movl	$0, -1240(%rbp)
	jmp	.L1796
.L1811:
	cmpl	$0, -1172(%rbp)
	je	.L1797
	movl	$0, -1244(%rbp)
	jmp	.L1798
.L1802:
	movl	-1176(%rbp), %eax
	cltq
	leaq	2(%rax), %rdx
	movq	-1128(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, (%rbx)
	movl	-1176(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-1128(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, (%rbx)
	movl	-1176(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, (%rbx)
	addl	$3, -1176(%rbp)
	cmpl	$2, -1172(%rbp)
	jne	.L1799
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	jmp	.L1800
.L1799:
	movl	$-1, %eax
.L1800:
	movb	%al, -1254(%rbp)
	movzbl	-1254(%rbp), %eax
	orl	%eax, -1252(%rbp)
	cmpl	$4, -1232(%rbp)
	jne	.L1801
	movl	-1176(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1176(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-1254(%rbp), %eax
	movb	%al, (%rdx)
.L1801:
	addl	$1, -1244(%rbp)
.L1798:
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -1244(%rbp)
	jl	.L1802
	jmp	.L1803
.L1797:
	movl	-1104(%rbp), %eax
	movl	%eax, -1144(%rbp)
	movl	$0, -1244(%rbp)
	jmp	.L1804
.L1810:
	cmpl	$16, -1144(%rbp)
	jne	.L1805
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	jmp	.L1806
.L1805:
	movq	-1272(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32le
.L1806:
	movl	%eax, -1140(%rbp)
	movl	-1140(%rbp), %eax
	andl	-1168(%rbp), %eax
	movl	-1192(%rbp), %edx
	movl	-1208(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__shiftsigned
	movl	%eax, %ecx
	movl	-1176(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1176(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-1140(%rbp), %eax
	andl	-1164(%rbp), %eax
	movl	-1188(%rbp), %edx
	movl	-1204(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__shiftsigned
	movl	%eax, %ecx
	movl	-1176(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1176(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-1140(%rbp), %eax
	andl	-1160(%rbp), %eax
	movl	-1184(%rbp), %edx
	movl	-1200(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__shiftsigned
	movl	%eax, %ecx
	movl	-1176(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1176(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	cmpl	$0, -1156(%rbp)
	je	.L1807
	movl	-1140(%rbp), %eax
	andl	-1156(%rbp), %eax
	movl	-1180(%rbp), %edx
	movl	-1196(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__shiftsigned
	jmp	.L1808
.L1807:
	movl	$255, %eax
.L1808:
	movl	%eax, -1136(%rbp)
	movl	-1136(%rbp), %eax
	orl	%eax, -1252(%rbp)
	cmpl	$4, -1232(%rbp)
	jne	.L1809
	movl	-1176(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1176(%rbp)
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rdx, %rax
	movl	-1136(%rbp), %edx
	movb	%dl, (%rax)
.L1809:
	addl	$1, -1244(%rbp)
.L1804:
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -1244(%rbp)
	jl	.L1810
.L1803:
	movl	-1148(%rbp), %edx
	movq	-1272(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	addl	$1, -1240(%rbp)
.L1796:
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -1240(%rbp)
	jl	.L1811
.L1775:
	cmpl	$4, -1232(%rbp)
	jne	.L1812
	cmpl	$0, -1252(%rbp)
	jne	.L1812
	movq	-1272(%rbp), %rax
	movl	(%rax), %edx
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	sall	$2, %eax
	subl	$1, %eax
	movl	%eax, -1244(%rbp)
	jmp	.L1813
.L1814:
	movl	-1244(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1128(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
	subl	$4, -1244(%rbp)
.L1813:
	cmpl	$0, -1244(%rbp)
	jns	.L1814
.L1812:
	cmpl	$0, -1152(%rbp)
	je	.L1815
	movl	$0, -1240(%rbp)
	jmp	.L1816
.L1819:
	movq	-1272(%rbp), %rax
	movl	(%rax), %edx
	movl	-1240(%rbp), %eax
	imull	%eax, %edx
	movl	-1232(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	movq	-1128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1120(%rbp)
	movq	-1272(%rbp), %rax
	movl	4(%rax), %edx
	movl	-1240(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movl	-1232(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	movq	-1128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1112(%rbp)
	movl	$0, -1244(%rbp)
	jmp	.L1817
.L1818:
	movl	-1244(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1253(%rbp)
	movl	-1244(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1112(%rbp), %rax
	addq	%rdx, %rax
	movl	-1244(%rbp), %edx
	movslq	%edx, %rcx
	movq	-1120(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-1244(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1112(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-1253(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -1244(%rbp)
.L1817:
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	imull	-1232(%rbp), %eax
	cmpl	%eax, -1244(%rbp)
	jl	.L1818
	addl	$1, -1240(%rbp)
.L1816:
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	sarl	%eax
	cmpl	%eax, -1240(%rbp)
	jl	.L1819
.L1815:
	cmpl	$0, -1300(%rbp)
	je	.L1820
	movl	-1300(%rbp), %eax
	cmpl	-1232(%rbp), %eax
	je	.L1820
	movq	-1272(%rbp), %rax
	movl	4(%rax), %edi
	movq	-1272(%rbp), %rax
	movl	(%rax), %ecx
	movl	-1300(%rbp), %edx
	movl	-1232(%rbp), %esi
	movq	-1128(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -1128(%rbp)
	cmpq	$0, -1128(%rbp)
	jne	.L1820
	movq	-1128(%rbp), %rax
	jmp	.L1822
.L1820:
	movq	-1272(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-1280(%rbp), %rax
	movl	%edx, (%rax)
	movq	-1272(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-1288(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -1296(%rbp)
	je	.L1821
	movq	-1272(%rbp), %rax
	movl	8(%rax), %edx
	movq	-1296(%rbp), %rax
	movl	%edx, (%rax)
.L1821:
	movq	-1128(%rbp), %rax
.L1822:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1823
	call	__stack_chk_fail@PLT
.L1823:
	addq	$1304, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	stbi__bmp_load, .-stbi__bmp_load
	.type	stbi__tga_get_comp, @function
stbi__tga_get_comp:
.LFB663:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1827
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.L1827:
	movl	-4(%rbp), %eax
	subl	$8, %eax
	cmpl	$24, %eax
	ja	.L1828
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L1830(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L1830(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L1830:
	.long	.L1833-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1832-.L1830
	.long	.L1831-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1829-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1828-.L1830
	.long	.L1829-.L1830
	.text
.L1833:
	movl	$1, %eax
	jmp	.L1834
.L1831:
	cmpl	$0, -8(%rbp)
	je	.L1832
	movl	$2, %eax
	jmp	.L1834
.L1832:
	cmpq	$0, -16(%rbp)
	je	.L1835
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
.L1835:
	movl	$3, %eax
	jmp	.L1834
.L1829:
	movl	-4(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	jmp	.L1834
.L1828:
	movl	$0, %eax
.L1834:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	stbi__tga_get_comp, .-stbi__tga_get_comp
	.type	stbi__tga_info, @function
stbi__tga_info:
.LFB664:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	cmpl	$1, -24(%rbp)
	jle	.L1837
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1838
.L1837:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$1, -24(%rbp)
	jne	.L1839
	cmpl	$1, -20(%rbp)
	je	.L1840
	cmpl	$9, -20(%rbp)
	je	.L1840
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1838
.L1840:
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$8, -16(%rbp)
	je	.L1841
	cmpl	$15, -16(%rbp)
	je	.L1841
	cmpl	$16, -16(%rbp)
	je	.L1841
	cmpl	$24, -16(%rbp)
	je	.L1841
	cmpl	$32, -16(%rbp)
	je	.L1841
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1838
.L1841:
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L1842
.L1839:
	cmpl	$2, -20(%rbp)
	je	.L1843
	cmpl	$3, -20(%rbp)
	je	.L1843
	cmpl	$10, -20(%rbp)
	je	.L1843
	cmpl	$11, -20(%rbp)
	je	.L1843
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1838
.L1843:
	movq	-40(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movl	$0, -28(%rbp)
.L1842:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L1844
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1838
.L1844:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L1845
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1838
.L1845:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpl	$0, -28(%rbp)
	je	.L1846
	cmpl	$8, -4(%rbp)
	je	.L1847
	cmpl	$16, -4(%rbp)
	je	.L1847
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1838
.L1847:
	movl	-28(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	stbi__tga_get_comp
	movl	%eax, -32(%rbp)
	jmp	.L1848
.L1846:
	cmpl	$3, -20(%rbp)
	je	.L1849
	cmpl	$11, -20(%rbp)
	jne	.L1850
.L1849:
	movl	$1, %ecx
	jmp	.L1851
.L1850:
	movl	$0, %ecx
.L1851:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__tga_get_comp
	movl	%eax, -32(%rbp)
.L1848:
	cmpl	$0, -32(%rbp)
	jne	.L1852
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L1838
.L1852:
	cmpq	$0, -48(%rbp)
	je	.L1853
	movq	-48(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
.L1853:
	cmpq	$0, -56(%rbp)
	je	.L1854
	movq	-56(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
.L1854:
	cmpq	$0, -64(%rbp)
	je	.L1855
	movq	-64(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rax)
.L1855:
	movl	$1, %eax
.L1838:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	stbi__tga_info, .-stbi__tga_info
	.type	stbi__tga_test, @function
stbi__tga_test:
.LFB665:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jg	.L1869
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$1, -8(%rbp)
	jne	.L1859
	cmpl	$1, -4(%rbp)
	je	.L1860
	cmpl	$9, -4(%rbp)
	jne	.L1870
.L1860:
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$8, -4(%rbp)
	je	.L1861
	cmpl	$15, -4(%rbp)
	je	.L1861
	cmpl	$16, -4(%rbp)
	je	.L1861
	cmpl	$24, -4(%rbp)
	je	.L1861
	cmpl	$32, -4(%rbp)
	jne	.L1871
.L1861:
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__skip
	jmp	.L1862
.L1859:
	cmpl	$2, -4(%rbp)
	je	.L1863
	cmpl	$3, -4(%rbp)
	je	.L1863
	cmpl	$10, -4(%rbp)
	je	.L1863
	cmpl	$11, -4(%rbp)
	jne	.L1872
.L1863:
	movq	-24(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	stbi__skip
.L1862:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	testl	%eax, %eax
	jle	.L1873
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	testl	%eax, %eax
	jle	.L1874
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$1, -8(%rbp)
	jne	.L1866
	cmpl	$8, -4(%rbp)
	je	.L1866
	cmpl	$16, -4(%rbp)
	jne	.L1875
.L1866:
	cmpl	$8, -4(%rbp)
	je	.L1867
	cmpl	$15, -4(%rbp)
	je	.L1867
	cmpl	$16, -4(%rbp)
	je	.L1867
	cmpl	$24, -4(%rbp)
	je	.L1867
	cmpl	$32, -4(%rbp)
	jne	.L1876
.L1867:
	movl	$1, -12(%rbp)
	jmp	.L1858
.L1869:
	nop
	jmp	.L1858
.L1870:
	nop
	jmp	.L1858
.L1871:
	nop
	jmp	.L1858
.L1872:
	nop
	jmp	.L1858
.L1873:
	nop
	jmp	.L1858
.L1874:
	nop
	jmp	.L1858
.L1875:
	nop
	jmp	.L1858
.L1876:
	nop
.L1858:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	stbi__tga_test, .-stbi__tga_test
	.type	stbi__tga_read_rgb16, @function
stbi__tga_read_rgb16:
.LFB666:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movw	%ax, -16(%rbp)
	movw	$31, -14(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$10, %ax
	andw	-14(%rbp), %ax
	movzwl	%ax, %eax
	movl	%eax, -12(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
	andw	-14(%rbp), %ax
	movzwl	%ax, %eax
	movl	%eax, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	-14(%rbp), %ax
	movzwl	%ax, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$-2078209981, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$4, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$-2078209981, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$4, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$-2078209981, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$4, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	stbi__tga_read_rgb16, .-stbi__tga_read_rgb16
	.section	.rodata
.LC91:
	.string	"bad format"
.LC92:
	.string	"bad palette"
.LC93:
	.string	"tga_comp == STBI_rgb"
	.text
	.type	stbi__tga_load, @function
stbi__tga_load:
.LFB667:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movl	%r8d, -196(%rbp)
	movq	%r9, -208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -108(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -152(%rbp)
	movl	$0, -148(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -100(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -96(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -92(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -88(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -84(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -80(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -76(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -72(%rbp)
	movl	$0, -156(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -128(%rbp)
	movl	$1, -124(%rbp)
	cmpl	$16777216, -76(%rbp)
	jle	.L1879
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1930
.L1879:
	cmpl	$16777216, -80(%rbp)
	jle	.L1881
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1930
.L1881:
	cmpl	$7, -152(%rbp)
	jle	.L1882
	subl	$8, -152(%rbp)
	movl	$1, -148(%rbp)
.L1882:
	movl	-68(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -104(%rbp)
	je	.L1883
	leaq	-156(%rbp), %rdx
	movl	-92(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	stbi__tga_get_comp
	movl	%eax, -144(%rbp)
	jmp	.L1884
.L1883:
	cmpl	$3, -152(%rbp)
	sete	%al
	movzbl	%al, %ecx
	leaq	-156(%rbp), %rdx
	movl	-72(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__tga_get_comp
	movl	%eax, -144(%rbp)
.L1884:
	cmpl	$0, -144(%rbp)
	jne	.L1885
	leaq	.LC91(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1930
.L1885:
	movq	-176(%rbp), %rax
	movl	-80(%rbp), %edx
	movl	%edx, (%rax)
	movq	-184(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, (%rax)
	cmpq	$0, -192(%rbp)
	je	.L1886
	movq	-192(%rbp), %rax
	movl	-144(%rbp), %edx
	movl	%edx, (%rax)
.L1886:
	movl	-144(%rbp), %edx
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	testl	%eax, %eax
	jne	.L1887
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1930
.L1887:
	movl	-144(%rbp), %edx
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L1888
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1930
.L1888:
	movl	-108(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	cmpl	$0, -104(%rbp)
	jne	.L1889
	cmpl	$0, -148(%rbp)
	jne	.L1889
	movl	-156(%rbp), %eax
	testl	%eax, %eax
	jne	.L1889
	movl	$0, -140(%rbp)
	jmp	.L1890
.L1893:
	cmpl	$0, -68(%rbp)
	je	.L1891
	movl	-76(%rbp), %eax
	subl	-140(%rbp), %eax
	subl	$1, %eax
	jmp	.L1892
.L1891:
	movl	-140(%rbp), %eax
.L1892:
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	imull	-80(%rbp), %eax
	imull	-144(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-80(%rbp), %eax
	imull	-144(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__getn
	addl	$1, -140(%rbp)
.L1890:
	movl	-140(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L1893
	jmp	.L1894
.L1889:
	cmpl	$0, -104(%rbp)
	je	.L1895
	cmpl	$0, -96(%rbp)
	jne	.L1896
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC92(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1930
.L1896:
	movl	-100(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movl	-144(%rbp), %ecx
	movl	-96(%rbp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbi__malloc_mad2
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L1897
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1930
.L1897:
	movl	-156(%rbp), %eax
	testl	%eax, %eax
	je	.L1898
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$3, -144(%rbp)
	je	.L1899
	leaq	__PRETTY_FUNCTION__.8896(%rip), %rcx
	movl	$5880, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC93(%rip), %rdi
	call	__assert_fail@PLT
.L1899:
	movl	$0, -140(%rbp)
	jmp	.L1900
.L1901:
	movq	-40(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__tga_read_rgb16
	movl	-144(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	addl	$1, -140(%rbp)
.L1900:
	movl	-140(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jl	.L1901
	jmp	.L1895
.L1898:
	movl	-96(%rbp), %eax
	imull	-144(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__getn
	testl	%eax, %eax
	jne	.L1895
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC92(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1930
.L1895:
	movl	$0, -140(%rbp)
	jmp	.L1902
.L1920:
	cmpl	$0, -148(%rbp)
	je	.L1903
	cmpl	$0, -132(%rbp)
	jne	.L1904
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	andl	$127, %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-60(%rbp), %eax
	sarl	$7, %eax
	movl	%eax, -128(%rbp)
	movl	$1, -124(%rbp)
	jmp	.L1905
.L1904:
	cmpl	$0, -128(%rbp)
	jne	.L1905
	movl	$1, -124(%rbp)
	jmp	.L1905
.L1903:
	movl	$1, -124(%rbp)
.L1905:
	cmpl	$0, -124(%rbp)
	je	.L1906
	cmpl	$0, -104(%rbp)
	je	.L1907
	cmpl	$8, -72(%rbp)
	jne	.L1908
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	jmp	.L1909
.L1908:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
.L1909:
	movl	%eax, -120(%rbp)
	movl	-120(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jl	.L1910
	movl	$0, -120(%rbp)
.L1910:
	movl	-120(%rbp), %eax
	imull	-144(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$0, -136(%rbp)
	jmp	.L1911
.L1912:
	movl	-120(%rbp), %edx
	movl	-136(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-136(%rbp), %eax
	cltq
	movb	%dl, -12(%rbp,%rax)
	addl	$1, -136(%rbp)
.L1911:
	movl	-136(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jl	.L1912
	jmp	.L1913
.L1907:
	movl	-156(%rbp), %eax
	testl	%eax, %eax
	je	.L1914
	cmpl	$3, -144(%rbp)
	je	.L1915
	leaq	__PRETTY_FUNCTION__.8896(%rip), %rcx
	movl	$5929, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC93(%rip), %rdi
	call	__assert_fail@PLT
.L1915:
	leaq	-12(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__tga_read_rgb16
	jmp	.L1913
.L1914:
	movl	$0, -136(%rbp)
	jmp	.L1916
.L1917:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, -12(%rbp,%rdx)
	addl	$1, -136(%rbp)
.L1916:
	movl	-136(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jl	.L1917
.L1913:
	movl	$0, -124(%rbp)
.L1906:
	movl	$0, -136(%rbp)
	jmp	.L1918
.L1919:
	movl	-140(%rbp), %eax
	imull	-144(%rbp), %eax
	movl	%eax, %edx
	movl	-136(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-136(%rbp), %eax
	cltq
	movzbl	-12(%rbp,%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -136(%rbp)
.L1918:
	movl	-136(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jl	.L1919
	subl	$1, -132(%rbp)
	addl	$1, -140(%rbp)
.L1902:
	movl	-80(%rbp), %eax
	imull	-76(%rbp), %eax
	cmpl	%eax, -140(%rbp)
	jl	.L1920
	cmpl	$0, -68(%rbp)
	je	.L1921
	movl	$0, -136(%rbp)
	jmp	.L1922
.L1925:
	movl	-136(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	-144(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -116(%rbp)
	movl	-76(%rbp), %eax
	subl	$1, %eax
	subl	-136(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	-144(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -112(%rbp)
	movl	-80(%rbp), %eax
	imull	-144(%rbp), %eax
	movl	%eax, -140(%rbp)
	jmp	.L1923
.L1924:
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -158(%rbp)
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-158(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -116(%rbp)
	addl	$1, -112(%rbp)
	subl	$1, -140(%rbp)
.L1923:
	cmpl	$0, -140(%rbp)
	jg	.L1924
	addl	$1, -136(%rbp)
.L1922:
	movl	-136(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, -76(%rbp)
	jg	.L1925
.L1921:
	cmpq	$0, -48(%rbp)
	je	.L1894
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L1894:
	cmpl	$2, -144(%rbp)
	jle	.L1926
	movl	-156(%rbp), %eax
	testl	%eax, %eax
	jne	.L1926
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -140(%rbp)
	jmp	.L1927
.L1928:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -157(%rbp)
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	leaq	2(%rax), %rdx
	movzbl	-157(%rbp), %eax
	movb	%al, (%rdx)
	movl	-144(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
	addl	$1, -140(%rbp)
.L1927:
	movl	-80(%rbp), %eax
	imull	-76(%rbp), %eax
	cmpl	%eax, -140(%rbp)
	jl	.L1928
.L1926:
	cmpl	$0, -196(%rbp)
	je	.L1929
	movl	-196(%rbp), %eax
	cmpl	-144(%rbp), %eax
	je	.L1929
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %ecx
	movl	-196(%rbp), %edx
	movl	-144(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -56(%rbp)
.L1929:
	movl	$0, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	-56(%rbp), %rax
.L1930:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1931
	call	__stack_chk_fail@PLT
.L1931:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	stbi__tga_load, .-stbi__tga_load
	.type	stbi__psd_test, @function
stbi__psd_test:
.LFB668:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	cmpl	$943870035, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	stbi__psd_test, .-stbi__psd_test
	.type	stbi__psd_decode_rle, @function
stbi__psd_decode_rle:
.LFB669:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L1935
.L1944:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$128, -8(%rbp)
	je	.L1935
	cmpl	$127, -8(%rbp)
	jg	.L1936
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L1937
	movl	$0, %eax
	jmp	.L1938
.L1937:
	movl	-8(%rbp), %eax
	addl	%eax, -12(%rbp)
	jmp	.L1939
.L1940:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-32(%rbp), %rdx
	movb	%al, (%rdx)
	addq	$4, -32(%rbp)
	subl	$1, -8(%rbp)
.L1939:
	cmpl	$0, -8(%rbp)
	jne	.L1940
	jmp	.L1935
.L1936:
	cmpl	$128, -8(%rbp)
	jle	.L1935
	movl	$257, %eax
	subl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L1941
	movl	$0, %eax
	jmp	.L1938
.L1941:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -13(%rbp)
	movl	-8(%rbp), %eax
	addl	%eax, -12(%rbp)
	jmp	.L1942
.L1943:
	movq	-32(%rbp), %rax
	movzbl	-13(%rbp), %edx
	movb	%dl, (%rax)
	addq	$4, -32(%rbp)
	subl	$1, -8(%rbp)
.L1942:
	cmpl	$0, -8(%rbp)
	jne	.L1943
.L1935:
	movl	-36(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L1944
	movl	$1, %eax
.L1938:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	stbi__psd_decode_rle, .-stbi__psd_decode_rle
	.section	.rodata
.LC94:
	.string	"not PSD"
.LC95:
	.string	"wrong version"
.LC96:
	.string	"wrong channel count"
.LC97:
	.string	"unsupported bit depth"
.LC98:
	.string	"wrong color format"
.LC99:
	.string	"corrupt"
	.text
	.type	stbi__psd_load, @function
stbi__psd_load:
.LFB670:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movl	%r8d, -164(%rbp)
	movq	%r9, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	cmpl	$943870035, %eax
	je	.L1946
	leaq	.LC94(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1946:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	cmpl	$1, %eax
	je	.L1948
	leaq	.LC95(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1948:
	movq	-136(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	js	.L1949
	cmpl	$16, -112(%rbp)
	jle	.L1950
.L1949:
	leaq	.LC96(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1950:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, -108(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, -104(%rbp)
	cmpl	$16777216, -108(%rbp)
	jle	.L1951
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1951:
	cmpl	$16777216, -104(%rbp)
	jle	.L1952
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1952:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -100(%rbp)
	cmpl	$8, -100(%rbp)
	je	.L1953
	cmpl	$16, -100(%rbp)
	je	.L1953
	leaq	.LC97(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1953:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	cmpl	$3, %eax
	je	.L1954
	leaq	.LC98(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1954:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, %edx
	movq	-136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, %edx
	movq	-136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, %edx
	movq	-136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -96(%rbp)
	cmpl	$1, -96(%rbp)
	jle	.L1955
	leaq	.LC52(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1955:
	movl	-108(%rbp), %edx
	movl	-104(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %esi
	movl	$4, %edi
	call	stbi__mad3sizes_valid
	testl	%eax, %eax
	jne	.L1956
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1956:
	cmpl	$0, -96(%rbp)
	jne	.L1957
	cmpl	$16, -100(%rbp)
	jne	.L1957
	cmpl	$16, 16(%rbp)
	jne	.L1957
	movl	-108(%rbp), %edx
	movl	-104(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %esi
	movl	$8, %edi
	call	stbi__malloc_mad3
	movq	%rax, -64(%rbp)
	movq	-176(%rbp), %rax
	movl	$16, (%rax)
	jmp	.L1958
.L1957:
	movl	-104(%rbp), %eax
	imull	-108(%rbp), %eax
	sall	$2, %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -64(%rbp)
.L1958:
	cmpq	$0, -64(%rbp)
	jne	.L1959
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1959:
	movl	-104(%rbp), %eax
	imull	-108(%rbp), %eax
	movl	%eax, -92(%rbp)
	cmpl	$0, -96(%rbp)
	je	.L1960
	movl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	leal	(%rax,%rax), %edx
	movq	-136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movl	$0, -120(%rbp)
	jmp	.L1961
.L1968:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	-120(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jl	.L1962
	movl	$0, -116(%rbp)
	jmp	.L1963
.L1966:
	cmpl	$3, -120(%rbp)
	jne	.L1964
	movl	$-1, %edx
	jmp	.L1965
.L1964:
	movl	$0, %edx
.L1965:
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
	addl	$1, -116(%rbp)
	addq	$4, -56(%rbp)
.L1963:
	movl	-116(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L1966
	jmp	.L1967
.L1962:
	movl	-92(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__psd_decode_rle
	testl	%eax, %eax
	jne	.L1967
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC99(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L1947
.L1967:
	addl	$1, -120(%rbp)
.L1961:
	cmpl	$3, -120(%rbp)
	jle	.L1968
	jmp	.L1969
.L1960:
	movl	$0, -120(%rbp)
	jmp	.L1970
.L1991:
	movl	-120(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jl	.L1971
	cmpl	$16, -100(%rbp)
	jne	.L1972
	cmpl	$16, 16(%rbp)
	jne	.L1972
	movl	-120(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	cmpl	$3, -120(%rbp)
	jne	.L1973
	movl	$-1, %eax
	jmp	.L1974
.L1973:
	movl	$0, %eax
.L1974:
	movw	%ax, -122(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L1975
.L1976:
	movq	-48(%rbp), %rax
	movzwl	-122(%rbp), %edx
	movw	%dx, (%rax)
	addl	$1, -116(%rbp)
	addq	$8, -48(%rbp)
.L1975:
	movl	-116(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L1976
	jmp	.L1982
.L1972:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	cmpl	$3, -120(%rbp)
	jne	.L1978
	movl	$-1, %eax
	jmp	.L1979
.L1978:
	movl	$0, %eax
.L1979:
	movb	%al, -123(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L1980
.L1981:
	movq	-40(%rbp), %rax
	movzbl	-123(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -116(%rbp)
	addq	$4, -40(%rbp)
.L1980:
	movl	-116(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L1981
	jmp	.L1982
.L1971:
	movq	-176(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jne	.L1983
	movl	-120(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L1984
.L1985:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
	addl	$1, -116(%rbp)
	addq	$8, -32(%rbp)
.L1984:
	movl	-116(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L1985
	jmp	.L1982
.L1983:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	cmpl	$16, -100(%rbp)
	jne	.L1986
	movl	$0, -116(%rbp)
	jmp	.L1987
.L1988:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	addl	$1, -116(%rbp)
	addq	$4, -24(%rbp)
.L1987:
	movl	-116(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L1988
	jmp	.L1982
.L1986:
	movl	$0, -116(%rbp)
	jmp	.L1989
.L1990:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-24(%rbp), %rdx
	movb	%al, (%rdx)
	addl	$1, -116(%rbp)
	addq	$4, -24(%rbp)
.L1989:
	movl	-116(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L1990
.L1982:
	addl	$1, -120(%rbp)
.L1970:
	cmpl	$3, -120(%rbp)
	jle	.L1991
.L1969:
	cmpl	$3, -112(%rbp)
	jle	.L1992
	movq	-176(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jne	.L1993
	movl	$0, -116(%rbp)
	jmp	.L1994
.L1996:
	movl	-116(%rbp), %eax
	sall	$2, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	.L1995
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzwl	(%rax), %eax
	cmpw	$-1, %ax
	je	.L1995
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC100(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC6(%rip), %xmm0
	divss	-76(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	.LC6(%rip), %xmm0
	movaps	%xmm0, %xmm1
	subss	-72(%rbp), %xmm1
	movss	.LC100(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-72(%rbp), %xmm0
	addss	-68(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-72(%rbp), %xmm0
	addss	-68(%rbp), %xmm0
	movq	-8(%rbp), %rax
	addq	$2, %rax
	cvttss2sil	%xmm0, %edx
	movw	%dx, (%rax)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-72(%rbp), %xmm0
	addss	-68(%rbp), %xmm0
	movq	-8(%rbp), %rax
	addq	$4, %rax
	cvttss2sil	%xmm0, %edx
	movw	%dx, (%rax)
.L1995:
	addl	$1, -116(%rbp)
.L1994:
	movl	-104(%rbp), %eax
	imull	-108(%rbp), %eax
	cmpl	%eax, -116(%rbp)
	jl	.L1996
	jmp	.L1992
.L1993:
	movl	$0, -116(%rbp)
	jmp	.L1997
.L1999:
	movl	-116(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L1998
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$-1, %al
	je	.L1998
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movss	.LC6(%rip), %xmm0
	divss	-88(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	.LC6(%rip), %xmm0
	movaps	%xmm0, %xmm1
	subss	-84(%rbp), %xmm1
	movss	.LC9(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-84(%rbp), %xmm0
	addss	-80(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-84(%rbp), %xmm0
	addss	-80(%rbp), %xmm0
	movq	-16(%rbp), %rax
	addq	$1, %rax
	cvttss2sil	%xmm0, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-84(%rbp), %xmm0
	addss	-80(%rbp), %xmm0
	movq	-16(%rbp), %rax
	addq	$2, %rax
	cvttss2sil	%xmm0, %edx
	movb	%dl, (%rax)
.L1998:
	addl	$1, -116(%rbp)
.L1997:
	movl	-104(%rbp), %eax
	imull	-108(%rbp), %eax
	cmpl	%eax, -116(%rbp)
	jl	.L1999
.L1992:
	cmpl	$0, -164(%rbp)
	je	.L2000
	cmpl	$4, -164(%rbp)
	je	.L2000
	movq	-176(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jne	.L2001
	movl	-108(%rbp), %esi
	movl	-104(%rbp), %ecx
	movl	-164(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%esi, %r8d
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__convert_format16
	movq	%rax, -64(%rbp)
	jmp	.L2002
.L2001:
	movl	-108(%rbp), %esi
	movl	-104(%rbp), %ecx
	movl	-164(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%esi, %r8d
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -64(%rbp)
.L2002:
	cmpq	$0, -64(%rbp)
	jne	.L2000
	movq	-64(%rbp), %rax
	jmp	.L1947
.L2000:
	cmpq	$0, -160(%rbp)
	je	.L2003
	movq	-160(%rbp), %rax
	movl	$4, (%rax)
.L2003:
	movq	-152(%rbp), %rax
	movl	-108(%rbp), %edx
	movl	%edx, (%rax)
	movq	-144(%rbp), %rax
	movl	-104(%rbp), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
.L1947:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	stbi__psd_load, .-stbi__psd_load
	.type	stbi__pic_is4, @function
stbi__pic_is4:
.LFB671:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2005
.L2008:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	cmpb	%dl, %al
	je	.L2006
	movl	$0, %eax
	jmp	.L2007
.L2006:
	addl	$1, -4(%rbp)
.L2005:
	cmpl	$3, -4(%rbp)
	jle	.L2008
	movl	$1, %eax
.L2007:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	stbi__pic_is4, .-stbi__pic_is4
	.section	.rodata
.LC101:
	.string	"S\200\3664"
.LC102:
	.string	"PICT"
	.text
	.type	stbi__pic_test_core, @function
stbi__pic_test_core:
.LFB672:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC101(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__pic_is4
	testl	%eax, %eax
	jne	.L2010
	movl	$0, %eax
	jmp	.L2011
.L2010:
	movl	$0, -4(%rbp)
	jmp	.L2012
.L2013:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	addl	$1, -4(%rbp)
.L2012:
	cmpl	$83, -4(%rbp)
	jle	.L2013
	movq	-24(%rbp), %rax
	leaq	.LC102(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__pic_is4
	testl	%eax, %eax
	jne	.L2014
	movl	$0, %eax
	jmp	.L2011
.L2014:
	movl	$1, %eax
.L2011:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	stbi__pic_test_core, .-stbi__pic_test_core
	.section	.rodata
.LC103:
	.string	"bad file"
	.text
	.type	stbi__readval, @function
stbi__readval:
.LFB673:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$128, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2016
.L2020:
	movl	-44(%rbp), %eax
	andl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L2017
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	je	.L2018
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2019
.L2018:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, (%rbx)
.L2017:
	addl	$1, -20(%rbp)
	sarl	-24(%rbp)
.L2016:
	cmpl	$3, -20(%rbp)
	jle	.L2020
	movq	-56(%rbp), %rax
.L2019:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	stbi__readval, .-stbi__readval
	.type	stbi__copyval, @function
stbi__copyval:
.LFB674:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$128, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2022
.L2024:
	movl	-20(%rbp), %eax
	andl	-8(%rbp), %eax
	testl	%eax, %eax
	je	.L2023
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L2023:
	addl	$1, -4(%rbp)
	sarl	-8(%rbp)
.L2022:
	cmpl	$3, -4(%rbp)
	jle	.L2024
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	stbi__copyval, .-stbi__copyval
	.type	stbi__pic_load_core, @function
stbi__pic_load_core:
.LFB675:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movl	%edx, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -116(%rbp)
	movl	$0, -112(%rbp)
.L2030:
	cmpl	$10, -112(%rbp)
	jne	.L2026
	leaq	.LC91(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2069
.L2026:
	movl	-112(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -112(%rbp)
	leaq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-64(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-64(%rbp), %rdx
	movb	%al, 1(%rdx)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-64(%rbp), %rdx
	movb	%al, 2(%rdx)
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, -116(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	je	.L2028
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2069
.L2028:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	je	.L2029
	leaq	.LC91(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2069
.L2029:
	cmpl	$0, -76(%rbp)
	jne	.L2030
	movl	-116(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L2031
	movl	$4, %edx
	jmp	.L2032
.L2031:
	movl	$3, %edx
.L2032:
	movq	-152(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -108(%rbp)
	jmp	.L2033
.L2068:
	movl	$0, -104(%rbp)
	jmp	.L2034
.L2067:
	leaq	-48(%rbp), %rcx
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movl	-108(%rbp), %eax
	imull	-140(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	cmpl	$2, %eax
	je	.L2035
	cmpl	$2, %eax
	jg	.L2036
	testl	%eax, %eax
	je	.L2037
	cmpl	$1, %eax
	je	.L2038
.L2036:
	leaq	.LC91(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2069
.L2037:
	movl	$0, -100(%rbp)
	jmp	.L2039
.L2041:
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %ecx
	movq	-72(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__readval
	testq	%rax, %rax
	jne	.L2040
	movl	$0, %eax
	jmp	.L2069
.L2040:
	addl	$1, -100(%rbp)
	addq	$4, -72(%rbp)
.L2039:
	movl	-100(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jl	.L2041
	jmp	.L2042
.L2038:
	movl	-140(%rbp), %eax
	movl	%eax, -96(%rbp)
	jmp	.L2043
.L2050:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -117(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	je	.L2044
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2069
.L2044:
	movzbl	-117(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jge	.L2046
	movl	-96(%rbp), %eax
	movb	%al, -117(%rbp)
.L2046:
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %ecx
	leaq	-12(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__readval
	testq	%rax, %rax
	jne	.L2047
	movl	$0, %eax
	jmp	.L2069
.L2047:
	movl	$0, -92(%rbp)
	jmp	.L2048
.L2049:
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	leaq	-12(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	stbi__copyval
	addl	$1, -92(%rbp)
	addq	$4, -72(%rbp)
.L2048:
	movzbl	-117(%rbp), %eax
	cmpl	%eax, -92(%rbp)
	jl	.L2049
	movzbl	-117(%rbp), %eax
	subl	%eax, -96(%rbp)
.L2043:
	cmpl	$0, -96(%rbp)
	jg	.L2050
	jmp	.L2042
.L2035:
	movl	-140(%rbp), %eax
	movl	%eax, -88(%rbp)
	jmp	.L2051
.L2066:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -84(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	je	.L2052
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2069
.L2052:
	cmpl	$127, -84(%rbp)
	jle	.L2053
	cmpl	$128, -84(%rbp)
	jne	.L2054
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -84(%rbp)
	jmp	.L2055
.L2054:
	subl	$127, -84(%rbp)
.L2055:
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.L2056
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2069
.L2056:
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %ecx
	leaq	-12(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__readval
	testq	%rax, %rax
	jne	.L2058
	movl	$0, %eax
	jmp	.L2069
.L2058:
	movl	$0, -80(%rbp)
	jmp	.L2059
.L2060:
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	leaq	-12(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	stbi__copyval
	addl	$1, -80(%rbp)
	addq	$4, -72(%rbp)
.L2059:
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L2060
	jmp	.L2061
.L2053:
	addl	$1, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.L2062
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2069
.L2062:
	movl	$0, -80(%rbp)
	jmp	.L2063
.L2065:
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %ecx
	movq	-72(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbi__readval
	testq	%rax, %rax
	jne	.L2064
	movl	$0, %eax
	jmp	.L2069
.L2064:
	addl	$1, -80(%rbp)
	addq	$4, -72(%rbp)
.L2063:
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L2065
.L2061:
	movl	-84(%rbp), %eax
	subl	%eax, -88(%rbp)
.L2051:
	cmpl	$0, -88(%rbp)
	jg	.L2066
	nop
.L2042:
	addl	$1, -104(%rbp)
.L2034:
	movl	-104(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jl	.L2067
	addl	$1, -108(%rbp)
.L2033:
	movl	-108(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jl	.L2068
	movq	-160(%rbp), %rax
.L2069:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2070
	call	__stack_chk_fail@PLT
.L2070:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	stbi__pic_load_core, .-stbi__pic_load_core
	.type	stbi__pic_load, @function
stbi__pic_load:
.LFB676:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	%r9, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -64(%rbp)
	jne	.L2072
	leaq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.L2072:
	movl	$0, -28(%rbp)
	jmp	.L2073
.L2074:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	addl	$1, -28(%rbp)
.L2073:
	cmpl	$91, -28(%rbp)
	jle	.L2074
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -20(%rbp)
	cmpl	$16777216, -20(%rbp)
	jle	.L2075
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2083
.L2075:
	cmpl	$16777216, -24(%rbp)
	jle	.L2077
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2083
.L2077:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	je	.L2078
	leaq	.LC103(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2083
.L2078:
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %eax
	movl	$0, %ecx
	movl	$4, %edx
	movl	%eax, %edi
	call	stbi__mad3sizes_valid
	testl	%eax, %eax
	jne	.L2079
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2083
.L2079:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %eax
	movl	$0, %ecx
	movl	$4, %edx
	movl	%eax, %edi
	call	stbi__malloc_mad3
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2080
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2083
.L2080:
	movl	-24(%rbp), %eax
	imull	-20(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbi__pic_load_core
	testq	%rax, %rax
	jne	.L2081
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -16(%rbp)
.L2081:
	movq	-48(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	cmpl	$0, -68(%rbp)
	jne	.L2082
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
.L2082:
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %ecx
	movl	-68(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
.L2083:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2084
	call	__stack_chk_fail@PLT
.L2084:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	stbi__pic_load, .-stbi__pic_load
	.type	stbi__pic_test, @function
stbi__pic_test:
.LFB677:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pic_test_core
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	stbi__pic_test, .-stbi__pic_test
	.type	stbi__gif_test_raw, @function
stbi__gif_test_raw:
.LFB678:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$71, %al
	jne	.L2088
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$73, %al
	jne	.L2088
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$70, %al
	jne	.L2088
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$56, %al
	je	.L2089
.L2088:
	movl	$0, %eax
	jmp	.L2090
.L2089:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$57, -4(%rbp)
	je	.L2091
	cmpl	$55, -4(%rbp)
	je	.L2091
	movl	$0, %eax
	jmp	.L2090
.L2091:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$97, %al
	je	.L2092
	movl	$0, %eax
	jmp	.L2090
.L2092:
	movl	$1, %eax
.L2090:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	stbi__gif_test_raw, .-stbi__gif_test_raw
	.type	stbi__gif_test, @function
stbi__gif_test:
.LFB679:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__gif_test_raw
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	stbi__gif_test, .-stbi__gif_test
	.type	stbi__gif_parse_colortable, @function
stbi__gif_parse_colortable:
.LFB680:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2096
.L2099:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, 2(%rbx)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, 1(%rbx)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, (%rbx)
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L2097
	movl	$0, %ecx
	jmp	.L2098
.L2097:
	movl	$-1, %ecx
.L2098:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	%cl, 3(%rax)
	addl	$1, -20(%rbp)
.L2096:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L2099
	nop
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	stbi__gif_parse_colortable, .-stbi__gif_parse_colortable
	.section	.rodata
.LC104:
	.string	"not GIF"
.LC105:
	.string	""
	.text
	.type	stbi__gif_header, @function
stbi__gif_header:
.LFB681:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$71, %al
	jne	.L2101
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$73, %al
	jne	.L2101
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$70, %al
	jne	.L2101
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$56, %al
	je	.L2102
.L2101:
	leaq	.LC104(%rip), %rdi
	call	stbi__err
	jmp	.L2103
.L2102:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -1(%rbp)
	cmpb	$55, -1(%rbp)
	je	.L2104
	cmpb	$57, -1(%rbp)
	je	.L2104
	leaq	.LC104(%rip), %rdi
	call	stbi__err
	jmp	.L2103
.L2104:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$97, %al
	je	.L2105
	leaq	.LC104(%rip), %rdi
	call	stbi__err
	jmp	.L2103
.L2105:
	leaq	.LC105(%rip), %rax
	movq	%rax, %fs:stbi__g_failure_reason@tpoff
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movq	-32(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 44(%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16777216, %eax
	jle	.L2106
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L2103
.L2106:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$16777216, %eax
	jle	.L2107
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	jmp	.L2103
.L2107:
	cmpq	$0, -40(%rbp)
	je	.L2108
	movq	-40(%rbp), %rax
	movl	$4, (%rax)
.L2108:
	cmpl	$0, -44(%rbp)
	je	.L2109
	movl	$1, %eax
	jmp	.L2103
.L2109:
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L2110
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	andl	$7, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-32(%rbp), %rax
	leaq	52(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	stbi__gif_parse_colortable
.L2110:
	movl	$1, %eax
.L2103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	stbi__gif_header, .-stbi__gif_header
	.type	stbi__gif_info_raw, @function
stbi__gif_info_raw:
.LFB682:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$34928, %edi
	call	stbi__malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2112
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	jmp	.L2113
.L2112:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	stbi__gif_header
	testl	%eax, %eax
	jne	.L2114
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2113
.L2114:
	cmpq	$0, -32(%rbp)
	je	.L2115
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L2115:
	cmpq	$0, -40(%rbp)
	je	.L2116
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L2116:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
.L2113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	stbi__gif_info_raw, .-stbi__gif_info_raw
	.type	stbi__out_gif_code, @function
stbi__out_gif_code:
.LFB683:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movw	%ax, -44(%rbp)
	movzwl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movslq	%edx, %rdx
	addq	$524, %rdx
	movzwl	4(%rax,%rdx,4), %eax
	testw	%ax, %ax
	js	.L2118
	movzwl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movslq	%edx, %rdx
	addq	$524, %rdx
	movzwl	4(%rax,%rdx,4), %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__out_gif_code
.L2118:
	movq	-40(%rbp), %rax
	movl	34912(%rax), %edx
	movq	-40(%rbp), %rax
	movl	34904(%rax), %eax
	cmpl	%eax, %edx
	jge	.L2124
	movq	-40(%rbp), %rax
	movl	34908(%rax), %edx
	movq	-40(%rbp), %rax
	movl	34912(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-20(%rbp), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	34872(%rax), %rdx
	movzwl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rcx
	addq	$524, %rcx
	movzbl	7(%rax,%rcx,4), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$-128, %al
	jbe	.L2121
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-16(%rbp), %rax
	leaq	3(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %eax
	movb	%al, (%rdx)
.L2121:
	movq	-40(%rbp), %rax
	movl	34908(%rax), %eax
	leal	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 34908(%rax)
	movq	-40(%rbp), %rax
	movl	34908(%rax), %edx
	movq	-40(%rbp), %rax
	movl	34900(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2117
	movq	-40(%rbp), %rax
	movl	34892(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 34908(%rax)
	movq	-40(%rbp), %rax
	movl	34912(%rax), %edx
	movq	-40(%rbp), %rax
	movl	34884(%rax), %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 34912(%rax)
	jmp	.L2122
.L2123:
	movq	-40(%rbp), %rax
	movl	34916(%rax), %edx
	movq	-40(%rbp), %rax
	movl	34880(%rax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 34884(%rax)
	movq	-40(%rbp), %rax
	movl	34896(%rax), %edx
	movq	-40(%rbp), %rax
	movl	34884(%rax), %eax
	sarl	%eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 34912(%rax)
	movq	-40(%rbp), %rax
	movl	34880(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 34880(%rax)
.L2122:
	movq	-40(%rbp), %rax
	movl	34912(%rax), %edx
	movq	-40(%rbp), %rax
	movl	34904(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2117
	movq	-40(%rbp), %rax
	movl	34880(%rax), %eax
	testl	%eax, %eax
	jg	.L2123
	jmp	.L2117
.L2124:
	nop
.L2117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	stbi__out_gif_code, .-stbi__out_gif_code
	.section	.rodata
.LC106:
	.string	"no clear code"
.LC107:
	.string	"too many codes"
.LC108:
	.string	"illegal code in raster"
	.text
	.type	stbi__process_gif_raster, @function
stbi__process_gif_raster:
.LFB684:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -53(%rbp)
	cmpb	$12, -53(%rbp)
	jbe	.L2126
	movl	$0, %eax
	jmp	.L2127
.L2126:
	movzbl	-53(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	$1, -44(%rbp)
	movzbl	-53(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L2128
.L2129:
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$524, %rdx
	movw	$-1, 4(%rax,%rdx,4)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$524, %rdx
	movb	%cl, 6(%rax,%rdx,4)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$524, %rdx
	movb	%cl, 7(%rax,%rdx,4)
	addl	$1, -48(%rbp)
.L2128:
	movl	-48(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L2129
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -32(%rbp)
	movl	$-1, -28(%rbp)
	movl	$0, -52(%rbp)
.L2145:
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.L2130
	cmpl	$0, -52(%rbp)
	jne	.L2131
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L2131
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L2127
.L2131:
	subl	$1, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -24(%rbp)
	addl	$8, -20(%rbp)
	jmp	.L2145
.L2130:
	movl	-24(%rbp), %eax
	andl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, -24(%rbp)
	movl	-40(%rbp), %eax
	subl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.L2133
	movzbl	-53(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -32(%rbp)
	movl	$-1, -28(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L2145
.L2133:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L2134
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	jmp	.L2135
.L2136:
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
.L2135:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L2136
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L2127
.L2134:
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.L2137
	cmpl	$0, -44(%rbp)
	je	.L2138
	leaq	.LC106(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2127
.L2138:
	cmpl	$0, -28(%rbp)
	js	.L2139
	movl	-32(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -32(%rbp)
	cltq
	addq	$524, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	cmpl	$8192, -32(%rbp)
	jle	.L2140
	leaq	.LC107(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2127
.L2140:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	movq	-80(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$524, %rdx
	movzbl	6(%rax,%rdx,4), %edx
	movq	-8(%rbp), %rax
	movb	%dl, 2(%rax)
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L2141
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %eax
	jmp	.L2142
.L2141:
	movq	-80(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$524, %rdx
	movzbl	6(%rax,%rdx,4), %eax
.L2142:
	movq	-8(%rbp), %rdx
	movb	%al, 3(%rdx)
	jmp	.L2143
.L2139:
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L2143
	leaq	.LC108(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2127
.L2143:
	movl	-12(%rbp), %eax
	movzwl	%ax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__out_gif_code
	movl	-32(%rbp), %eax
	andl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L2144
	cmpl	$4095, -32(%rbp)
	jg	.L2144
	addl	$1, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
.L2144:
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L2145
.L2137:
	leaq	.LC108(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
.L2127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	stbi__process_gif_raster, .-stbi__process_gif_raster
	.section	.rodata
.LC109:
	.string	"bad Image Descriptor"
.LC110:
	.string	"missing color table"
.LC111:
	.string	"unknown code"
	.text
	.type	stbi__gif_load_next, @function
stbi__gif_load_next:
.LFB685:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movq	%r8, -104(%rbp)
	movl	$0, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L2147
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	stbi__gif_header
	testl	%eax, %eax
	jne	.L2148
	movl	$0, %eax
	jmp	.L2149
.L2148:
	movq	-80(%rbp), %rax
	movl	4(%rax), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	$0, %ecx
	movl	%eax, %esi
	movl	$4, %edi
	call	stbi__mad3sizes_valid
	testl	%eax, %eax
	jne	.L2150
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2149
.L2150:
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	sall	$2, %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	-80(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movl	-40(%rbp), %eax
	sall	$2, %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	-80(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movl	-40(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	-80(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L2151
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L2151
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L2152
.L2151:
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2149
.L2152:
	movl	-40(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-40(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -48(%rbp)
	jmp	.L2153
.L2147:
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	sarl	$2, %eax
	andl	$7, %eax
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -40(%rbp)
	cmpl	$3, -52(%rbp)
	jne	.L2154
	cmpq	$0, -104(%rbp)
	jne	.L2154
	movl	$2, -52(%rbp)
.L2154:
	cmpl	$3, -52(%rbp)
	jne	.L2155
	movl	$0, -44(%rbp)
	jmp	.L2156
.L2158:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2157
	movl	-44(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	sall	$2, %eax
	cltq
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
.L2157:
	addl	$1, -44(%rbp)
.L2156:
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L2158
	jmp	.L2159
.L2155:
	cmpl	$2, -52(%rbp)
	jne	.L2159
	movl	$0, -44(%rbp)
	jmp	.L2160
.L2162:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2161
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-44(%rbp), %eax
	sall	$2, %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	sall	$2, %eax
	cltq
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
.L2161:
	addl	$1, -44(%rbp)
.L2160:
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L2162
.L2159:
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L2153:
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L2188:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	cmpl	$59, -36(%rbp)
	je	.L2163
	cmpl	$59, -36(%rbp)
	jg	.L2164
	cmpl	$33, -36(%rbp)
	je	.L2165
	cmpl	$44, -36(%rbp)
	jne	.L2164
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -28(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jg	.L2166
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jle	.L2167
.L2166:
	leaq	.LC109(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2149
.L2167:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	leal	0(,%rax,4), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34916(%rax)
	movl	-32(%rbp), %eax
	leal	0(,%rax,4), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34892(%rax)
	movq	-80(%rbp), %rax
	movl	34916(%rax), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34896(%rax)
	movq	-80(%rbp), %rax
	movl	34892(%rax), %eax
	movl	-24(%rbp), %edx
	sall	$2, %edx
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34900(%rax)
	movq	-80(%rbp), %rax
	movl	34896(%rax), %edx
	movq	-80(%rbp), %rax
	movl	34916(%rax), %eax
	imull	-20(%rbp), %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34904(%rax)
	movq	-80(%rbp), %rax
	movl	34892(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34908(%rax)
	movq	-80(%rbp), %rax
	movl	34896(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34912(%rax)
	cmpl	$0, -24(%rbp)
	jne	.L2168
	movq	-80(%rbp), %rax
	movl	34904(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34912(%rax)
.L2168:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34888(%rax)
	movq	-80(%rbp), %rax
	movl	34888(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L2169
	movq	-80(%rbp), %rax
	movl	34916(%rax), %eax
	leal	0(,%rax,8), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34884(%rax)
	movq	-80(%rbp), %rax
	movl	$3, 34880(%rax)
	jmp	.L2170
.L2169:
	movq	-80(%rbp), %rax
	movl	34916(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34884(%rax)
	movq	-80(%rbp), %rax
	movl	$0, 34880(%rax)
.L2170:
	movq	-80(%rbp), %rax
	movl	34888(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L2171
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2172
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	jmp	.L2173
.L2172:
	movl	$-1, %eax
.L2173:
	movq	-80(%rbp), %rdx
	movl	34888(%rdx), %edx
	andl	$7, %edx
	movl	$2, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	movq	-80(%rbp), %rcx
	leaq	1076(%rcx), %rsi
	movq	-72(%rbp), %rdi
	movl	%eax, %ecx
	call	stbi__gif_parse_colortable
	movq	-80(%rbp), %rax
	leaq	1076(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 34872(%rax)
	jmp	.L2174
.L2171:
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L2175
	movq	-80(%rbp), %rax
	leaq	52(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 34872(%rax)
	jmp	.L2174
.L2175:
	leaq	.LC110(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2149
.L2174:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__process_gif_raster
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2176
	movl	$0, %eax
	jmp	.L2149
.L2176:
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L2177
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jle	.L2177
	movl	$0, -44(%rbp)
	jmp	.L2178
.L2180:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L2179
	movq	-80(%rbp), %rax
	movl	36(%rax), %edx
	movq	-80(%rbp), %rax
	movslq	%edx, %rdx
	movb	$-1, 55(%rax,%rdx,4)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	cltq
	addq	$12, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	sall	$2, %eax
	cltq
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
.L2179:
	addl	$1, -44(%rbp)
.L2178:
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L2180
.L2177:
	movq	-8(%rbp), %rax
	jmp	.L2149
.L2165:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$249, -16(%rbp)
	jne	.L2186
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$4, -12(%rbp)
	jne	.L2182
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16le
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 34920(%rax)
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	js	.L2183
	movq	-80(%rbp), %rax
	movl	44(%rax), %edx
	movq	-80(%rbp), %rax
	movslq	%edx, %rdx
	movb	$-1, 55(%rax,%rdx,4)
.L2183:
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2184
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	js	.L2186
	movq	-80(%rbp), %rax
	movl	44(%rax), %edx
	movq	-80(%rbp), %rax
	movslq	%edx, %rdx
	movb	$0, 55(%rax,%rdx,4)
	jmp	.L2186
.L2184:
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movq	-80(%rbp), %rax
	movl	$-1, 44(%rax)
	jmp	.L2186
.L2182:
	movl	-12(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
	jmp	.L2185
.L2187:
	movl	-12(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbi__skip
.L2186:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L2187
	jmp	.L2185
.L2163:
	movq	-72(%rbp), %rax
	jmp	.L2149
.L2164:
	leaq	.LC111(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2149
.L2185:
	jmp	.L2188
.L2149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	stbi__gif_load_next, .-stbi__gif_load_next
	.type	stbi__load_gif_main_outofmem, @function
stbi__load_gif_main_outofmem:
.LFB686:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	cmpq	$0, -16(%rbp)
	je	.L2190
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L2190:
	cmpq	$0, -24(%rbp)
	je	.L2191
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2191
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L2191:
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	stbi__load_gif_main_outofmem, .-stbi__load_gif_main_outofmem
	.type	stbi__load_gif_main, @function
stbi__load_gif_main:
.LFB687:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-32768(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$2288, %rsp
	movq	%rdi, -35016(%rbp)
	movq	%rsi, -35024(%rbp)
	movq	%rdx, -35032(%rbp)
	movq	%rcx, -35040(%rbp)
	movq	%r8, -35048(%rbp)
	movq	%r9, -35056(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-35016(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__gif_test
	testl	%eax, %eax
	je	.L2194
	movl	$0, -35000(%rbp)
	movq	$0, -34984(%rbp)
	movq	$0, -34976(%rbp)
	movq	$0, -34968(%rbp)
	movl	$0, -34996(%rbp)
	movl	$0, -34992(%rbp)
	leaq	-34944(%rbp), %rax
	movl	$34928, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$0, -35024(%rbp)
	je	.L2206
	movq	-35024(%rbp), %rax
	movq	$0, (%rax)
.L2206:
	movq	-34968(%rbp), %rcx
	movq	-35056(%rbp), %rdx
	leaq	-34944(%rbp), %rsi
	movq	-35016(%rbp), %rax
	movq	%rcx, %r8
	movl	16(%rbp), %ecx
	movq	%rax, %rdi
	call	stbi__gif_load_next
	movq	%rax, -34984(%rbp)
	movq	-34984(%rbp), %rax
	cmpq	-35016(%rbp), %rax
	jne	.L2196
	movq	$0, -34984(%rbp)
.L2196:
	cmpq	$0, -34984(%rbp)
	je	.L2197
	movl	-34944(%rbp), %edx
	movq	-35032(%rbp), %rax
	movl	%edx, (%rax)
	movl	-34940(%rbp), %edx
	movq	-35040(%rbp), %rax
	movl	%edx, (%rax)
	addl	$1, -35000(%rbp)
	movl	-34944(%rbp), %edx
	movl	-34940(%rbp), %eax
	imull	%edx, %eax
	sall	$2, %eax
	movl	%eax, -34988(%rbp)
	cmpq	$0, -34976(%rbp)
	je	.L2198
	movl	-35000(%rbp), %eax
	imull	-34988(%rbp), %eax
	movslq	%eax, %rdx
	movq	-34976(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -34960(%rbp)
	cmpq	$0, -34960(%rbp)
	jne	.L2199
	movq	-35024(%rbp), %rdx
	movq	-34976(%rbp), %rcx
	leaq	-34944(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__load_gif_main_outofmem
	jmp	.L2208
.L2199:
	movq	-34960(%rbp), %rax
	movq	%rax, -34976(%rbp)
	movl	-35000(%rbp), %eax
	imull	-34988(%rbp), %eax
	movl	%eax, -34996(%rbp)
	cmpq	$0, -35024(%rbp)
	je	.L2201
	movl	-35000(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-35024(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -34952(%rbp)
	cmpq	$0, -34952(%rbp)
	jne	.L2202
	movq	-35024(%rbp), %rdx
	movq	-34976(%rbp), %rcx
	leaq	-34944(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__load_gif_main_outofmem
	jmp	.L2208
.L2202:
	movq	-35024(%rbp), %rax
	movq	-34952(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-35000(%rbp), %eax
	cltq
	sall	$2, %eax
	movl	%eax, -34992(%rbp)
	jmp	.L2201
.L2198:
	movl	-35000(%rbp), %eax
	imull	-34988(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	stbi__malloc
	movq	%rax, -34976(%rbp)
	cmpq	$0, -34976(%rbp)
	jne	.L2203
	movq	-35024(%rbp), %rdx
	movq	-34976(%rbp), %rcx
	leaq	-34944(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__load_gif_main_outofmem
	jmp	.L2208
.L2203:
	movl	-35000(%rbp), %eax
	imull	-34988(%rbp), %eax
	movl	%eax, -34996(%rbp)
	cmpq	$0, -35024(%rbp)
	je	.L2201
	movl	-35000(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	stbi__malloc
	movq	-35024(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-35024(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2204
	movq	-35024(%rbp), %rdx
	movq	-34976(%rbp), %rcx
	leaq	-34944(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__load_gif_main_outofmem
	jmp	.L2208
.L2204:
	movl	-35000(%rbp), %eax
	cltq
	sall	$2, %eax
	movl	%eax, -34992(%rbp)
.L2201:
	movl	-34988(%rbp), %eax
	movslq	%eax, %rdx
	movl	-35000(%rbp), %eax
	subl	$1, %eax
	imull	-34988(%rbp), %eax
	movslq	%eax, %rcx
	movq	-34976(%rbp), %rax
	addq	%rax, %rcx
	movq	-34984(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	cmpl	$1, -35000(%rbp)
	jle	.L2205
	movl	-34988(%rbp), %eax
	addl	%eax, %eax
	cltq
	negq	%rax
	movq	%rax, %rdx
	movq	-34976(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -34968(%rbp)
.L2205:
	cmpq	$0, -35024(%rbp)
	je	.L2197
	movq	-35024(%rbp), %rax
	movq	(%rax), %rax
	movl	-35000(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
.L2197:
	cmpq	$0, -34984(%rbp)
	jne	.L2206
	movq	-34936(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-34920(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-34928(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	cmpl	$0, 16(%rbp)
	je	.L2207
	cmpl	$4, 16(%rbp)
	je	.L2207
	movl	-34940(%rbp), %eax
	movl	%eax, %ecx
	movl	-34944(%rbp), %eax
	imull	-35000(%rbp), %eax
	movl	%eax, %edx
	movq	-34976(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	16(%rbp), %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -34976(%rbp)
.L2207:
	movq	-35048(%rbp), %rax
	movl	-35000(%rbp), %edx
	movl	%edx, (%rax)
	movq	-34976(%rbp), %rax
	jmp	.L2208
.L2194:
	leaq	.LC104(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
.L2208:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2209
	call	__stack_chk_fail@PLT
.L2209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	stbi__load_gif_main, .-stbi__load_gif_main
	.type	stbi__gif_load, @function
stbi__gif_load:
.LFB688:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-32768(%rsp), %r11
.LPSRL1:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL1
	subq	$2240, %rsp
	movq	%rdi, -34968(%rbp)
	movq	%rsi, -34976(%rbp)
	movq	%rdx, -34984(%rbp)
	movq	%rcx, -34992(%rbp)
	movl	%r8d, -34996(%rbp)
	movq	%r9, -35008(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -34952(%rbp)
	leaq	-34944(%rbp), %rax
	movl	$34928, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-34996(%rbp), %ecx
	movq	-34992(%rbp), %rdx
	leaq	-34944(%rbp), %rsi
	movq	-34968(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	stbi__gif_load_next
	movq	%rax, -34952(%rbp)
	movq	-34952(%rbp), %rax
	cmpq	-34968(%rbp), %rax
	jne	.L2211
	movq	$0, -34952(%rbp)
.L2211:
	cmpq	$0, -34952(%rbp)
	je	.L2212
	movl	-34944(%rbp), %edx
	movq	-34976(%rbp), %rax
	movl	%edx, (%rax)
	movl	-34940(%rbp), %edx
	movq	-34984(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -34996(%rbp)
	je	.L2213
	cmpl	$4, -34996(%rbp)
	je	.L2213
	movl	-34940(%rbp), %eax
	movl	%eax, %esi
	movl	-34944(%rbp), %eax
	movl	%eax, %ecx
	movl	-34996(%rbp), %edx
	movq	-34952(%rbp), %rax
	movl	%esi, %r8d
	movl	$4, %esi
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -34952(%rbp)
	jmp	.L2213
.L2212:
	movq	-34936(%rbp), %rax
	testq	%rax, %rax
	je	.L2213
	movq	-34936(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L2213:
	movq	-34920(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-34928(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-34952(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2215
	call	__stack_chk_fail@PLT
.L2215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	stbi__gif_load, .-stbi__gif_load
	.type	stbi__gif_info, @function
stbi__gif_info:
.LFB689:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__gif_info_raw
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	stbi__gif_info, .-stbi__gif_info
	.type	stbi__hdr_test_core, @function
stbi__hdr_test_core:
.LFB690:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2219
.L2222:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, %edx
	je	.L2220
	movl	$0, %eax
	jmp	.L2221
.L2220:
	addl	$1, -4(%rbp)
.L2219:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L2222
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$1, %eax
.L2221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	stbi__hdr_test_core, .-stbi__hdr_test_core
	.section	.rodata
.LC112:
	.string	"#?RADIANCE\n"
.LC113:
	.string	"#?RGBE\n"
	.text
	.type	stbi__hdr_test, @function
stbi__hdr_test:
.LFB691:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC112(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__hdr_test_core
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	cmpl	$0, -4(%rbp)
	jne	.L2224
	movq	-24(%rbp), %rax
	leaq	.LC113(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__hdr_test_core
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
.L2224:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	stbi__hdr_test, .-stbi__hdr_test
	.type	stbi__hdr_gettoken, @function
stbi__hdr_gettoken:
.LFB692:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movb	$0, -5(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -5(%rbp)
	jmp	.L2227
.L2232:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	cmpl	$1023, -4(%rbp)
	jne	.L2228
	nop
.L2230:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	jne	.L2234
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	cmpb	$10, %al
	jne	.L2230
	jmp	.L2234
.L2228:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -5(%rbp)
.L2227:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	jne	.L2231
	cmpb	$10, -5(%rbp)
	jne	.L2232
	jmp	.L2231
.L2234:
	nop
.L2231:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	stbi__hdr_gettoken, .-stbi__hdr_gettoken
	.type	stbi__hdr_convert, @function
stbi__hdr_convert:
.LFB693:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2236
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leal	-136(%rax), %edx
	movq	.LC114(%rip), %rax
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	ldexp@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	cmpl	$2, -36(%rbp)
	jg	.L2237
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-4(%rbp), %xmm0
	movss	.LC115(%rip), %xmm1
	divss	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	.L2238
.L2237:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-4(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-24(%rbp), %rax
	addq	$4, %rax
	mulss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-24(%rbp), %rax
	addq	$8, %rax
	mulss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
.L2238:
	cmpl	$2, -36(%rbp)
	jne	.L2239
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
.L2239:
	cmpl	$4, -36(%rbp)
	jne	.L2245
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L2245
.L2236:
	cmpl	$4, -36(%rbp)
	je	.L2241
	cmpl	$4, -36(%rbp)
	jg	.L2245
	cmpl	$3, -36(%rbp)
	je	.L2242
	cmpl	$3, -36(%rbp)
	jg	.L2245
	cmpl	$1, -36(%rbp)
	je	.L2243
	cmpl	$2, -36(%rbp)
	je	.L2244
	jmp	.L2245
.L2241:
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
.L2242:
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movss	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	.L2240
.L2244:
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
.L2243:
	movq	-24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	nop
.L2240:
.L2245:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	stbi__hdr_convert, .-stbi__hdr_convert
	.section	.rodata
.LC116:
	.string	"#?RADIANCE"
.LC117:
	.string	"#?RGBE"
.LC118:
	.string	"not HDR"
.LC119:
	.string	"FORMAT=32-bit_rle_rgbe"
.LC120:
	.string	"unsupported format"
.LC121:
	.string	"-Y "
.LC122:
	.string	"unsupported data layout"
.LC123:
	.string	"+X "
	.align 8
.LC124:
	.string	"invalid decoded scanline length"
	.text
	.type	stbi__hdr_load, @function
stbi__hdr_load:
.LFB694:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1192, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1160(%rbp)
	movq	%rsi, -1168(%rbp)
	movq	%rdx, -1176(%rbp)
	movq	%rcx, -1184(%rbp)
	movl	%r8d, -1188(%rbp)
	movq	%r9, -1200(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -1140(%rbp)
	leaq	-1056(%rbp), %rdx
	movq	-1160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_gettoken
	movq	%rax, -1080(%rbp)
	movq	-1080(%rbp), %rax
	leaq	.LC116(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L2252
	movq	-1080(%rbp), %rax
	leaq	.LC117(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L2252
	leaq	.LC118(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2252:
	leaq	-1056(%rbp), %rdx
	movq	-1160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_gettoken
	movq	%rax, -1096(%rbp)
	movq	-1096(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2293
	movq	-1096(%rbp), %rax
	leaq	.LC119(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2252
	movl	$1, -1140(%rbp)
	jmp	.L2252
.L2293:
	nop
	cmpl	$0, -1140(%rbp)
	jne	.L2253
	leaq	.LC120(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2253:
	leaq	-1056(%rbp), %rdx
	movq	-1160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_gettoken
	movq	%rax, -1096(%rbp)
	movq	-1096(%rbp), %rax
	movl	$3, %edx
	leaq	.LC121(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L2254
	leaq	.LC122(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2254:
	movq	-1096(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -1096(%rbp)
	movq	-1096(%rbp), %rax
	leaq	-1096(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -1120(%rbp)
	jmp	.L2255
.L2256:
	movq	-1096(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1096(%rbp)
.L2255:
	movq	-1096(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L2256
	movq	-1096(%rbp), %rax
	movl	$3, %edx
	leaq	.LC123(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L2257
	leaq	.LC122(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2257:
	movq	-1096(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -1096(%rbp)
	movq	-1096(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -1116(%rbp)
	cmpl	$16777216, -1120(%rbp)
	jle	.L2258
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2258:
	cmpl	$16777216, -1116(%rbp)
	jle	.L2259
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2259:
	movq	-1168(%rbp), %rax
	movl	-1116(%rbp), %edx
	movl	%edx, (%rax)
	movq	-1176(%rbp), %rax
	movl	-1120(%rbp), %edx
	movl	%edx, (%rax)
	cmpq	$0, -1184(%rbp)
	je	.L2260
	movq	-1184(%rbp), %rax
	movl	$3, (%rax)
.L2260:
	cmpl	$0, -1188(%rbp)
	jne	.L2261
	movl	$3, -1188(%rbp)
.L2261:
	movl	-1188(%rbp), %edx
	movl	-1120(%rbp), %esi
	movl	-1116(%rbp), %eax
	movl	$0, %r8d
	movl	$4, %ecx
	movl	%eax, %edi
	call	stbi__mad4sizes_valid
	testl	%eax, %eax
	jne	.L2262
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2262:
	movl	-1188(%rbp), %edx
	movl	-1120(%rbp), %esi
	movl	-1116(%rbp), %eax
	movl	$0, %r8d
	movl	$4, %ecx
	movl	%eax, %edi
	call	stbi__malloc_mad4
	movq	%rax, -1072(%rbp)
	cmpq	$0, -1072(%rbp)
	jne	.L2263
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2263:
	cmpl	$7, -1116(%rbp)
	jle	.L2264
	cmpl	$32767, -1116(%rbp)
	jle	.L2265
.L2264:
	movl	$0, -1132(%rbp)
	jmp	.L2266
.L2269:
	movl	$0, -1136(%rbp)
	jmp	.L2267
.L2294:
	nop
.L2268:
	leaq	-1060(%rbp), %rcx
	movq	-1160(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__getn
	movl	-1132(%rbp), %eax
	imull	-1116(%rbp), %eax
	imull	-1188(%rbp), %eax
	movslq	%eax, %rdx
	movl	-1136(%rbp), %eax
	imull	-1188(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-1072(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-1188(%rbp), %edx
	leaq	-1060(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	stbi__hdr_convert
	addl	$1, -1136(%rbp)
.L2267:
	movl	-1136(%rbp), %eax
	cmpl	-1116(%rbp), %eax
	jl	.L2294
	addl	$1, -1132(%rbp)
.L2266:
	movl	-1132(%rbp), %eax
	cmpl	-1120(%rbp), %eax
	jl	.L2269
	jmp	.L2270
.L2265:
	movq	$0, -1088(%rbp)
	movl	$0, -1132(%rbp)
	jmp	.L2271
.L2289:
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -1112(%rbp)
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -1108(%rbp)
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -1104(%rbp)
	cmpl	$2, -1112(%rbp)
	jne	.L2272
	cmpl	$2, -1108(%rbp)
	jne	.L2272
	movl	-1104(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L2273
.L2272:
	movl	-1112(%rbp), %eax
	movb	%al, -1060(%rbp)
	movl	-1108(%rbp), %eax
	movb	%al, -1059(%rbp)
	movl	-1104(%rbp), %eax
	movb	%al, -1058(%rbp)
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -1057(%rbp)
	movl	-1188(%rbp), %edx
	leaq	-1060(%rbp), %rcx
	movq	-1072(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_convert
	movl	$1, -1136(%rbp)
	movl	$0, -1132(%rbp)
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L2268
.L2273:
	sall	$8, -1104(%rbp)
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	orl	%eax, -1104(%rbp)
	movl	-1104(%rbp), %eax
	cmpl	-1116(%rbp), %eax
	je	.L2274
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC124(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2274:
	cmpq	$0, -1088(%rbp)
	jne	.L2275
	movl	-1116(%rbp), %eax
	movl	$0, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	stbi__malloc_mad2
	movq	%rax, -1088(%rbp)
	cmpq	$0, -1088(%rbp)
	jne	.L2275
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2275:
	movl	$0, -1128(%rbp)
	jmp	.L2276
.L2286:
	movl	$0, -1136(%rbp)
	jmp	.L2277
.L2285:
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -1142(%rbp)
	cmpb	$-128, -1142(%rbp)
	jbe	.L2278
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -1141(%rbp)
	addb	$-128, -1142(%rbp)
	movzbl	-1142(%rbp), %eax
	cmpl	%eax, -1100(%rbp)
	jge	.L2279
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC99(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2279:
	movl	$0, -1124(%rbp)
	jmp	.L2280
.L2281:
	movl	-1136(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1136(%rbp)
	leal	0(,%rax,4), %edx
	movl	-1128(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-1088(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-1141(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -1124(%rbp)
.L2280:
	movzbl	-1142(%rbp), %eax
	cmpl	%eax, -1124(%rbp)
	jl	.L2281
	jmp	.L2277
.L2278:
	movzbl	-1142(%rbp), %eax
	cmpl	%eax, -1100(%rbp)
	jge	.L2282
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC99(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2290
.L2282:
	movl	$0, -1124(%rbp)
	jmp	.L2283
.L2284:
	movl	-1136(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1136(%rbp)
	leal	0(,%rax,4), %edx
	movl	-1128(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-1088(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, (%rbx)
	addl	$1, -1124(%rbp)
.L2283:
	movzbl	-1142(%rbp), %eax
	cmpl	%eax, -1124(%rbp)
	jl	.L2284
.L2277:
	movl	-1116(%rbp), %eax
	subl	-1136(%rbp), %eax
	movl	%eax, -1100(%rbp)
	cmpl	$0, -1100(%rbp)
	jg	.L2285
	addl	$1, -1128(%rbp)
.L2276:
	cmpl	$3, -1128(%rbp)
	jle	.L2286
	movl	$0, -1136(%rbp)
	jmp	.L2287
.L2288:
	movl	-1136(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-1088(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-1132(%rbp), %eax
	imull	-1116(%rbp), %eax
	movl	%eax, %edx
	movl	-1136(%rbp), %eax
	addl	%edx, %eax
	imull	-1188(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1072(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-1188(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	stbi__hdr_convert
	addl	$1, -1136(%rbp)
.L2287:
	movl	-1136(%rbp), %eax
	cmpl	-1116(%rbp), %eax
	jl	.L2288
	addl	$1, -1132(%rbp)
.L2271:
	movl	-1132(%rbp), %eax
	cmpl	-1120(%rbp), %eax
	jl	.L2289
	cmpq	$0, -1088(%rbp)
	je	.L2270
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L2270:
	movq	-1072(%rbp), %rax
.L2290:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L2291
	call	__stack_chk_fail@PLT
.L2291:
	addq	$1192, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	stbi__hdr_load, .-stbi__hdr_load
	.type	stbi__hdr_info, @function
stbi__hdr_info:
.LFB695:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1088, %rsp
	movq	%rdi, -1064(%rbp)
	movq	%rsi, -1072(%rbp)
	movq	%rdx, -1080(%rbp)
	movq	%rcx, -1088(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -1052(%rbp)
	cmpq	$0, -1072(%rbp)
	jne	.L2296
	leaq	-1056(%rbp), %rax
	movq	%rax, -1072(%rbp)
.L2296:
	cmpq	$0, -1080(%rbp)
	jne	.L2297
	leaq	-1056(%rbp), %rax
	movq	%rax, -1080(%rbp)
.L2297:
	cmpq	$0, -1088(%rbp)
	jne	.L2298
	leaq	-1056(%rbp), %rax
	movq	%rax, -1088(%rbp)
.L2298:
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_test
	testl	%eax, %eax
	jne	.L2299
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2309
.L2299:
	leaq	-1040(%rbp), %rdx
	movq	-1064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_gettoken
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2312
	movq	-1048(%rbp), %rax
	leaq	.LC119(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2299
	movl	$1, -1052(%rbp)
	jmp	.L2299
.L2312:
	nop
	cmpl	$0, -1052(%rbp)
	jne	.L2304
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2309
.L2304:
	leaq	-1040(%rbp), %rdx
	movq	-1064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__hdr_gettoken
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	movl	$3, %edx
	leaq	.LC121(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L2305
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2309
.L2305:
	movq	-1048(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	leaq	-1048(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, %edx
	movq	-1080(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L2306
.L2307:
	movq	-1048(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1048(%rbp)
.L2306:
	movq	-1048(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L2307
	movq	-1048(%rbp), %rax
	movl	$3, %edx
	leaq	.LC123(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L2308
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2309
.L2308:
	movq	-1048(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, %edx
	movq	-1072(%rbp), %rax
	movl	%edx, (%rax)
	movq	-1088(%rbp), %rax
	movl	$3, (%rax)
	movl	$1, %eax
.L2309:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2310
	call	__stack_chk_fail@PLT
.L2310:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	stbi__hdr_info, .-stbi__hdr_info
	.type	stbi__bmp_info, @function
stbi__bmp_info:
.LFB696:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$255, -20(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__bmp_parse_header
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L2314
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2322
.L2314:
	cmpq	$0, -80(%rbp)
	je	.L2316
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
.L2316:
	cmpq	$0, -88(%rbp)
	je	.L2317
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
.L2317:
	cmpq	$0, -96(%rbp)
	je	.L2318
	movl	-48(%rbp), %eax
	cmpl	$24, %eax
	jne	.L2319
	movl	-24(%rbp), %eax
	cmpl	$-16777216, %eax
	jne	.L2319
	movq	-96(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L2318
.L2319:
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L2320
	movl	$4, %edx
	jmp	.L2321
.L2320:
	movl	$3, %edx
.L2321:
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
.L2318:
	movl	$1, %eax
.L2322:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2323
	call	__stack_chk_fail@PLT
.L2323:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	stbi__bmp_info, .-stbi__bmp_info
	.type	stbi__psd_info, @function
stbi__psd_info:
.LFB697:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -48(%rbp)
	jne	.L2325
	leaq	-20(%rbp), %rax
	movq	%rax, -48(%rbp)
.L2325:
	cmpq	$0, -56(%rbp)
	jne	.L2326
	leaq	-20(%rbp), %rax
	movq	%rax, -56(%rbp)
.L2326:
	cmpq	$0, -64(%rbp)
	jne	.L2327
	leaq	-20(%rbp), %rax
	movq	%rax, -64(%rbp)
.L2327:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	cmpl	$943870035, %eax
	je	.L2328
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2335
.L2328:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	cmpl	$1, %eax
	je	.L2330
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2335
.L2330:
	movq	-40(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	js	.L2331
	cmpl	$16, -16(%rbp)
	jle	.L2332
.L2331:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2335
.L2332:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -12(%rbp)
	cmpl	$8, -12(%rbp)
	je	.L2333
	cmpl	$16, -12(%rbp)
	je	.L2333
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2335
.L2333:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	cmpl	$3, %eax
	je	.L2334
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2335
.L2334:
	movq	-64(%rbp), %rax
	movl	$4, (%rax)
	movl	$1, %eax
.L2335:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2336
	call	__stack_chk_fail@PLT
.L2336:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	stbi__psd_info, .-stbi__psd_info
	.type	stbi__psd_is16, @function
stbi__psd_is16:
.LFB698:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get32be
	cmpl	$943870035, %eax
	je	.L2338
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2339
.L2338:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	cmpl	$1, %eax
	je	.L2340
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2339
.L2340:
	movq	-24(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L2341
	cmpl	$16, -8(%rbp)
	jle	.L2342
.L2341:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2339
.L2342:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movl	%eax, -4(%rbp)
	cmpl	$16, -4(%rbp)
	je	.L2343
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2339
.L2343:
	movl	$1, %eax
.L2339:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	stbi__psd_is16, .-stbi__psd_is16
	.type	stbi__pic_info, @function
stbi__pic_info:
.LFB699:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L2345
	leaq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
.L2345:
	cmpq	$0, -104(%rbp)
	jne	.L2346
	leaq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
.L2346:
	cmpq	$0, -112(%rbp)
	jne	.L2347
	leaq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
.L2347:
	movq	-88(%rbp), %rax
	leaq	.LC101(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__pic_is4
	testl	%eax, %eax
	jne	.L2348
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2358
.L2348:
	movq	-88(%rbp), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	stbi__skip
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movq	-96(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get16be
	movq	-104(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	je	.L2350
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2358
.L2350:
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2351
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movl	$268435456, %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L2351
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2358
.L2351:
	movq	-88(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	stbi__skip
.L2355:
	cmpl	$10, -64(%rbp)
	jne	.L2352
	movl	$0, %eax
	jmp	.L2358
.L2352:
	movl	-64(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -64(%rbp)
	leaq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-56(%rbp), %rdx
	movb	%al, (%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-56(%rbp), %rdx
	movb	%al, 1(%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movq	-56(%rbp), %rdx
	movb	%al, 2(%rdx)
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	je	.L2353
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2358
.L2353:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	je	.L2354
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2358
.L2354:
	cmpl	$0, -60(%rbp)
	jne	.L2355
	movl	-68(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L2356
	movl	$4, %edx
	jmp	.L2357
.L2356:
	movl	$3, %edx
.L2357:
	movq	-112(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L2358:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2359
	call	__stack_chk_fail@PLT
.L2359:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	stbi__pic_info, .-stbi__pic_info
	.type	stbi__pnm_test, @function
stbi__pnm_test:
.LFB700:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -1(%rbp)
	cmpb	$80, -2(%rbp)
	jne	.L2361
	cmpb	$53, -1(%rbp)
	je	.L2362
	cmpb	$54, -1(%rbp)
	je	.L2362
.L2361:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2363
.L2362:
	movl	$1, %eax
.L2363:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	stbi__pnm_test, .-stbi__pnm_test
	.type	stbi__pnm_load, @function
stbi__pnm_load:
.LFB701:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pnm_info
	movq	-64(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2365
	movl	$0, %eax
	jmp	.L2366
.L2365:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$16777216, %eax
	jbe	.L2367
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2366
.L2367:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16777216, %eax
	jbe	.L2368
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2366
.L2368:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -48(%rbp)
	je	.L2369
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L2369:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	$0, %r8d
	movl	%eax, %edi
	call	stbi__mad4sizes_valid
	testl	%eax, %eax
	jne	.L2370
	leaq	.LC33(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2366
.L2370:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	$0, %r8d
	movl	%eax, %edi
	call	stbi__malloc_mad4
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2371
	leaq	.LC1(%rip), %rdi
	call	stbi__err
	movl	$0, %eax
	jmp	.L2366
.L2371:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	imull	%eax, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$3, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__getn
	cmpl	$0, -52(%rbp)
	je	.L2372
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -52(%rbp)
	je	.L2372
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	movl	-52(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi__convert_format
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2372
	movq	-8(%rbp), %rax
	jmp	.L2366
.L2372:
	movq	-8(%rbp), %rax
.L2366:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	stbi__pnm_load, .-stbi__pnm_load
	.type	stbi__pnm_isspace, @function
stbi__pnm_isspace:
.LFB702:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$32, -4(%rbp)
	je	.L2374
	cmpb	$9, -4(%rbp)
	je	.L2374
	cmpb	$10, -4(%rbp)
	je	.L2374
	cmpb	$11, -4(%rbp)
	je	.L2374
	cmpb	$12, -4(%rbp)
	je	.L2374
	cmpb	$13, -4(%rbp)
	jne	.L2375
.L2374:
	movl	$1, %eax
	jmp	.L2377
.L2375:
	movl	$0, %eax
.L2377:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	stbi__pnm_isspace, .-stbi__pnm_isspace
	.type	stbi__pnm_skip_whitespace, @function
stbi__pnm_skip_whitespace:
.LFB703:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L2379
.L2381:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
.L2379:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	jne	.L2380
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	stbi__pnm_isspace
	testl	%eax, %eax
	jne	.L2381
.L2380:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	jne	.L2387
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	jne	.L2387
	jmp	.L2383
.L2385:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
.L2383:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	jne	.L2379
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L2379
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L2385
	jmp	.L2379
.L2387:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	stbi__pnm_skip_whitespace, .-stbi__pnm_skip_whitespace
	.type	stbi__pnm_isdigit, @function
stbi__pnm_isdigit:
.LFB704:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$47, -4(%rbp)
	jle	.L2389
	cmpb	$57, -4(%rbp)
	jg	.L2389
	movl	$1, %eax
	jmp	.L2391
.L2389:
	movl	$0, %eax
.L2391:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	stbi__pnm_isdigit, .-stbi__pnm_isdigit
	.type	stbi__pnm_getinteger, @function
stbi__pnm_getinteger:
.LFB705:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2393
.L2395:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
.L2393:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__at_eof
	testl	%eax, %eax
	jne	.L2394
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	stbi__pnm_isdigit
	testl	%eax, %eax
	jne	.L2395
.L2394:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	stbi__pnm_getinteger, .-stbi__pnm_getinteger
	.section	.rodata
.LC125:
	.string	"max value > 65535"
	.text
	.type	stbi__pnm_info, @function
stbi__pnm_info:
.LFB706:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -48(%rbp)
	jne	.L2398
	leaq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.L2398:
	cmpq	$0, -56(%rbp)
	jne	.L2399
	leaq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.L2399:
	cmpq	$0, -64(%rbp)
	jne	.L2400
	leaq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.L2400:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -18(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -17(%rbp)
	cmpb	$80, -18(%rbp)
	jne	.L2401
	cmpb	$53, -17(%rbp)
	je	.L2402
	cmpb	$54, -17(%rbp)
	je	.L2402
.L2401:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__rewind
	movl	$0, %eax
	jmp	.L2408
.L2402:
	cmpb	$54, -17(%rbp)
	jne	.L2404
	movl	$3, %edx
	jmp	.L2405
.L2404:
	movl	$1, %edx
.L2405:
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__get8
	movb	%al, -19(%rbp)
	leaq	-19(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_skip_whitespace
	leaq	-19(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_getinteger
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx)
	leaq	-19(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_skip_whitespace
	leaq	-19(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_getinteger
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx)
	leaq	-19(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_skip_whitespace
	leaq	-19(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__pnm_getinteger
	movl	%eax, -12(%rbp)
	cmpl	$65535, -12(%rbp)
	jle	.L2406
	leaq	.LC125(%rip), %rdi
	call	stbi__err
	jmp	.L2408
.L2406:
	cmpl	$255, -12(%rbp)
	jle	.L2407
	movl	$16, %eax
	jmp	.L2408
.L2407:
	movl	$8, %eax
.L2408:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2409
	call	__stack_chk_fail@PLT
.L2409:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	stbi__pnm_info, .-stbi__pnm_info
	.type	stbi__pnm_is16, @function
stbi__pnm_is16:
.LFB707:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	stbi__pnm_info
	cmpl	$16, %eax
	jne	.L2411
	movl	$1, %eax
	jmp	.L2412
.L2411:
	movl	$0, %eax
.L2412:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	stbi__pnm_is16, .-stbi__pnm_is16
	.type	stbi__info_main, @function
stbi__info_main:
.LFB708:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__jpeg_info
	testl	%eax, %eax
	je	.L2414
	movl	$1, %eax
	jmp	.L2415
.L2414:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__png_info
	testl	%eax, %eax
	je	.L2416
	movl	$1, %eax
	jmp	.L2415
.L2416:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__gif_info
	testl	%eax, %eax
	je	.L2417
	movl	$1, %eax
	jmp	.L2415
.L2417:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__bmp_info
	testl	%eax, %eax
	je	.L2418
	movl	$1, %eax
	jmp	.L2415
.L2418:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__psd_info
	testl	%eax, %eax
	je	.L2419
	movl	$1, %eax
	jmp	.L2415
.L2419:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pic_info
	testl	%eax, %eax
	je	.L2420
	movl	$1, %eax
	jmp	.L2415
.L2420:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pnm_info
	testl	%eax, %eax
	je	.L2421
	movl	$1, %eax
	jmp	.L2415
.L2421:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__hdr_info
	testl	%eax, %eax
	je	.L2422
	movl	$1, %eax
	jmp	.L2415
.L2422:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__tga_info
	testl	%eax, %eax
	je	.L2423
	movl	$1, %eax
	jmp	.L2415
.L2423:
	leaq	.LC0(%rip), %rdi
	call	stbi__err
.L2415:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	stbi__info_main, .-stbi__info_main
	.type	stbi__is_16_main, @function
stbi__is_16_main:
.LFB709:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__png_is16
	testl	%eax, %eax
	je	.L2425
	movl	$1, %eax
	jmp	.L2426
.L2425:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__psd_is16
	testl	%eax, %eax
	je	.L2427
	movl	$1, %eax
	jmp	.L2426
.L2427:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__pnm_is16
	testl	%eax, %eax
	je	.L2428
	movl	$1, %eax
	jmp	.L2426
.L2428:
	movl	$0, %eax
.L2426:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	stbi__is_16_main, .-stbi__is_16_main
	.globl	stbi_info
	.type	stbi_info, @function
stbi_info:
.LFB710:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2430
	leaq	.LC5(%rip), %rdi
	call	stbi__err
	jmp	.L2431
.L2430:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi_info_from_file
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-12(%rbp), %eax
.L2431:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	stbi_info, .-stbi_info
	.globl	stbi_info_from_file
	.type	stbi_info_from_file, @function
stbi_info_from_file:
.LFB711:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -288(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -248(%rbp)
	movq	-264(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	movq	-288(%rbp), %rcx
	movq	-280(%rbp), %rdx
	movq	-272(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__info_main
	movl	%eax, -252(%rbp)
	movq	-248(%rbp), %rcx
	movq	-264(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	movl	-252(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L2434
	call	__stack_chk_fail@PLT
.L2434:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	stbi_info_from_file, .-stbi_info_from_file
	.globl	stbi_is_16_bit
	.type	stbi_is_16_bit, @function
stbi_is_16_bit:
.LFB712:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2436
	leaq	.LC5(%rip), %rdi
	call	stbi__err
	jmp	.L2437
.L2436:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbi_is_16_bit_from_file
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-12(%rbp), %eax
.L2437:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	stbi_is_16_bit, .-stbi_is_16_bit
	.globl	stbi_is_16_bit_from_file
	.type	stbi_is_16_bit_from_file, @function
stbi_is_16_bit_from_file:
.LFB713:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -264(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, -248(%rbp)
	movq	-264(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_file
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__is_16_main
	movl	%eax, -252(%rbp)
	movq	-248(%rbp), %rcx
	movq	-264(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	movl	-252(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2440
	call	__stack_chk_fail@PLT
.L2440:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	stbi_is_16_bit_from_file, .-stbi_is_16_bit_from_file
	.globl	stbi_info_from_memory
	.type	stbi_info_from_memory, @function
stbi_info_from_memory:
.LFB714:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-252(%rbp), %edx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__info_main
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L2443
	call	__stack_chk_fail@PLT
.L2443:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	stbi_info_from_memory, .-stbi_info_from_memory
	.globl	stbi_info_from_callbacks
	.type	stbi_info_from_callbacks, @function
stbi_info_from_callbacks:
.LFB715:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__info_main
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L2446
	call	__stack_chk_fail@PLT
.L2446:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	stbi_info_from_callbacks, .-stbi_info_from_callbacks
	.globl	stbi_is_16_bit_from_memory
	.type	stbi_is_16_bit_from_memory, @function
stbi_is_16_bit_from_memory:
.LFB716:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-252(%rbp), %edx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_mem
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__is_16_main
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2449
	call	__stack_chk_fail@PLT
.L2449:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	stbi_is_16_bit_from_memory, .-stbi_is_16_bit_from_memory
	.globl	stbi_is_16_bit_from_callbacks
	.type	stbi_is_16_bit_from_callbacks, @function
stbi_is_16_bit_from_callbacks:
.LFB717:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_callbacks
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__is_16_main
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L2452
	call	__stack_chk_fail@PLT
.L2452:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	stbi_is_16_bit_from_callbacks, .-stbi_is_16_bit_from_callbacks
	.globl	stbi_write_png_compression_level
	.data
	.align 4
	.type	stbi_write_png_compression_level, @object
	.size	stbi_write_png_compression_level, 4
stbi_write_png_compression_level:
	.long	8
	.globl	stbi_write_tga_with_rle
	.align 4
	.type	stbi_write_tga_with_rle, @object
	.size	stbi_write_tga_with_rle, 4
stbi_write_tga_with_rle:
	.long	1
	.globl	stbi_write_force_png_filter
	.align 4
	.type	stbi_write_force_png_filter, @object
	.size	stbi_write_force_png_filter, 4
stbi_write_force_png_filter:
	.long	-1
	.local	stbi__flip_vertically_on_write
	.comm	stbi__flip_vertically_on_write,4,4
	.text
	.globl	stbi_flip_vertically_on_write
	.type	stbi_flip_vertically_on_write, @function
stbi_flip_vertically_on_write:
.LFB718:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, stbi__flip_vertically_on_write(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	stbi_flip_vertically_on_write, .-stbi_flip_vertically_on_write
	.type	stbi__start_write_callbacks, @function
stbi__start_write_callbacks:
.LFB719:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	stbi__start_write_callbacks, .-stbi__start_write_callbacks
	.type	stbi__stdio_write, @function
stbi__stdio_write:
.LFB720:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	stbi__stdio_write, .-stbi__stdio_write
	.type	stbiw__fopen, @function
stbiw__fopen:
.LFB721:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	stbiw__fopen, .-stbiw__fopen
	.section	.rodata
.LC126:
	.string	"wb"
	.text
	.type	stbi__start_write_file, @function
stbi__start_write_file:
.LFB722:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC126(%rip), %rsi
	movq	%rax, %rdi
	call	stbiw__fopen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	stbi__stdio_write(%rip), %rsi
	movq	%rax, %rdi
	call	stbi__start_write_callbacks
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	stbi__start_write_file, .-stbi__start_write_file
	.type	stbi__end_write_file, @function
stbi__end_write_file:
.LFB723:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	stbi__end_write_file, .-stbi__end_write_file
	.section	.rodata
.LC127:
	.string	"stb_image_write.h"
	.text
	.type	stbiw__writefv, @function
stbiw__writefv:
.LFB724:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	jmp	.L2462
.L2474:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$52, %eax
	je	.L2463
	cmpl	$52, %eax
	jg	.L2464
	cmpl	$50, %eax
	je	.L2465
	cmpl	$50, %eax
	jg	.L2464
	cmpl	$32, %eax
	je	.L2462
	cmpl	$49, %eax
	je	.L2467
	jmp	.L2464
.L2467:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L2468
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-56(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L2469
.L2468:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L2469:
	movl	(%rax), %eax
	movb	%al, -21(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %r8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-21(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	nop
	jmp	.L2462
.L2465:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L2470
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-56(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L2471
.L2470:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L2471:
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movb	%al, -12(%rbp)
	movl	-16(%rbp), %eax
	sarl	$8, %eax
	movb	%al, -11(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %r8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-12(%rbp), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	nop
	jmp	.L2462
.L2463:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L2472
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-56(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L2473
.L2472:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L2473:
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movb	%al, -12(%rbp)
	movl	-20(%rbp), %eax
	shrl	$8, %eax
	movb	%al, -11(%rbp)
	movl	-20(%rbp), %eax
	shrl	$16, %eax
	movb	%al, -10(%rbp)
	movl	-20(%rbp), %eax
	shrl	$24, %eax
	movb	%al, -9(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %r8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-12(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	nop
	jmp	.L2462
.L2464:
	leaq	__PRETTY_FUNCTION__.9699(%rip), %rcx
	movl	$372, %edx
	leaq	.LC127(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	__assert_fail@PLT
.L2462:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L2474
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2476
	call	__stack_chk_fail@PLT
.L2476:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	stbiw__writefv, .-stbiw__writefv
	.type	stbiw__writef, @function
stbiw__writef:
.LFB725:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2478
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2478:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__writefv
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2479
	call	__stack_chk_fail@PLT
.L2479:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	stbiw__writef, .-stbiw__writef
	.type	stbiw__write_flush, @function
stbiw__write_flush:
.LFB726:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	je	.L2482
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	80(%rax), %edx
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rcx
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
.L2482:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	stbiw__write_flush, .-stbiw__write_flush
	.type	stbiw__putc, @function
stbiw__putc:
.LFB727:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %r8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-12(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	stbiw__putc, .-stbiw__putc
	.type	stbiw__write1, @function
stbiw__write1:
.LFB728:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	cltq
	addq	$1, %rax
	cmpq	$64, %rax
	jbe	.L2485
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__write_flush
.L2485:
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	leal	1(%rax), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 80(%rdx)
	movq	-8(%rbp), %rdx
	cltq
	movzbl	-12(%rbp), %ecx
	movb	%cl, 16(%rdx,%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	stbiw__write1, .-stbiw__write1
	.type	stbiw__write3, @function
stbiw__write3:
.LFB729:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%ecx, %eax
	movl	%esi, %ecx
	movb	%cl, -28(%rbp)
	movb	%dl, -32(%rbp)
	movb	%al, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	80(%rax), %eax
	cltq
	addq	$3, %rax
	cmpq	$64, %rax
	jbe	.L2487
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__write_flush
.L2487:
	movq	-24(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leal	3(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 80(%rax)
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	-28(%rbp), %ecx
	movb	%cl, 16(%rdx,%rax)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	-32(%rbp), %ecx
	movb	%cl, 16(%rdx,%rax)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	-36(%rbp), %ecx
	movb	%cl, 16(%rdx,%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	stbiw__write3, .-stbiw__write3
	.type	stbiw__write_pixel, @function
stbiw__write_pixel:
.LFB730:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movw	$255, -14(%rbp)
	movb	$-1, -12(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L2489
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbiw__write1
.L2489:
	cmpl	$4, -48(%rbp)
	je	.L2490
	cmpl	$4, -48(%rbp)
	jg	.L2491
	cmpl	$2, -48(%rbp)
	jg	.L2492
	cmpl	$0, -48(%rbp)
	jg	.L2493
	jmp	.L2491
.L2492:
	cmpl	$3, -48(%rbp)
	je	.L2494
	jmp	.L2491
.L2493:
	cmpl	$0, -56(%rbp)
	je	.L2495
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__write3
	jmp	.L2491
.L2495:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbiw__write1
	jmp	.L2491
.L2490:
	cmpl	$0, -52(%rbp)
	jne	.L2494
	movl	$0, -20(%rbp)
	jmp	.L2497
.L2498:
	movl	-20(%rbp), %eax
	cltq
	movzbl	-14(%rbp,%rax), %edx
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-20(%rbp), %eax
	cltq
	movzbl	-14(%rbp,%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %ecx
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	imull	%ecx, %eax
	movslq	%eax, %rcx
	imulq	$-2139062143, %rcx, %rcx
	shrq	$32, %rcx
	addl	%eax, %ecx
	sarl	$7, %ecx
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	cltq
	movb	%dl, -11(%rbp,%rax)
	addl	$1, -20(%rbp)
.L2497:
	cmpl	$2, -20(%rbp)
	jle	.L2498
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	movzbl	-11(%rbp,%rax), %eax
	movzbl	%al, %ecx
	movzbl	-10(%rbp), %eax
	movzbl	%al, %edx
	movl	$1, %eax
	subl	-44(%rbp), %eax
	cltq
	movzbl	-11(%rbp,%rax), %eax
	movzbl	%al, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__write3
	jmp	.L2491
.L2494:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	$1, %eax
	subl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-64(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__write3
	nop
.L2491:
	cmpl	$0, -52(%rbp)
	jle	.L2501
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbiw__write1
.L2501:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2500
	call	__stack_chk_fail@PLT
.L2500:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	stbiw__write_pixel, .-stbiw__write_pixel
	.type	stbiw__write_pixels, @function
stbiw__write_pixels:
.LFB731:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -32(%rbp)
	cmpl	$0, -56(%rbp)
	jle	.L2513
	movl	stbi__flip_vertically_on_write(%rip), %eax
	testl	%eax, %eax
	je	.L2505
	negl	-48(%rbp)
.L2505:
	cmpl	$0, -48(%rbp)
	jns	.L2506
	movl	$-1, -20(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L2508
.L2506:
	movl	-56(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2508
.L2511:
	movl	$0, -28(%rbp)
	jmp	.L2509
.L2510:
	movl	-24(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %r8
	movl	40(%rbp), %edi
	movl	24(%rbp), %ecx
	movl	-60(%rbp), %edx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbiw__write_pixel
	addl	$1, -28(%rbp)
.L2509:
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L2510
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__write_flush
	movq	-40(%rbp), %rax
	movq	(%rax), %r8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	32(%rbp), %edx
	leaq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	-48(%rbp), %eax
	addl	%eax, -24(%rbp)
.L2508:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L2511
	jmp	.L2502
.L2513:
	nop
.L2502:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2512
	call	__stack_chk_fail@PLT
.L2512:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	stbiw__write_pixels, .-stbiw__write_pixels
	.type	stbiw__outfile, @function
stbiw__outfile:
.LFB732:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movl	%edx, -224(%rbp)
	movl	%ecx, -228(%rbp)
	movl	%r8d, -232(%rbp)
	movl	%r9d, -236(%rbp)
	testb	%al, %al
	je	.L2515
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2515:
	movq	24(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpl	$0, -232(%rbp)
	js	.L2516
	cmpl	$0, -228(%rbp)
	jns	.L2517
.L2516:
	movl	$0, %eax
	jmp	.L2518
.L2517:
	movl	$48, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	56(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__writefv
	movl	-236(%rbp), %r9d
	movl	-232(%rbp), %r8d
	movl	-228(%rbp), %ecx
	movl	-224(%rbp), %edx
	movl	-220(%rbp), %esi
	movq	-216(%rbp), %rax
	movl	16(%rbp), %edi
	pushq	%rdi
	movl	40(%rbp), %edi
	pushq	%rdi
	movl	32(%rbp), %edi
	pushq	%rdi
	pushq	-248(%rbp)
	movq	%rax, %rdi
	call	stbiw__write_pixels
	addq	$32, %rsp
	movl	$1, %eax
.L2518:
	movq	-184(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2519
	call	__stack_chk_fail@PLT
.L2519:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	stbiw__outfile, .-stbiw__outfile
	.section	.rodata
.LC128:
	.string	"11 4 22 44 44 22 444444"
	.align 8
.LC129:
	.string	"11 4 22 44 44 22 444444 4444 4 444 444 444 444"
	.text
	.type	stbi_write_bmp_core, @function
stbi_write_bmp_core:
.LFB733:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	cmpl	$4, -36(%rbp)
	je	.L2521
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	sall	$2, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	andl	$3, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	imull	-32(%rbp), %eax
	leal	54(%rax), %esi
	movl	-36(%rbp), %r8d
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$24
	pushq	$1
	movl	-32(%rbp), %ecx
	pushq	%rcx
	movl	-28(%rbp), %ecx
	pushq	%rcx
	pushq	$40
	pushq	$54
	pushq	$0
	pushq	$0
	pushq	%rsi
	pushq	$77
	pushq	$66
	leaq	.LC128(%rip), %rcx
	pushq	%rcx
	movl	-4(%rbp), %ecx
	pushq	%rcx
	pushq	$0
	pushq	-48(%rbp)
	pushq	$1
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%edx, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbiw__outfile
	addq	$176, %rsp
	jmp	.L2522
.L2521:
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	sall	$2, %eax
	leal	122(%rax), %esi
	movl	-36(%rbp), %r8d
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$-16777216
	pushq	$255
	pushq	$65280
	pushq	$16711680
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$3
	pushq	$32
	pushq	$1
	movl	-32(%rbp), %ecx
	pushq	%rcx
	movl	-28(%rbp), %ecx
	pushq	%rcx
	pushq	$108
	pushq	$122
	pushq	$0
	pushq	$0
	pushq	%rsi
	pushq	$77
	pushq	$66
	leaq	.LC129(%rip), %rcx
	pushq	%rcx
	pushq	$0
	pushq	$1
	pushq	-48(%rbp)
	pushq	$1
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%edx, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbiw__outfile
	addq	$320, %rsp
.L2522:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	stbi_write_bmp_core, .-stbi_write_bmp_core
	.globl	stbi_write_bmp_to_func
	.type	stbi_write_bmp_to_func, @function
stbi_write_bmp_to_func:
.LFB734:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movl	%ecx, -120(%rbp)
	movl	%r8d, -124(%rbp)
	movq	%r9, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_write_callbacks
	movq	-136(%rbp), %rdi
	movl	-124(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %esi
	leaq	-96(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbi_write_bmp_core
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2525
	call	__stack_chk_fail@PLT
.L2525:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	stbi_write_bmp_to_func, .-stbi_write_bmp_to_func
	.globl	stbi_write_bmp
	.type	stbi_write_bmp, @function
stbi_write_bmp:
.LFB735:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	%edx, -128(%rbp)
	movl	%ecx, -132(%rbp)
	movq	%r8, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-120(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_write_file
	testl	%eax, %eax
	je	.L2527
	movq	-144(%rbp), %rdi
	movl	-132(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-124(%rbp), %esi
	leaq	-96(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbi_write_bmp_core
	movl	%eax, -100(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__end_write_file
	movl	-100(%rbp), %eax
	jmp	.L2529
.L2527:
	movl	$0, %eax
.L2529:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2530
	call	__stack_chk_fail@PLT
.L2530:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	stbi_write_bmp, .-stbi_write_bmp
	.section	.rodata
.LC130:
	.string	"111 221 2222 11"
	.text
	.type	stbi_write_tga_core, @function
stbi_write_tga_core:
.LFB736:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movl	%ecx, -100(%rbp)
	movq	%r8, -112(%rbp)
	cmpl	$2, -100(%rbp)
	je	.L2532
	cmpl	$4, -100(%rbp)
	jne	.L2533
.L2532:
	movl	$1, %eax
	jmp	.L2534
.L2533:
	movl	$0, %eax
.L2534:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L2535
	movl	-100(%rbp), %eax
	subl	$1, %eax
	jmp	.L2536
.L2535:
	movl	-100(%rbp), %eax
.L2536:
	movl	%eax, -32(%rbp)
	cmpl	$1, -32(%rbp)
	jg	.L2537
	movl	$3, %eax
	jmp	.L2538
.L2537:
	movl	$2, %eax
.L2538:
	movl	%eax, -28(%rbp)
	cmpl	$0, -96(%rbp)
	js	.L2539
	cmpl	$0, -92(%rbp)
	jns	.L2540
.L2539:
	movl	$0, %eax
	jmp	.L2541
.L2540:
	movl	stbi_write_tga_with_rle(%rip), %eax
	testl	%eax, %eax
	jne	.L2542
	movl	-36(%rbp), %eax
	leal	0(,%rax,8), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	leal	0(,%rax,8), %ecx
	movl	-100(%rbp), %r8d
	movl	-96(%rbp), %edi
	movl	-92(%rbp), %edx
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rsi
	pushq	%rcx
	movl	-96(%rbp), %ecx
	pushq	%rcx
	movl	-92(%rbp), %ecx
	pushq	%rcx
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	-28(%rbp), %ecx
	pushq	%rcx
	pushq	$0
	pushq	$0
	leaq	.LC130(%rip), %rcx
	pushq	%rcx
	pushq	$0
	movl	-36(%rbp), %ecx
	pushq	%rcx
	pushq	-112(%rbp)
	pushq	$0
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%edx, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbiw__outfile
	addq	$144, %rsp
	jmp	.L2541
.L2542:
	movl	-36(%rbp), %eax
	leal	0(,%rax,8), %ecx
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	leal	0(,%rax,8), %edx
	movl	-28(%rbp), %eax
	leal	8(%rax), %esi
	movq	-88(%rbp), %rax
	pushq	%rcx
	pushq	%rdx
	movl	-96(%rbp), %edx
	pushq	%rdx
	movl	-92(%rbp), %edx
	pushq	%rdx
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	leaq	.LC130(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbiw__writef
	addq	$64, %rsp
	movl	stbi__flip_vertically_on_write(%rip), %eax
	testl	%eax, %eax
	je	.L2543
	movl	$0, -60(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$1, -48(%rbp)
	jmp	.L2545
.L2543:
	movl	-96(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	$-1, -52(%rbp)
	movl	$-1, -48(%rbp)
	jmp	.L2545
.L2563:
	movl	-60(%rbp), %eax
	imull	-92(%rbp), %eax
	imull	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L2546
.L2562:
	movl	-64(%rbp), %eax
	imull	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	$1, -40(%rbp)
	movl	$1, -44(%rbp)
	movl	-92(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -64(%rbp)
	jge	.L2547
	addl	$1, -44(%rbp)
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	addl	$1, %eax
	imull	-100(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L2548
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -56(%rbp)
	jmp	.L2549
.L2553:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	imull	-100(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L2550
	movl	-100(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
	addl	$1, -44(%rbp)
	jmp	.L2564
.L2550:
	subl	$1, -44(%rbp)
	jmp	.L2547
.L2564:
	addl	$1, -56(%rbp)
.L2549:
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.L2547
	cmpl	$127, -44(%rbp)
	jle	.L2553
	jmp	.L2547
.L2548:
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -56(%rbp)
	jmp	.L2554
.L2557:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movl	-56(%rbp), %eax
	imull	-100(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L2565
	addl	$1, -44(%rbp)
	addl	$1, -56(%rbp)
.L2554:
	movl	-56(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.L2547
	cmpl	$127, -44(%rbp)
	jle	.L2557
	jmp	.L2547
.L2565:
	nop
.L2547:
	cmpl	$0, -40(%rbp)
	je	.L2558
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movb	%al, -65(%rbp)
	movzbl	-65(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbiw__write1
	movl	$0, -56(%rbp)
	jmp	.L2559
.L2560:
	movl	-56(%rbp), %eax
	imull	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-36(%rbp), %ecx
	movl	-100(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$-1, %esi
	movq	%rax, %rdi
	call	stbiw__write_pixel
	addl	$1, -56(%rbp)
.L2559:
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L2560
	jmp	.L2561
.L2558:
	movl	-44(%rbp), %eax
	addl	$127, %eax
	movb	%al, -66(%rbp)
	movzbl	-66(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbiw__write1
	movq	-8(%rbp), %rsi
	movl	-36(%rbp), %ecx
	movl	-100(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$-1, %esi
	movq	%rax, %rdi
	call	stbiw__write_pixel
.L2561:
	movl	-44(%rbp), %eax
	addl	%eax, -64(%rbp)
.L2546:
	movl	-64(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L2562
	movl	-48(%rbp), %eax
	addl	%eax, -60(%rbp)
.L2545:
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L2563
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__write_flush
	movl	$1, %eax
.L2541:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	stbi_write_tga_core, .-stbi_write_tga_core
	.globl	stbi_write_tga_to_func
	.type	stbi_write_tga_to_func, @function
stbi_write_tga_to_func:
.LFB737:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movl	%ecx, -120(%rbp)
	movl	%r8d, -124(%rbp)
	movq	%r9, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_write_callbacks
	movq	-136(%rbp), %rdi
	movl	-124(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %esi
	leaq	-96(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbi_write_tga_core
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2568
	call	__stack_chk_fail@PLT
.L2568:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	stbi_write_tga_to_func, .-stbi_write_tga_to_func
	.globl	stbi_write_tga
	.type	stbi_write_tga, @function
stbi_write_tga:
.LFB738:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	%edx, -128(%rbp)
	movl	%ecx, -132(%rbp)
	movq	%r8, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-120(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_write_file
	testl	%eax, %eax
	je	.L2570
	movq	-144(%rbp), %rdi
	movl	-132(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-124(%rbp), %esi
	leaq	-96(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbi_write_tga_core
	movl	%eax, -100(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__end_write_file
	movl	-100(%rbp), %eax
	jmp	.L2572
.L2570:
	movl	$0, %eax
.L2572:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2573
	call	__stack_chk_fail@PLT
.L2573:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	stbi_write_tga, .-stbi_write_tga
	.type	stbiw__linear_to_rgbe, @function
stbiw__linear_to_rgbe:
.LFB739:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm2
	comiss	%xmm2, %xmm0
	jbe	.L2592
	movq	-48(%rbp), %rax
	movss	4(%rax), %xmm0
	jmp	.L2577
.L2592:
	movq	-48(%rbp), %rax
	movss	8(%rax), %xmm0
.L2577:
	comiss	%xmm0, %xmm1
	jbe	.L2593
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm0
	jmp	.L2580
.L2593:
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L2594
	movq	-48(%rbp), %rax
	movss	4(%rax), %xmm0
	jmp	.L2580
.L2594:
	movq	-48(%rbp), %rax
	movss	8(%rax), %xmm0
.L2580:
	movss	%xmm0, -16(%rbp)
	movss	.LC131(%rip), %xmm0
	comiss	-16(%rbp), %xmm0
	jbe	.L2595
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L2596
.L2595:
	cvtss2sd	-16(%rbp), %xmm0
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	frexp@PLT
	cvtsd2ss	%xmm0, %xmm1
	movss	.LC132(%rip), %xmm0
	mulss	%xmm1, %xmm0
	divss	-16(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-12(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	mulss	-12(%rbp), %xmm0
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cvttss2sil	%xmm0, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm0
	mulss	-12(%rbp), %xmm0
	movq	-40(%rbp), %rax
	addq	$2, %rax
	cvttss2sil	%xmm0, %edx
	movb	%dl, (%rax)
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	addq	$3, %rax
	addl	$-128, %edx
	movb	%dl, (%rax)
.L2596:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2587
	call	__stack_chk_fail@PLT
.L2587:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	stbiw__linear_to_rgbe, .-stbiw__linear_to_rgbe
	.section	.rodata
.LC133:
	.string	"length+128 <= 255"
	.text
	.type	stbiw__write_run_data, @function
stbiw__write_run_data:
.LFB740:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movb	%al, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-28(%rbp), %eax
	addl	$-128, %eax
	movb	%al, -9(%rbp)
	cmpl	$127, -28(%rbp)
	jle	.L2598
	leaq	__PRETTY_FUNCTION__.9876(%rip), %rcx
	movl	$659, %edx
	leaq	.LC127(%rip), %rsi
	leaq	.LC133(%rip), %rdi
	call	__assert_fail@PLT
.L2598:
	movq	-24(%rbp), %rax
	movq	(%rax), %r8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-9(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-24(%rbp), %rax
	movq	(%rax), %r8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2599
	call	__stack_chk_fail@PLT
.L2599:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	stbiw__write_run_data, .-stbiw__write_run_data
	.section	.rodata
.LC134:
	.string	"length <= 128"
	.text
	.type	stbiw__write_dump_data, @function
stbiw__write_dump_data:
.LFB741:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-28(%rbp), %eax
	movb	%al, -9(%rbp)
	cmpl	$128, -28(%rbp)
	jle	.L2601
	leaq	__PRETTY_FUNCTION__.9883(%rip), %rcx
	movl	$667, %edx
	leaq	.LC127(%rip), %rsi
	leaq	.LC134(%rip), %rdi
	call	__assert_fail@PLT
.L2601:
	movq	-24(%rbp), %rax
	movq	(%rax), %r8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-9(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-24(%rbp), %rax
	movq	(%rax), %r8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2602
	call	__stack_chk_fail@PLT
.L2602:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	stbiw__write_dump_data, .-stbiw__write_dump_data
	.type	stbiw__write_hdr_scanline, @function
stbiw__write_hdr_scanline:
.LFB742:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$514, -16(%rbp)
	movl	-76(%rbp), %eax
	sarl	$8, %eax
	movb	%al, -14(%rbp)
	movl	-76(%rbp), %eax
	movb	%al, -13(%rbp)
	cmpl	$7, -76(%rbp)
	jle	.L2604
	cmpl	$32767, -76(%rbp)
	jle	.L2605
.L2604:
	movl	$0, -60(%rbp)
	jmp	.L2606
.L2609:
	movl	-80(%rbp), %eax
	subl	$3, %eax
	cmpl	$1, %eax
	ja	.L2607
	movl	-60(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-60(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-60(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	jmp	.L2608
.L2607:
	movl	-60(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	nop
.L2608:
	leaq	-28(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbiw__linear_to_rgbe
	movq	-72(%rbp), %rax
	movq	(%rax), %r8
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-12(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	addl	$1, -60(%rbp)
.L2606:
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L2609
	jmp	.L2610
.L2605:
	movl	$0, -60(%rbp)
	jmp	.L2611
.L2614:
	movl	-80(%rbp), %eax
	subl	$3, %eax
	cmpl	$1, %eax
	ja	.L2612
	movl	-60(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-60(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-60(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	jmp	.L2613
.L2612:
	movl	-60(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	nop
.L2613:
	leaq	-28(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbiw__linear_to_rgbe
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-12(%rbp), %eax
	movb	%al, (%rdx)
	movl	-60(%rbp), %edx
	movl	-76(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-11(%rbp), %eax
	movb	%al, (%rdx)
	movl	-76(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-10(%rbp), %eax
	movb	%al, (%rdx)
	movl	-76(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-9(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -60(%rbp)
.L2611:
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L2614
	movq	-72(%rbp), %rax
	movq	(%rax), %r8
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-16(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	$0, -56(%rbp)
	jmp	.L2615
.L2632:
	movl	-76(%rbp), %eax
	imull	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L2616
.L2631:
	movl	-60(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L2617
.L2620:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-52(%rbp), %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L2618
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-52(%rbp), %eax
	cltq
	leaq	2(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L2634
.L2618:
	addl	$1, -52(%rbp)
.L2617:
	movl	-52(%rbp), %eax
	addl	$2, %eax
	cmpl	%eax, -76(%rbp)
	jg	.L2620
	jmp	.L2619
.L2634:
	nop
.L2619:
	movl	-52(%rbp), %eax
	addl	$2, %eax
	cmpl	%eax, -76(%rbp)
	jg	.L2622
	movl	-76(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L2622
.L2624:
	movl	-52(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$128, -48(%rbp)
	jle	.L2623
	movl	$128, -48(%rbp)
.L2623:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbiw__write_dump_data
	movl	-48(%rbp), %eax
	addl	%eax, -60(%rbp)
.L2622:
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L2624
	movl	-52(%rbp), %eax
	addl	$2, %eax
	cmpl	%eax, -76(%rbp)
	jle	.L2616
	jmp	.L2625
.L2627:
	addl	$1, -52(%rbp)
.L2625:
	movl	-52(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.L2628
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-60(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L2627
	jmp	.L2628
.L2630:
	movl	-52(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -44(%rbp)
	cmpl	$127, -44(%rbp)
	jle	.L2629
	movl	$127, -44(%rbp)
.L2629:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-44(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	stbiw__write_run_data
	movl	-44(%rbp), %eax
	addl	%eax, -60(%rbp)
.L2628:
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L2630
.L2616:
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L2631
	addl	$1, -56(%rbp)
.L2615:
	cmpl	$3, -56(%rbp)
	jle	.L2632
.L2610:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2633
	call	__stack_chk_fail@PLT
.L2633:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	stbiw__write_hdr_scanline, .-stbiw__write_hdr_scanline
	.section	.rodata
	.align 8
.LC135:
	.string	"EXPOSURE=          1.0000000000000\n\n-Y %d +X %d\n"
	.text
	.type	stbi_write_hdr_core, @function
stbi_write_hdr_core:
.LFB743:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movl	%edx, -256(%rbp)
	movl	%ecx, -260(%rbp)
	movq	%r8, -272(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$0, -256(%rbp)
	jle	.L2636
	cmpl	$0, -252(%rbp)
	jle	.L2636
	cmpq	$0, -272(%rbp)
	jne	.L2637
.L2636:
	movl	$0, %eax
	jmp	.L2638
.L2637:
	movl	-252(%rbp), %eax
	sall	$2, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -232(%rbp)
	movabsq	$5638868765947084579, %rax
	movabsq	$7598231316865893699, %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movabsq	$2340009372826301556, %rax
	movabsq	$7449355557986792563, %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movabsq	$3343206294633275237, %rax
	movabsq	$6071218788584786536, %rdx
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	movabsq	$6878238401287566141, %rax
	movabsq	$7305515286472780914, %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movw	$10, -160(%rbp)
	movq	-248(%rbp), %rax
	movq	(%rax), %r8
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-224(%rbp), %rcx
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	-252(%rbp), %ecx
	movl	-256(%rbp), %edx
	leaq	-144(%rbp), %rax
	leaq	.LC135(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	%eax, -236(%rbp)
	movq	-248(%rbp), %rax
	movq	(%rax), %r8
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movl	-236(%rbp), %edx
	leaq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	$0, -240(%rbp)
	jmp	.L2639
.L2642:
	movl	-260(%rbp), %eax
	imull	-252(%rbp), %eax
	movl	%eax, %edx
	movl	stbi__flip_vertically_on_write(%rip), %eax
	testl	%eax, %eax
	je	.L2640
	movl	-256(%rbp), %eax
	subl	$1, %eax
	subl	-240(%rbp), %eax
	jmp	.L2641
.L2640:
	movl	-240(%rbp), %eax
.L2641:
	imull	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-272(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-232(%rbp), %rcx
	movl	-260(%rbp), %edx
	movl	-252(%rbp), %esi
	movq	-248(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbiw__write_hdr_scanline
	addl	$1, -240(%rbp)
.L2639:
	movl	-240(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L2642
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
.L2638:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2643
	call	__stack_chk_fail@PLT
.L2643:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	stbi_write_hdr_core, .-stbi_write_hdr_core
	.globl	stbi_write_hdr_to_func
	.type	stbi_write_hdr_to_func, @function
stbi_write_hdr_to_func:
.LFB744:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movl	%ecx, -120(%rbp)
	movl	%r8d, -124(%rbp)
	movq	%r9, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_write_callbacks
	movq	-136(%rbp), %rdi
	movl	-124(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %esi
	leaq	-96(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbi_write_hdr_core
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2646
	call	__stack_chk_fail@PLT
.L2646:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	stbi_write_hdr_to_func, .-stbi_write_hdr_to_func
	.globl	stbi_write_hdr
	.type	stbi_write_hdr, @function
stbi_write_hdr:
.LFB745:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	%edx, -128(%rbp)
	movl	%ecx, -132(%rbp)
	movq	%r8, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-120(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_write_file
	testl	%eax, %eax
	je	.L2648
	movq	-144(%rbp), %rdi
	movl	-132(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-124(%rbp), %esi
	leaq	-96(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbi_write_hdr_core
	movl	%eax, -100(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__end_write_file
	movl	-100(%rbp), %eax
	jmp	.L2650
.L2648:
	movl	$0, %eax
.L2650:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2651
	call	__stack_chk_fail@PLT
.L2651:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	stbi_write_hdr, .-stbi_write_hdr
	.section	.rodata
.LC136:
	.string	"p"
	.text
	.type	stbiw__sbgrowf, @function
stbiw__sbgrowf:
.LFB746:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2653
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	leal	(%rax,%rax), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	jmp	.L2654
.L2653:
	movl	-28(%rbp), %eax
	addl	$1, %eax
.L2654:
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	imull	-12(%rbp), %eax
	cltq
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2655
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rax
	jmp	.L2656
.L2655:
	movl	$0, %eax
.L2656:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2657
	leaq	__PRETTY_FUNCTION__.9972(%rip), %rcx
	movl	$830, %edx
	leaq	.LC127(%rip), %rsi
	leaq	.LC136(%rip), %rdi
	call	__assert_fail@PLT
.L2657:
	cmpq	$0, -8(%rbp)
	je	.L2658
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2659
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	$0, (%rax)
.L2659:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
.L2658:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	stbiw__sbgrowf, .-stbiw__sbgrowf
	.type	stbiw__zlib_flushf, @function
stbiw__zlib_flushf:
.LFB747:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L2662
.L2666:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L2663
	movq	-8(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2665
.L2663:
	leaq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2665:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movl	%edi, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	-8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L2662:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$7, %eax
	jg	.L2666
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	stbiw__zlib_flushf, .-stbiw__zlib_flushf
	.type	stbiw__zlib_bitrev, @function
stbiw__zlib_bitrev:
.LFB748:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2669
.L2670:
	movl	-4(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-20(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	sarl	-20(%rbp)
.L2669:
	movl	-24(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -24(%rbp)
	testl	%eax, %eax
	jne	.L2670
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	stbiw__zlib_bitrev, .-stbiw__zlib_bitrev
	.type	stbiw__zlib_countm, @function
stbiw__zlib_countm:
.LFB749:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2673
.L2676:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L2678
	addl	$1, -4(%rbp)
.L2673:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L2675
	cmpl	$257, -4(%rbp)
	jle	.L2676
	jmp	.L2675
.L2678:
	nop
.L2675:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	stbiw__zlib_countm, .-stbiw__zlib_countm
	.type	stbiw__zhash, @function
stbiw__zhash:
.LFB750:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$3, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$5, %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$4, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$17, %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$25, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$6, %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	stbiw__zhash, .-stbiw__zhash
	.section	.rodata
.LC137:
	.string	"d <= 32767 && best <= 258"
	.text
	.globl	stbi_zlib_compress
	.type	stbi_zlib_compress, @function
stbi_zlib_compress:
.LFB751:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movq	$0, -40(%rbp)
	movl	$131072, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2682
	movl	$0, %eax
	jmp	.L2771
.L2682:
	cmpl	$4, -112(%rbp)
	jg	.L2684
	movl	$5, -112(%rbp)
.L2684:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2685
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2687
.L2685:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2687:
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movb	$120, (%rax)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2688
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2690
.L2688:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2690:
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movb	$94, (%rax)
	movl	-92(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
	movl	-92(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L2691
.L2692:
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -88(%rbp)
.L2691:
	cmpl	$16383, -88(%rbp)
	jle	.L2692
	movl	$0, -88(%rbp)
	jmp	.L2693
.L2726:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	stbiw__zhash
	andl	$16383, %eax
	movl	%eax, -60(%rbp)
	movl	$3, -80(%rbp)
	movq	$0, -32(%rbp)
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L2694
	movq	-16(%rbp), %rax
	movl	-4(%rax), %eax
	jmp	.L2695
.L2694:
	movl	$0, %eax
.L2695:
	movl	%eax, -56(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L2696
.L2698:
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	-104(%rbp), %rax
	movq	%rax, %rdx
	movl	-88(%rbp), %eax
	subl	$32768, %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L2697
	movl	-108(%rbp), %eax
	subl	-88(%rbp), %eax
	movl	%eax, %edx
	movl	-88(%rbp), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rax
	addq	%rax, %rcx
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_countm
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L2697
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L2697:
	addl	$1, -84(%rbp)
.L2696:
	movl	-84(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L2698
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2699
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	movl	-112(%rbp), %edx
	addl	%edx, %edx
	cmpl	%edx, %eax
	jne	.L2699
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-112(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rax, %rcx
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-4(%rax), %rdx
	movl	-112(%rbp), %eax
	movl	%eax, (%rdx)
.L2699:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2700
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2702
.L2700:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2702:
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	salq	$3, %rax
	addq	%rdi, %rax
	movq	-104(%rbp), %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L2703
	movl	-88(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	stbiw__zhash
	andl	$16383, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L2704
	movq	-16(%rbp), %rax
	movl	-4(%rax), %eax
	jmp	.L2705
.L2704:
	movl	$0, %eax
.L2705:
	movl	%eax, -56(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L2706
.L2708:
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	-104(%rbp), %rax
	movq	%rax, %rdx
	movl	-88(%rbp), %eax
	subl	$32767, %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L2707
	movl	-108(%rbp), %eax
	subl	-88(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-88(%rbp), %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-104(%rbp), %rax
	addq	%rax, %rcx
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_countm
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.L2707
	movq	$0, -32(%rbp)
	jmp	.L2703
.L2707:
	addl	$1, -84(%rbp)
.L2706:
	movl	-84(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L2708
.L2703:
	cmpq	$0, -32(%rbp)
	je	.L2709
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	subq	-32(%rbp), %rax
	movl	%eax, -48(%rbp)
	cmpl	$32767, -48(%rbp)
	jg	.L2710
	cmpl	$258, -80(%rbp)
	jle	.L2773
.L2710:
	leaq	__PRETTY_FUNCTION__.10035(%rip), %rcx
	movl	$959, %edx
	leaq	.LC127(%rip), %rsi
	leaq	.LC137(%rip), %rdi
	call	__assert_fail@PLT
.L2773:
	movl	$0, -84(%rbp)
	jmp	.L2712
.L2713:
	addl	$1, -84(%rbp)
.L2712:
	movl	-84(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	lengthc.10008(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -80(%rbp)
	jge	.L2713
	cmpl	$-113, -84(%rbp)
	jge	.L2714
	movl	-84(%rbp), %eax
	addl	$305, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	stbiw__zlib_bitrev
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
	jmp	.L2715
.L2714:
	cmpl	$-1, -84(%rbp)
	jge	.L2716
	movl	-84(%rbp), %eax
	addl	$513, %eax
	movl	$9, %esi
	movl	%eax, %edi
	call	stbiw__zlib_bitrev
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$9, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
	jmp	.L2715
.L2716:
	cmpl	$22, -84(%rbp)
	jg	.L2718
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	stbiw__zlib_bitrev
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$7, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
	jmp	.L2715
.L2718:
	movl	-84(%rbp), %eax
	addl	$169, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	stbiw__zlib_bitrev
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
.L2715:
	movl	-84(%rbp), %eax
	cltq
	leaq	lengtheb.10009(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	je	.L2720
	movl	-84(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	lengthc.10008(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %eax
	movl	-80(%rbp), %edx
	subl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-84(%rbp), %eax
	cltq
	leaq	lengtheb.10009(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
.L2720:
	movl	$0, -84(%rbp)
	jmp	.L2721
.L2722:
	addl	$1, -84(%rbp)
.L2721:
	movl	-84(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	distc.10010(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -48(%rbp)
	jge	.L2722
	movl	-84(%rbp), %eax
	movl	$5, %esi
	movl	%eax, %edi
	call	stbiw__zlib_bitrev
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
	movl	-84(%rbp), %eax
	cltq
	leaq	disteb.10011(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	testb	%al, %al
	je	.L2723
	movl	-84(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	distc.10010(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %eax
	movl	-48(%rbp), %edx
	subl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-84(%rbp), %eax
	cltq
	leaq	disteb.10011(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
.L2723:
	movl	-80(%rbp), %eax
	addl	%eax, -88(%rbp)
	jmp	.L2693
.L2709:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$-113, %al
	ja	.L2724
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$48, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	stbiw__zlib_bitrev
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
	jmp	.L2725
.L2724:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$256, %eax
	movl	$9, %esi
	movl	%eax, %edi
	call	stbiw__zlib_bitrev
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$9, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
.L2725:
	addl	$1, -88(%rbp)
.L2693:
	movl	-108(%rbp), %eax
	subl	$3, %eax
	cmpl	%eax, -88(%rbp)
	jl	.L2726
	jmp	.L2727
.L2730:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$-113, %al
	ja	.L2728
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$48, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	stbiw__zlib_bitrev
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
	jmp	.L2729
.L2728:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	$256, %eax
	movl	$9, %esi
	movl	%eax, %edi
	call	stbiw__zlib_bitrev
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$9, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
.L2729:
	addl	$1, -88(%rbp)
.L2727:
	movl	-88(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L2730
	movl	$7, %esi
	movl	$0, %edi
	call	stbiw__zlib_bitrev
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$7, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
	jmp	.L2731
.L2732:
	movl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbiw__zlib_flushf
	movq	%rax, -40(%rbp)
.L2731:
	movl	-92(%rbp), %eax
	testl	%eax, %eax
	jne	.L2732
	movl	$0, -88(%rbp)
	jmp	.L2733
.L2735:
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2734
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	$8, %rax
	movq	%rax, %rdi
	call	free@PLT
.L2734:
	addl	$1, -88(%rbp)
.L2733:
	cmpl	$16383, -88(%rbp)
	jle	.L2735
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %ecx
	movl	-108(%rbp), %eax
	leal	2(%rax), %esi
	movl	-108(%rbp), %eax
	addl	$32766, %eax
	movslq	%eax, %rdx
	imulq	$-2147418109, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$14, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L2736
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	$2, (%rax)
	movl	$0, -84(%rbp)
	jmp	.L2737
.L2754:
	movl	-108(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, -76(%rbp)
	cmpl	$32767, -76(%rbp)
	jle	.L2738
	movl	$32767, -76(%rbp)
.L2738:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2739
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2741
.L2739:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2741:
	movl	-108(%rbp), %eax
	subl	-84(%rbp), %eax
	cmpl	%eax, -76(%rbp)
	sete	%dil
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movl	%edi, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2742
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2744
.L2742:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2744:
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movl	-76(%rbp), %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2745
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2747
.L2745:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2747:
	movl	-76(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movl	%edi, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2748
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2750
.L2748:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2750:
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	notl	%edi
	movl	%edi, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2751
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2753
.L2751:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2753:
	movl	-76(%rbp), %eax
	notl	%eax
	sarl	$8, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movl	%edi, %edx
	movb	%dl, (%rax)
	movl	-76(%rbp), %eax
	cltq
	movl	-84(%rbp), %edx
	movslq	%edx, %rcx
	movq	-104(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rdx
	subq	$4, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	-76(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-76(%rbp), %eax
	addl	%eax, -84(%rbp)
.L2737:
	movl	-84(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L2754
.L2736:
	movl	$1, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1584310703, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$11, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$5552, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -64(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L2755
.L2758:
	movl	$0, -88(%rbp)
	jmp	.L2756
.L2757:
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	addl	%eax, -68(%rbp)
	addl	$1, -88(%rbp)
.L2756:
	movl	-88(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L2757
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	movl	$2147975281, %edx
	imulq	%rcx, %rdx
	shrq	$32, %rdx
	shrl	$15, %edx
	imull	$65521, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movl	$2147975281, %edx
	imulq	%rcx, %rdx
	shrq	$32, %rdx
	shrl	$15, %edx
	imull	$65521, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	addl	%eax, -84(%rbp)
	movl	$5552, -64(%rbp)
.L2755:
	movl	-84(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L2758
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2759
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2761
.L2759:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2761:
	movl	-68(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movl	%edi, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2762
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2764
.L2762:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2764:
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movl	-68(%rbp), %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2765
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2767
.L2765:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2767:
	movl	-72(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movl	%edi, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L2768
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L2770
.L2768:
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__sbgrowf
	nop
.L2770:
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-4(%rax), %rdx
	movl	(%rdx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdx)
	cltq
	addq	%rsi, %rax
	movl	-72(%rbp), %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movl	-4(%rax), %edx
	movq	-120(%rbp), %rax
	movl	%edx, (%rax)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	$8, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movq	-40(%rbp), %rax
	subq	$8, %rax
.L2771:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L2772
	call	__stack_chk_fail@PLT
.L2772:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	stbi_zlib_compress, .-stbi_zlib_compress
	.type	stbiw__crc32, @function
stbiw__crc32:
.LFB752:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$-1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2775
.L2776:
	movl	-8(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-8(%rbp), %eax
	movzbl	%al, %eax
	xorl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	crc_table.10071(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%ecx, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L2775:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L2776
	movl	-8(%rbp), %eax
	notl	%eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	stbiw__crc32, .-stbiw__crc32
	.type	stbiw__wpcrc, @function
stbiw__wpcrc:
.LFB753:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	leal	4(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	$-4, %rsi
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	addq	%rcx, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbiw__crc32
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$3, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	stbiw__wpcrc, .-stbiw__wpcrc
	.type	stbiw__paeth, @function
stbiw__paeth:
.LFB754:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -12(%rbp)
	subl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -8(%rbp)
	subl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -4(%rbp)
	subl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.L2780
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.L2780
	movl	-20(%rbp), %eax
	jmp	.L2781
.L2780:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.L2782
	movl	-24(%rbp), %eax
	jmp	.L2781
.L2782:
	movl	-28(%rbp), %eax
.L2781:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	stbiw__paeth, .-stbiw__paeth
	.type	stbiw__encode_png_line, @function
stbiw__encode_png_line:
.LFB755:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	cmpl	$0, -72(%rbp)
	je	.L2784
	leaq	mapping.10101(%rip), %rax
	jmp	.L2785
.L2784:
	leaq	firstmap.10102(%rip), %rax
.L2785:
	movq	%rax, -32(%rbp)
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	stbi__flip_vertically_on_write(%rip), %eax
	testl	%eax, %eax
	je	.L2786
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	-72(%rbp), %eax
	jmp	.L2787
.L2786:
	movl	-72(%rbp), %eax
.L2787:
	imull	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	stbi__flip_vertically_on_write(%rip), %eax
	testl	%eax, %eax
	je	.L2788
	movl	-60(%rbp), %eax
	negl	%eax
	jmp	.L2789
.L2788:
	movl	-60(%rbp), %eax
.L2789:
	movl	%eax, -36(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L2790
	movl	-64(%rbp), %eax
	imull	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L2783
.L2790:
	movl	$0, -44(%rbp)
	jmp	.L2792
.L2801:
	cmpl	$6, -40(%rbp)
	ja	.L2793
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L2795(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L2795(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L2795:
	.long	.L2793-.L2795
	.long	.L2800-.L2795
	.long	.L2799-.L2795
	.long	.L2798-.L2795
	.long	.L2797-.L2795
	.long	.L2796-.L2795
	.long	.L2794-.L2795
	.text
.L2800:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L2793
.L2799:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L2793
.L2798:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	shrb	%al
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L2793
.L2797:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	stbiw__paeth
	subl	%eax, %ebx
	movl	%ebx, %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L2793
.L2796:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L2793
.L2794:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	nop
.L2793:
	addl	$1, -44(%rbp)
.L2792:
	movl	-44(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L2801
	cmpl	$6, -40(%rbp)
	ja	.L2783
	movl	-40(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L2803(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L2803(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L2803:
	.long	.L2783-.L2803
	.long	.L2808-.L2803
	.long	.L2807-.L2803
	.long	.L2806-.L2803
	.long	.L2805-.L2803
	.long	.L2804-.L2803
	.long	.L2802-.L2803
	.text
.L2808:
	movl	-76(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L2809
.L2810:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	-76(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -44(%rbp)
.L2809:
	movl	-64(%rbp), %eax
	imull	-76(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L2810
	jmp	.L2783
.L2807:
	movl	-76(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L2811
.L2812:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -44(%rbp)
.L2811:
	movl	-64(%rbp), %eax
	imull	-76(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L2812
	jmp	.L2783
.L2806:
	movl	-76(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L2813
.L2814:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	-76(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	sarl	%eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -44(%rbp)
.L2813:
	movl	-64(%rbp), %eax
	imull	-76(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L2814
	jmp	.L2783
.L2805:
	movl	-76(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L2815
.L2816:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-44(%rbp), %eax
	subl	-76(%rbp), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	stbiw__paeth
	subl	%eax, %ebx
	movl	%ebx, %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -44(%rbp)
.L2815:
	movl	-64(%rbp), %eax
	imull	-76(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L2816
	jmp	.L2783
.L2804:
	movl	-76(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L2817
.L2818:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	-76(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	shrb	%al
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -44(%rbp)
.L2817:
	movl	-64(%rbp), %eax
	imull	-76(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L2818
	jmp	.L2783
.L2802:
	movl	-76(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L2819
.L2820:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ebx
	movl	-44(%rbp), %eax
	subl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	stbiw__paeth
	subl	%eax, %ebx
	movl	%ebx, %ecx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -44(%rbp)
.L2819:
	movl	-64(%rbp), %eax
	imull	-76(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L2820
	nop
.L2783:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	stbiw__encode_png_line, .-stbiw__encode_png_line
	.section	.rodata
.LC138:
	.string	"o == out + *out_len"
	.text
	.globl	stbi_write_png_to_mem
	.type	stbi_write_png_to_mem, @function
stbi_write_png_to_mem:
.LFB756:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movl	%edx, -144(%rbp)
	movl	%ecx, -148(%rbp)
	movl	%r8d, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	stbi_write_force_png_filter(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	$-1, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$4, -40(%rbp)
	movl	$2, -36(%rbp)
	movl	$6, -32(%rbp)
	movabsq	$727905341920923785, %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -140(%rbp)
	jne	.L2822
	movl	-144(%rbp), %eax
	imull	-152(%rbp), %eax
	movl	%eax, -140(%rbp)
.L2822:
	cmpl	$4, -116(%rbp)
	jle	.L2823
	movl	$-1, -116(%rbp)
.L2823:
	movl	-144(%rbp), %eax
	imull	-152(%rbp), %eax
	addl	$1, %eax
	imull	-148(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L2824
	movl	$0, %eax
	jmp	.L2839
.L2824:
	movl	-144(%rbp), %eax
	imull	-152(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L2826
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L2839
.L2826:
	movl	$0, -112(%rbp)
	jmp	.L2827
.L2835:
	cmpl	$0, -116(%rbp)
	js	.L2828
	movl	-116(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-152(%rbp), %r9d
	movl	-112(%rbp), %r8d
	movl	-148(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-140(%rbp), %esi
	movq	-136(%rbp), %rax
	pushq	-72(%rbp)
	movl	-116(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbiw__encode_png_line
	addq	$16, %rsp
	jmp	.L2829
.L2828:
	movl	$0, -104(%rbp)
	movl	$2147483647, -100(%rbp)
	movl	$0, -108(%rbp)
	jmp	.L2830
.L2834:
	movl	-152(%rbp), %r9d
	movl	-112(%rbp), %r8d
	movl	-148(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-140(%rbp), %esi
	movq	-136(%rbp), %rax
	pushq	-72(%rbp)
	movl	-108(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbiw__encode_png_line
	addq	$16, %rsp
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L2831
.L2832:
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	sarb	$7, %dl
	xorl	%edx, %eax
	subl	%edx, %eax
	movzbl	%al, %eax
	addl	%eax, -96(%rbp)
	addl	$1, -92(%rbp)
.L2831:
	movl	-144(%rbp), %eax
	imull	-152(%rbp), %eax
	cmpl	%eax, -92(%rbp)
	jl	.L2832
	movl	-96(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.L2833
	movl	-96(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -104(%rbp)
.L2833:
	addl	$1, -108(%rbp)
.L2830:
	cmpl	$4, -108(%rbp)
	jle	.L2834
	movl	-108(%rbp), %eax
	cmpl	-104(%rbp), %eax
	je	.L2829
	movl	-152(%rbp), %r9d
	movl	-112(%rbp), %r8d
	movl	-148(%rbp), %ecx
	movl	-144(%rbp), %edx
	movl	-140(%rbp), %esi
	movq	-136(%rbp), %rax
	pushq	-72(%rbp)
	movl	-104(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	stbiw__encode_png_line
	addq	$16, %rsp
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
.L2829:
	movl	-144(%rbp), %eax
	imull	-152(%rbp), %eax
	addl	$1, %eax
	imull	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	-108(%rbp), %edx
	movb	%dl, (%rax)
	movl	-144(%rbp), %eax
	imull	-152(%rbp), %eax
	movslq	%eax, %rdx
	movl	-144(%rbp), %eax
	imull	-152(%rbp), %eax
	addl	$1, %eax
	imull	-112(%rbp), %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-80(%rbp), %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	addl	$1, -112(%rbp)
.L2827:
	movl	-112(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L2835
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	stbi_write_png_compression_level(%rip), %ecx
	movl	-144(%rbp), %eax
	imull	-152(%rbp), %eax
	addl	$1, %eax
	imull	-148(%rbp), %eax
	movl	%eax, %esi
	leaq	-120(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	stbi_zlib_compress
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	cmpq	$0, -64(%rbp)
	jne	.L2836
	movl	$0, %eax
	jmp	.L2839
.L2836:
	movl	-120(%rbp), %eax
	addl	$57, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L2837
	movl	$0, %eax
	jmp	.L2839
.L2837:
	movl	-120(%rbp), %eax
	leal	57(%rax), %edx
	movq	-160(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movb	$13, (%rax)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movl	$73, %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movl	$72, %edx
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	$68, %edx
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movl	$82, %edx
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movl	-144(%rbp), %eax
	sarl	$24, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movl	-144(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	-144(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movl	-144(%rbp), %edx
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movl	-148(%rbp), %eax
	sarl	$24, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movl	-148(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	-148(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movl	-148(%rbp), %edx
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movb	$8, (%rax)
	movl	-152(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %ecx
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	movb	$0, (%rax)
	leaq	-88(%rbp), %rax
	movl	$13, %esi
	movq	%rax, %rdi
	call	stbiw__wpcrc
	movl	-120(%rbp), %eax
	sarl	$24, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movl	-120(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	-120(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movl	-120(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movl	$73, %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movl	$68, %edx
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	$65, %edx
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movl	$84, %edx
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-88(%rbp), %rdx
	movl	-120(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-120(%rbp), %edx
	leaq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbiw__wpcrc
	movq	-88(%rbp), %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	movl	$73, %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movl	$69, %edx
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	$78, %edx
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movl	$68, %edx
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	stbiw__wpcrc
	movq	-160(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L2838
	leaq	__PRETTY_FUNCTION__.10175(%rip), %rcx
	movl	$1209, %edx
	leaq	.LC127(%rip), %rsi
	leaq	.LC138(%rip), %rdi
	call	__assert_fail@PLT
.L2838:
	movq	-56(%rbp), %rax
.L2839:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2840
	call	__stack_chk_fail@PLT
.L2840:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	stbi_write_png_to_mem, .-stbi_write_png_to_mem
	.globl	stbi_write_png
	.type	stbi_write_png, @function
stbi_write_png:
.LFB757:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	%r8, -64(%rbp)
	movl	%r9d, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-28(%rbp), %r8
	movl	-52(%rbp), %edi
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	-56(%rbp), %esi
	movq	-64(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	stbi_write_png_to_mem
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2842
	movl	$0, %eax
	jmp	.L2845
.L2842:
	movq	-40(%rbp), %rax
	leaq	.LC126(%rip), %rsi
	movq	%rax, %rdi
	call	stbiw__fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2844
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L2845
.L2844:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
.L2845:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2846
	call	__stack_chk_fail@PLT
.L2846:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	stbi_write_png, .-stbi_write_png
	.globl	stbi_write_png_to_func
	.type	stbi_write_png_to_func, @function
stbi_write_png_to_func:
.LFB758:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-20(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	stbi_write_png_to_mem
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2848
	movl	$0, %eax
	jmp	.L2850
.L2848:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
.L2850:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2851
	call	__stack_chk_fail@PLT
.L2851:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	stbi_write_png_to_func, .-stbi_write_png_to_func
	.section	.rodata
	.align 32
	.type	stbiw__jpg_ZigZag, @object
	.size	stbiw__jpg_ZigZag, 64
stbiw__jpg_ZigZag:
	.string	""
	.ascii	"\001\005\006\016\017\033\034\002\004\007\r\020\032\035*\003\b"
	.ascii	"\f\021\031\036)+\t\013\022\030\037(,5\n\023\027 '-46\024\026"
	.ascii	"!&.37<\025\"%/28;=#$019:>?"
	.text
	.type	stbiw__jpg_writeBits, @function
stbiw__jpg_writeBits:
.LFB759:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	addl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movl	$24, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -8(%rbp)
	jmp	.L2853
.L2855:
	movl	-8(%rbp), %eax
	sarl	$16, %eax
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	stbiw__putc
	cmpb	$-1, -9(%rbp)
	jne	.L2854
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	stbiw__putc
.L2854:
	sall	$8, -8(%rbp)
	subl	$8, -4(%rbp)
.L2853:
	cmpl	$7, -4(%rbp)
	jg	.L2855
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	stbiw__jpg_writeBits, .-stbiw__jpg_writeBits
	.type	stbiw__jpg_DCT, @function
stbiw__jpg_DCT:
.LFB760:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	-120(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -108(%rbp)
	movq	-128(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -104(%rbp)
	movq	-136(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -100(%rbp)
	movq	-144(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -96(%rbp)
	movq	-152(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -92(%rbp)
	movq	-160(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -88(%rbp)
	movq	16(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -84(%rbp)
	movq	24(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-108(%rbp), %xmm0
	addss	-80(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-108(%rbp), %xmm0
	subss	-80(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-104(%rbp), %xmm0
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-104(%rbp), %xmm0
	subss	-84(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-100(%rbp), %xmm0
	addss	-88(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-100(%rbp), %xmm0
	subss	-88(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-96(%rbp), %xmm0
	addss	-92(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-96(%rbp), %xmm0
	subss	-92(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-76(%rbp), %xmm0
	addss	-52(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-76(%rbp), %xmm0
	subss	-52(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-68(%rbp), %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-68(%rbp), %xmm0
	subss	-60(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm0
	addss	-36(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-44(%rbp), %xmm0
	subss	-36(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-32(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-40(%rbp), %xmm1
	movss	.LC139(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm0
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	-40(%rbp), %xmm0
	subss	-28(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-48(%rbp), %xmm0
	addss	-56(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-56(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-64(%rbp), %xmm0
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	subss	-32(%rbp), %xmm1
	movss	.LC140(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-44(%rbp), %xmm1
	movss	.LC141(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-32(%rbp), %xmm1
	movss	.LC142(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-36(%rbp), %xmm1
	movss	.LC139(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-72(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-72(%rbp), %xmm0
	subss	-12(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	addss	-20(%rbp), %xmm0
	movq	-160(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-4(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-8(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	movq	-128(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-8(%rbp), %xmm0
	subss	-16(%rbp), %xmm0
	movq	24(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-120(%rbp), %rax
	movss	-108(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-136(%rbp), %rax
	movss	-100(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-152(%rbp), %rax
	movss	-92(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	movss	-84(%rbp), %xmm0
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	stbiw__jpg_DCT, .-stbiw__jpg_DCT
	.type	stbiw__jpg_calcBits, @function
stbiw__jpg_calcBits:
.LFB761:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, %edx
	xorl	-20(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L2858
	movl	-20(%rbp), %eax
	subl	$1, %eax
	jmp	.L2859
.L2858:
	movl	-20(%rbp), %eax
.L2859:
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movw	$1, (%rax)
	jmp	.L2860
.L2861:
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %edx
	addl	$1, %edx
	movw	%dx, (%rax)
.L2860:
	sarl	-4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L2861
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	stbiw__jpg_calcBits, .-stbiw__jpg_calcBits
	.type	stbiw__jpg_processDU, @function
stbiw__jpg_processDU:
.LFB762:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400, %rsp
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	%rcx, -368(%rbp)
	movl	%r8d, -372(%rbp)
	movq	%r9, -384(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-400(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, -284(%rbp)
	movq	-400(%rbp), %rax
	movzwl	2(%rax), %eax
	movw	%ax, -282(%rbp)
	movq	-400(%rbp), %rax
	addq	$960, %rax
	movzwl	(%rax), %eax
	movw	%ax, -280(%rbp)
	movq	-400(%rbp), %rax
	addq	$960, %rax
	movzwl	2(%rax), %eax
	movw	%ax, -278(%rbp)
	movl	$0, -336(%rbp)
	movl	-372(%rbp), %eax
	sall	$3, %eax
	movl	%eax, -304(%rbp)
	jmp	.L2863
.L2864:
	movl	-336(%rbp), %eax
	cltq
	addq	$7, %rax
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movl	-336(%rbp), %eax
	cltq
	addq	$6, %rax
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-336(%rbp), %eax
	cltq
	addq	$5, %rax
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	leaq	(%rdx,%rax), %r11
	movl	-336(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	leaq	(%rdx,%rax), %r10
	movl	-336(%rbp), %eax
	cltq
	addq	$3, %rax
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-336(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rax, %rdx
	movl	-336(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rsi
	movq	-368(%rbp), %rax
	addq	%rax, %rsi
	movl	-336(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %r9
	movq	-368(%rbp), %rax
	addq	%r9, %rax
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	stbiw__jpg_DCT
	addq	$16, %rsp
	movl	-372(%rbp), %eax
	addl	%eax, -336(%rbp)
.L2863:
	movl	-336(%rbp), %eax
	cmpl	-304(%rbp), %eax
	jl	.L2864
	movl	$0, -336(%rbp)
	jmp	.L2865
.L2866:
	movl	-372(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-336(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movl	-372(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-336(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-372(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-336(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	leaq	(%rdx,%rax), %r11
	movl	-372(%rbp), %eax
	leal	0(,%rax,4), %edx
	movl	-336(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	leaq	(%rdx,%rax), %r10
	movl	-372(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-336(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-372(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-336(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rax, %rdx
	movl	-336(%rbp), %esi
	movl	-372(%rbp), %eax
	addl	%esi, %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-368(%rbp), %rax
	addq	%rax, %rsi
	movl	-336(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %r9
	movq	-368(%rbp), %rax
	addq	%r9, %rax
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	stbiw__jpg_DCT
	addq	$16, %rsp
	addl	$1, -336(%rbp)
.L2865:
	cmpl	$7, -336(%rbp)
	jle	.L2866
	movl	$0, -316(%rbp)
	movl	$0, -328(%rbp)
	jmp	.L2867
.L2873:
	movl	$0, -320(%rbp)
	jmp	.L2868
.L2872:
	movl	-316(%rbp), %eax
	imull	-372(%rbp), %eax
	movl	%eax, %edx
	movl	-320(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -332(%rbp)
	movl	-332(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-328(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-384(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -288(%rbp)
	pxor	%xmm0, %xmm0
	comiss	-288(%rbp), %xmm0
	jbe	.L2893
	movss	-288(%rbp), %xmm0
	movss	.LC10(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	jmp	.L2871
.L2893:
	movss	-288(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
.L2871:
	movl	-328(%rbp), %edx
	movslq	%edx, %rdx
	leaq	stbiw__jpg_ZigZag(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movzbl	%dl, %edx
	movslq	%edx, %rdx
	movl	%eax, -272(%rbp,%rdx,4)
	addl	$1, -320(%rbp)
	addl	$1, -328(%rbp)
.L2868:
	cmpl	$7, -320(%rbp)
	jle	.L2872
	addl	$1, -316(%rbp)
.L2867:
	cmpl	$7, -316(%rbp)
	jle	.L2873
	movl	-272(%rbp), %eax
	subl	16(%rbp), %eax
	movl	%eax, -300(%rbp)
	cmpl	$0, -300(%rbp)
	jne	.L2874
	movq	-392(%rbp), %rcx
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__jpg_writeBits
	jmp	.L2875
.L2874:
	leaq	-276(%rbp), %rdx
	movl	-300(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	stbiw__jpg_calcBits
	movzwl	-274(%rbp), %eax
	movzwl	%ax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-392(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__jpg_writeBits
	leaq	-276(%rbp), %rcx
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__jpg_writeBits
.L2875:
	movl	$63, -324(%rbp)
	jmp	.L2876
.L2878:
	subl	$1, -324(%rbp)
.L2876:
	cmpl	$0, -324(%rbp)
	jle	.L2877
	movl	-324(%rbp), %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L2878
.L2877:
	cmpl	$0, -324(%rbp)
	jne	.L2879
	leaq	-284(%rbp), %rcx
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__jpg_writeBits
	movl	-272(%rbp), %eax
	jmp	.L2890
.L2879:
	movl	$1, -332(%rbp)
	jmp	.L2881
.L2888:
	movl	-332(%rbp), %eax
	movl	%eax, -296(%rbp)
	jmp	.L2882
.L2884:
	addl	$1, -332(%rbp)
.L2882:
	movl	-332(%rbp), %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L2883
	movl	-332(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jle	.L2884
.L2883:
	movl	-332(%rbp), %eax
	subl	-296(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$15, -312(%rbp)
	jle	.L2885
	movl	-312(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -292(%rbp)
	movl	$1, -308(%rbp)
	jmp	.L2886
.L2887:
	leaq	-280(%rbp), %rcx
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__jpg_writeBits
	addl	$1, -308(%rbp)
.L2886:
	movl	-308(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jle	.L2887
	andl	$15, -312(%rbp)
.L2885:
	movl	-332(%rbp), %eax
	cltq
	movl	-272(%rbp,%rax,4), %eax
	leaq	-276(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	stbiw__jpg_calcBits
	movl	-312(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	-274(%rbp), %eax
	movzwl	%ax, %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-400(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__jpg_writeBits
	leaq	-276(%rbp), %rcx
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__jpg_writeBits
	addl	$1, -332(%rbp)
.L2881:
	movl	-332(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jle	.L2888
	cmpl	$63, -324(%rbp)
	je	.L2889
	leaq	-284(%rbp), %rcx
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	stbiw__jpg_writeBits
.L2889:
	movl	-272(%rbp), %eax
.L2890:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L2891
	call	__stack_chk_fail@PLT
.L2891:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	stbiw__jpg_processDU, .-stbiw__jpg_processDU
	.type	stbi_write_jpg_core, @function
stbi_write_jpg_core:
.LFB763:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$368, %rsp
	movq	%rdi, -4440(%rbp)
	movl	%esi, -4444(%rbp)
	movl	%edx, -4448(%rbp)
	movl	%ecx, -4452(%rbp)
	movq	%r8, -4464(%rbp)
	movl	%r9d, -4456(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -4464(%rbp)
	je	.L2895
	cmpl	$0, -4444(%rbp)
	je	.L2895
	cmpl	$0, -4448(%rbp)
	je	.L2895
	cmpl	$4, -4452(%rbp)
	jg	.L2895
	cmpl	$0, -4452(%rbp)
	jg	.L2896
.L2895:
	movl	$0, %eax
	jmp	.L2956
.L2896:
	cmpl	$0, -4456(%rbp)
	je	.L2898
	movl	-4456(%rbp), %eax
	jmp	.L2899
.L2898:
	movl	$90, %eax
.L2899:
	movl	%eax, -4456(%rbp)
	cmpl	$90, -4456(%rbp)
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -4368(%rbp)
	cmpl	$0, -4456(%rbp)
	jle	.L2900
	movl	$100, %eax
	cmpl	$100, -4456(%rbp)
	cmovle	-4456(%rbp), %eax
	jmp	.L2901
.L2900:
	movl	$1, %eax
.L2901:
	movl	%eax, -4456(%rbp)
	cmpl	$49, -4456(%rbp)
	jg	.L2902
	movl	$5000, %eax
	cltd
	idivl	-4456(%rbp)
	jmp	.L2903
.L2902:
	movl	$100, %eax
	subl	-4456(%rbp), %eax
	addl	%eax, %eax
.L2903:
	movl	%eax, -4456(%rbp)
	movl	$0, -4408(%rbp)
	jmp	.L2904
.L2913:
	movl	-4408(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	YQT.10329(%rip), %rax
	movl	(%rdx,%rax), %eax
	imull	-4456(%rbp), %eax
	addl	$50, %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4304(%rbp)
	cmpl	$0, -4304(%rbp)
	jle	.L2905
	cmpl	$255, -4304(%rbp)
	jg	.L2906
	movl	-4304(%rbp), %eax
	jmp	.L2908
.L2906:
	movl	$-1, %eax
	jmp	.L2908
.L2905:
	movl	$1, %eax
.L2908:
	movl	-4408(%rbp), %edx
	movslq	%edx, %rdx
	leaq	stbiw__jpg_ZigZag(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movzbl	%dl, %edx
	movslq	%edx, %rdx
	movb	%al, -144(%rbp,%rdx)
	movl	-4408(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	UVQT.10330(%rip), %rax
	movl	(%rdx,%rax), %eax
	imull	-4456(%rbp), %eax
	addl	$50, %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4300(%rbp)
	cmpl	$0, -4300(%rbp)
	jle	.L2909
	cmpl	$255, -4300(%rbp)
	jg	.L2910
	movl	-4300(%rbp), %eax
	jmp	.L2912
.L2910:
	movl	$-1, %eax
	jmp	.L2912
.L2909:
	movl	$1, %eax
.L2912:
	movl	-4408(%rbp), %edx
	movslq	%edx, %rdx
	leaq	stbiw__jpg_ZigZag(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movzbl	%dl, %edx
	movslq	%edx, %rdx
	movb	%al, -80(%rbp,%rdx)
	addl	$1, -4408(%rbp)
.L2904:
	cmpl	$63, -4408(%rbp)
	jle	.L2913
	movl	$0, -4416(%rbp)
	movl	$0, -4404(%rbp)
	jmp	.L2914
.L2917:
	movl	$0, -4412(%rbp)
	jmp	.L2915
.L2916:
	movl	-4404(%rbp), %eax
	cltq
	leaq	stbiw__jpg_ZigZag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	cltq
	movzbl	-144(%rbp,%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm1
	movl	-4416(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	aasf.10331(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	mulss	%xmm0, %xmm1
	movl	-4412(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	aasf.10331(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC6(%rip), %xmm0
	divss	%xmm1, %xmm0
	movl	-4404(%rbp), %eax
	cltq
	movss	%xmm0, -4272(%rbp,%rax,4)
	movl	-4404(%rbp), %eax
	cltq
	leaq	stbiw__jpg_ZigZag(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm1
	movl	-4416(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	aasf.10331(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	mulss	%xmm0, %xmm1
	movl	-4412(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	aasf.10331(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC6(%rip), %xmm0
	divss	%xmm1, %xmm0
	movl	-4404(%rbp), %eax
	cltq
	movss	%xmm0, -4016(%rbp,%rax,4)
	addl	$1, -4412(%rbp)
	addl	$1, -4404(%rbp)
.L2915:
	cmpl	$7, -4412(%rbp)
	jle	.L2916
	addl	$1, -4416(%rbp)
.L2914:
	cmpl	$7, -4416(%rbp)
	jle	.L2917
	movb	$-1, -176(%rbp)
	movb	$-64, -175(%rbp)
	movb	$0, -174(%rbp)
	movb	$17, -173(%rbp)
	movb	$8, -172(%rbp)
	movl	-4448(%rbp), %eax
	sarl	$8, %eax
	movb	%al, -171(%rbp)
	movl	-4448(%rbp), %eax
	movb	%al, -170(%rbp)
	movl	-4444(%rbp), %eax
	sarl	$8, %eax
	movb	%al, -169(%rbp)
	movl	-4444(%rbp), %eax
	movb	%al, -168(%rbp)
	movb	$3, -167(%rbp)
	movb	$1, -166(%rbp)
	cmpl	$0, -4368(%rbp)
	je	.L2918
	movl	$34, %eax
	jmp	.L2919
.L2918:
	movl	$17, %eax
.L2919:
	movb	%al, -165(%rbp)
	movb	$0, -164(%rbp)
	movb	$2, -163(%rbp)
	movb	$17, -162(%rbp)
	movb	$1, -161(%rbp)
	movb	$3, -160(%rbp)
	movb	$17, -159(%rbp)
	movb	$1, -158(%rbp)
	movb	$-1, -157(%rbp)
	movb	$-60, -156(%rbp)
	movb	$1, -155(%rbp)
	movb	$-94, -154(%rbp)
	movb	$0, -153(%rbp)
	movq	-4440(%rbp), %rax
	movq	(%rax), %rcx
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	movl	$25, %edx
	leaq	head0.10352(%rip), %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-4440(%rbp), %rax
	movq	(%rax), %r8
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-144(%rbp), %rcx
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-4440(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__putc
	movq	-4440(%rbp), %rax
	movq	(%rax), %r8
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-80(%rbp), %rcx
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-4440(%rbp), %rax
	movq	(%rax), %r8
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-176(%rbp), %rcx
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-4440(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1+std_dc_luminance_nrcodes.10317(%rip), %rsi
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movq	%rax, %rdi
	call	*%rcx
	movq	-4440(%rbp), %rax
	movq	(%rax), %rcx
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	movl	$12, %edx
	leaq	std_dc_luminance_values.10318(%rip), %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-4440(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	stbiw__putc
	movq	-4440(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1+std_ac_luminance_nrcodes.10319(%rip), %rsi
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movq	%rax, %rdi
	call	*%rcx
	movq	-4440(%rbp), %rax
	movq	(%rax), %rcx
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	movl	$162, %edx
	leaq	std_ac_luminance_values.10320(%rip), %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-4440(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	stbiw__putc
	movq	-4440(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1+std_dc_chrominance_nrcodes.10321(%rip), %rsi
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movq	%rax, %rdi
	call	*%rcx
	movq	-4440(%rbp), %rax
	movq	(%rax), %rcx
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	movl	$12, %edx
	leaq	std_dc_chrominance_values.10322(%rip), %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-4440(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	stbiw__putc
	movq	-4440(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1+std_ac_chrominance_nrcodes.10323(%rip), %rsi
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %edx
	movq	%rax, %rdi
	call	*%rcx
	movq	-4440(%rbp), %rax
	movq	(%rax), %rcx
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	movl	$162, %edx
	leaq	std_ac_chrominance_values.10324(%rip), %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-4440(%rbp), %rax
	movq	(%rax), %rcx
	movq	-4440(%rbp), %rax
	movq	8(%rax), %rax
	movl	$14, %edx
	leaq	head2.10353(%rip), %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	$0, -4400(%rbp)
	movl	$0, -4396(%rbp)
	movl	$0, -4392(%rbp)
	movl	$0, -4424(%rbp)
	movl	$0, -4420(%rbp)
	cmpl	$2, -4452(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4364(%rbp)
	cmpl	$2, -4452(%rbp)
	jle	.L2920
	movl	$2, %eax
	jmp	.L2921
.L2920:
	movl	$0, %eax
.L2921:
	movl	%eax, -4360(%rbp)
	movq	-4464(%rbp), %rax
	movq	%rax, -4296(%rbp)
	movl	-4364(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4296(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4288(%rbp)
	movl	-4360(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4296(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4280(%rbp)
	cmpl	$0, -4368(%rbp)
	je	.L2922
	movl	$0, -4384(%rbp)
	jmp	.L2923
.L2940:
	movl	$0, -4388(%rbp)
	jmp	.L2924
.L2939:
	movl	-4384(%rbp), %eax
	movl	%eax, -4416(%rbp)
	movl	$0, -4380(%rbp)
	jmp	.L2925
.L2934:
	movl	-4416(%rbp), %eax
	cmpl	-4448(%rbp), %eax
	jl	.L2926
	movl	-4448(%rbp), %eax
	subl	$1, %eax
	jmp	.L2927
.L2926:
	movl	-4416(%rbp), %eax
.L2927:
	movl	%eax, -4328(%rbp)
	movl	stbi__flip_vertically_on_write(%rip), %eax
	testl	%eax, %eax
	je	.L2928
	movl	-4448(%rbp), %eax
	subl	$1, %eax
	subl	-4328(%rbp), %eax
	jmp	.L2929
.L2928:
	movl	-4328(%rbp), %eax
.L2929:
	imull	-4444(%rbp), %eax
	movl	-4452(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -4324(%rbp)
	movl	-4388(%rbp), %eax
	movl	%eax, -4412(%rbp)
	jmp	.L2930
.L2933:
	movl	-4412(%rbp), %eax
	cmpl	-4444(%rbp), %eax
	jl	.L2931
	movl	-4444(%rbp), %eax
	subl	$1, %eax
	jmp	.L2932
.L2931:
	movl	-4412(%rbp), %eax
.L2932:
	imull	-4452(%rbp), %eax
	movl	%eax, %edx
	movl	-4324(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4320(%rbp)
	movl	-4320(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4296(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4316(%rbp)
	movl	-4320(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4288(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4312(%rbp)
	movl	-4320(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4280(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4308(%rbp)
	movss	-4316(%rbp), %xmm1
	movss	.LC143(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-4312(%rbp), %xmm2
	movss	.LC144(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-4308(%rbp), %xmm2
	movss	.LC145(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	.LC146(%rip), %xmm1
	subss	%xmm1, %xmm0
	movl	-4380(%rbp), %eax
	cltq
	movss	%xmm0, -3248(%rbp,%rax,4)
	movss	-4316(%rbp), %xmm1
	movss	.LC147(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-4312(%rbp), %xmm2
	movss	.LC148(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-4308(%rbp), %xmm2
	movss	.LC10(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movl	-4380(%rbp), %eax
	cltq
	movss	%xmm0, -2224(%rbp,%rax,4)
	movss	-4316(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-4312(%rbp), %xmm2
	movss	.LC149(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	-4308(%rbp), %xmm2
	movss	.LC150(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movl	-4380(%rbp), %eax
	cltq
	movss	%xmm0, -1200(%rbp,%rax,4)
	addl	$1, -4412(%rbp)
	addl	$1, -4380(%rbp)
.L2930:
	movl	-4388(%rbp), %eax
	addl	$15, %eax
	cmpl	%eax, -4412(%rbp)
	jle	.L2933
	addl	$1, -4416(%rbp)
.L2925:
	movl	-4384(%rbp), %eax
	addl	$15, %eax
	cmpl	%eax, -4416(%rbp)
	jle	.L2934
	leaq	-4272(%rbp), %r8
	leaq	-3248(%rbp), %rcx
	leaq	-4420(%rbp), %rdx
	leaq	-4424(%rbp), %rsi
	movq	-4440(%rbp), %rax
	subq	$8, %rsp
	leaq	YAC_HT.10327(%rip), %rdi
	pushq	%rdi
	leaq	YDC_HT.10325(%rip), %rdi
	pushq	%rdi
	movl	-4400(%rbp), %edi
	pushq	%rdi
	movq	%r8, %r9
	movl	$16, %r8d
	movq	%rax, %rdi
	call	stbiw__jpg_processDU
	addq	$32, %rsp
	movl	%eax, -4400(%rbp)
	leaq	-3248(%rbp), %rax
	addq	$32, %rax
	leaq	-4272(%rbp), %r8
	leaq	-4420(%rbp), %rdx
	leaq	-4424(%rbp), %rsi
	movq	-4440(%rbp), %rdi
	subq	$8, %rsp
	leaq	YAC_HT.10327(%rip), %rcx
	pushq	%rcx
	leaq	YDC_HT.10325(%rip), %rcx
	pushq	%rcx
	movl	-4400(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movl	$16, %r8d
	movq	%rax, %rcx
	call	stbiw__jpg_processDU
	addq	$32, %rsp
	movl	%eax, -4400(%rbp)
	leaq	-3248(%rbp), %rax
	addq	$512, %rax
	leaq	-4272(%rbp), %r8
	leaq	-4420(%rbp), %rdx
	leaq	-4424(%rbp), %rsi
	movq	-4440(%rbp), %rdi
	subq	$8, %rsp
	leaq	YAC_HT.10327(%rip), %rcx
	pushq	%rcx
	leaq	YDC_HT.10325(%rip), %rcx
	pushq	%rcx
	movl	-4400(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movl	$16, %r8d
	movq	%rax, %rcx
	call	stbiw__jpg_processDU
	addq	$32, %rsp
	movl	%eax, -4400(%rbp)
	leaq	-3248(%rbp), %rax
	addq	$544, %rax
	leaq	-4272(%rbp), %r8
	leaq	-4420(%rbp), %rdx
	leaq	-4424(%rbp), %rsi
	movq	-4440(%rbp), %rdi
	subq	$8, %rsp
	leaq	YAC_HT.10327(%rip), %rcx
	pushq	%rcx
	leaq	YDC_HT.10325(%rip), %rcx
	pushq	%rcx
	movl	-4400(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movl	$16, %r8d
	movq	%rax, %rcx
	call	stbiw__jpg_processDU
	addq	$32, %rsp
	movl	%eax, -4400(%rbp)
	movl	$0, -4376(%rbp)
	movl	$0, -4380(%rbp)
	jmp	.L2935
.L2938:
	movl	$0, -4372(%rbp)
	jmp	.L2936
.L2937:
	movl	-4376(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-4372(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -4332(%rbp)
	movl	-4332(%rbp), %eax
	cltq
	movss	-2224(%rbp,%rax,4), %xmm1
	movl	-4332(%rbp), %eax
	addl	$1, %eax
	cltq
	movss	-2224(%rbp,%rax,4), %xmm0
	addss	%xmm0, %xmm1
	movl	-4332(%rbp), %eax
	addl	$16, %eax
	cltq
	movss	-2224(%rbp,%rax,4), %xmm0
	addss	%xmm0, %xmm1
	movl	-4332(%rbp), %eax
	addl	$17, %eax
	cltq
	movss	-2224(%rbp,%rax,4), %xmm0
	addss	%xmm0, %xmm1
	movss	.LC151(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movl	-4380(%rbp), %eax
	cltq
	movss	%xmm0, -3760(%rbp,%rax,4)
	movl	-4332(%rbp), %eax
	cltq
	movss	-1200(%rbp,%rax,4), %xmm1
	movl	-4332(%rbp), %eax
	addl	$1, %eax
	cltq
	movss	-1200(%rbp,%rax,4), %xmm0
	addss	%xmm0, %xmm1
	movl	-4332(%rbp), %eax
	addl	$16, %eax
	cltq
	movss	-1200(%rbp,%rax,4), %xmm0
	addss	%xmm0, %xmm1
	movl	-4332(%rbp), %eax
	addl	$17, %eax
	cltq
	movss	-1200(%rbp,%rax,4), %xmm0
	addss	%xmm0, %xmm1
	movss	.LC151(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movl	-4380(%rbp), %eax
	cltq
	movss	%xmm0, -3504(%rbp,%rax,4)
	addl	$1, -4372(%rbp)
	addl	$1, -4380(%rbp)
.L2936:
	cmpl	$7, -4372(%rbp)
	jle	.L2937
	addl	$1, -4376(%rbp)
.L2935:
	cmpl	$7, -4376(%rbp)
	jle	.L2938
	leaq	-4016(%rbp), %r8
	leaq	-3760(%rbp), %rcx
	leaq	-4420(%rbp), %rdx
	leaq	-4424(%rbp), %rsi
	movq	-4440(%rbp), %rax
	subq	$8, %rsp
	leaq	UVAC_HT.10328(%rip), %rdi
	pushq	%rdi
	leaq	UVDC_HT.10326(%rip), %rdi
	pushq	%rdi
	movl	-4396(%rbp), %edi
	pushq	%rdi
	movq	%r8, %r9
	movl	$8, %r8d
	movq	%rax, %rdi
	call	stbiw__jpg_processDU
	addq	$32, %rsp
	movl	%eax, -4396(%rbp)
	leaq	-4016(%rbp), %r8
	leaq	-3504(%rbp), %rcx
	leaq	-4420(%rbp), %rdx
	leaq	-4424(%rbp), %rsi
	movq	-4440(%rbp), %rax
	subq	$8, %rsp
	leaq	UVAC_HT.10328(%rip), %rdi
	pushq	%rdi
	leaq	UVDC_HT.10326(%rip), %rdi
	pushq	%rdi
	movl	-4392(%rbp), %edi
	pushq	%rdi
	movq	%r8, %r9
	movl	$8, %r8d
	movq	%rax, %rdi
	call	stbiw__jpg_processDU
	addq	$32, %rsp
	movl	%eax, -4392(%rbp)
	addl	$16, -4388(%rbp)
.L2924:
	movl	-4388(%rbp), %eax
	cmpl	-4444(%rbp), %eax
	jl	.L2939
	addl	$16, -4384(%rbp)
.L2923:
	movl	-4384(%rbp), %eax
	cmpl	-4448(%rbp), %eax
	jl	.L2940
	jmp	.L2941
.L2922:
	movl	$0, -4384(%rbp)
	jmp	.L2942
.L2955:
	movl	$0, -4388(%rbp)
	jmp	.L2943
.L2954:
	movl	-4384(%rbp), %eax
	movl	%eax, -4416(%rbp)
	movl	$0, -4380(%rbp)
	jmp	.L2944
.L2953:
	movl	-4416(%rbp), %eax
	cmpl	-4448(%rbp), %eax
	jl	.L2945
	movl	-4448(%rbp), %eax
	subl	$1, %eax
	jmp	.L2946
.L2945:
	movl	-4416(%rbp), %eax
.L2946:
	movl	%eax, -4356(%rbp)
	movl	stbi__flip_vertically_on_write(%rip), %eax
	testl	%eax, %eax
	je	.L2947
	movl	-4448(%rbp), %eax
	subl	$1, %eax
	subl	-4356(%rbp), %eax
	jmp	.L2948
.L2947:
	movl	-4356(%rbp), %eax
.L2948:
	imull	-4444(%rbp), %eax
	movl	-4452(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -4352(%rbp)
	movl	-4388(%rbp), %eax
	movl	%eax, -4412(%rbp)
	jmp	.L2949
.L2952:
	movl	-4412(%rbp), %eax
	cmpl	-4444(%rbp), %eax
	jl	.L2950
	movl	-4444(%rbp), %eax
	subl	$1, %eax
	jmp	.L2951
.L2950:
	movl	-4412(%rbp), %eax
.L2951:
	imull	-4452(%rbp), %eax
	movl	%eax, %edx
	movl	-4352(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4348(%rbp)
	movl	-4348(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4296(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4344(%rbp)
	movl	-4348(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4288(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4340(%rbp)
	movl	-4348(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4280(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4336(%rbp)
	movss	-4344(%rbp), %xmm1
	movss	.LC143(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-4340(%rbp), %xmm2
	movss	.LC144(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-4336(%rbp), %xmm2
	movss	.LC145(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	.LC146(%rip), %xmm1
	subss	%xmm1, %xmm0
	movl	-4380(%rbp), %eax
	cltq
	movss	%xmm0, -3248(%rbp,%rax,4)
	movss	-4344(%rbp), %xmm1
	movss	.LC147(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-4340(%rbp), %xmm2
	movss	.LC148(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-4336(%rbp), %xmm2
	movss	.LC10(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movl	-4380(%rbp), %eax
	cltq
	movss	%xmm0, -2224(%rbp,%rax,4)
	movss	-4344(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-4340(%rbp), %xmm2
	movss	.LC149(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	-4336(%rbp), %xmm2
	movss	.LC150(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movl	-4380(%rbp), %eax
	cltq
	movss	%xmm0, -1200(%rbp,%rax,4)
	addl	$1, -4412(%rbp)
	addl	$1, -4380(%rbp)
.L2949:
	movl	-4388(%rbp), %eax
	addl	$7, %eax
	cmpl	%eax, -4412(%rbp)
	jle	.L2952
	addl	$1, -4416(%rbp)
.L2944:
	movl	-4384(%rbp), %eax
	addl	$7, %eax
	cmpl	%eax, -4416(%rbp)
	jle	.L2953
	leaq	-4272(%rbp), %r8
	leaq	-3248(%rbp), %rcx
	leaq	-4420(%rbp), %rdx
	leaq	-4424(%rbp), %rsi
	movq	-4440(%rbp), %rax
	subq	$8, %rsp
	leaq	YAC_HT.10327(%rip), %rdi
	pushq	%rdi
	leaq	YDC_HT.10325(%rip), %rdi
	pushq	%rdi
	movl	-4400(%rbp), %edi
	pushq	%rdi
	movq	%r8, %r9
	movl	$8, %r8d
	movq	%rax, %rdi
	call	stbiw__jpg_processDU
	addq	$32, %rsp
	movl	%eax, -4400(%rbp)
	leaq	-4016(%rbp), %r8
	leaq	-2224(%rbp), %rcx
	leaq	-4420(%rbp), %rdx
	leaq	-4424(%rbp), %rsi
	movq	-4440(%rbp), %rax
	subq	$8, %rsp
	leaq	UVAC_HT.10328(%rip), %rdi
	pushq	%rdi
	leaq	UVDC_HT.10326(%rip), %rdi
	pushq	%rdi
	movl	-4396(%rbp), %edi
	pushq	%rdi
	movq	%r8, %r9
	movl	$8, %r8d
	movq	%rax, %rdi
	call	stbiw__jpg_processDU
	addq	$32, %rsp
	movl	%eax, -4396(%rbp)
	leaq	-4016(%rbp), %r8
	leaq	-1200(%rbp), %rcx
	leaq	-4420(%rbp), %rdx
	leaq	-4424(%rbp), %rsi
	movq	-4440(%rbp), %rax
	subq	$8, %rsp
	leaq	UVAC_HT.10328(%rip), %rdi
	pushq	%rdi
	leaq	UVDC_HT.10326(%rip), %rdi
	pushq	%rdi
	movl	-4392(%rbp), %edi
	pushq	%rdi
	movq	%r8, %r9
	movl	$8, %r8d
	movq	%rax, %rdi
	call	stbiw__jpg_processDU
	addq	$32, %rsp
	movl	%eax, -4392(%rbp)
	addl	$8, -4388(%rbp)
.L2943:
	movl	-4388(%rbp), %eax
	cmpl	-4444(%rbp), %eax
	jl	.L2954
	addl	$8, -4384(%rbp)
.L2942:
	movl	-4384(%rbp), %eax
	cmpl	-4448(%rbp), %eax
	jl	.L2955
.L2941:
	leaq	-4420(%rbp), %rdx
	leaq	-4424(%rbp), %rsi
	movq	-4440(%rbp), %rax
	leaq	fillBits.10355(%rip), %rcx
	movq	%rax, %rdi
	call	stbiw__jpg_writeBits
	movq	-4440(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	stbiw__putc
	movq	-4440(%rbp), %rax
	movl	$217, %esi
	movq	%rax, %rdi
	call	stbiw__putc
	movl	$1, %eax
.L2956:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2957
	call	__stack_chk_fail@PLT
.L2957:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	stbi_write_jpg_core, .-stbi_write_jpg_core
	.globl	stbi_write_jpg_to_func
	.type	stbi_write_jpg_to_func, @function
stbi_write_jpg_to_func:
.LFB764:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movl	%ecx, -120(%rbp)
	movl	%r8d, -124(%rbp)
	movq	%r9, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stbi__start_write_callbacks
	movq	-136(%rbp), %rdi
	movl	-124(%rbp), %ecx
	movl	-120(%rbp), %edx
	movl	-116(%rbp), %esi
	leaq	-96(%rbp), %rax
	movl	16(%rbp), %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbi_write_jpg_core
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2960
	call	__stack_chk_fail@PLT
.L2960:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	stbi_write_jpg_to_func, .-stbi_write_jpg_to_func
	.globl	stbi_write_jpg
	.type	stbi_write_jpg, @function
stbi_write_jpg:
.LFB765:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movl	%edx, -128(%rbp)
	movl	%ecx, -132(%rbp)
	movq	%r8, -144(%rbp)
	movl	%r9d, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-120(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stbi__start_write_file
	testl	%eax, %eax
	je	.L2962
	movl	-136(%rbp), %r8d
	movq	-144(%rbp), %rdi
	movl	-132(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-124(%rbp), %esi
	leaq	-96(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stbi_write_jpg_core
	movl	%eax, -100(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	stbi__end_write_file
	movl	-100(%rbp), %eax
	jmp	.L2964
.L2962:
	movl	$0, %eax
.L2964:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L2965
	call	__stack_chk_fail@PLT
.L2965:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	stbi_write_jpg, .-stbi_write_jpg
	.section	.rodata
.LC152:
	.string	"Error"
	.text
	.globl	Create_TreeNode
	.type	Create_TreeNode, @function
Create_TreeNode:
.LFB766:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2967
	leaq	.LC152(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L2968
.L2967:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 20(%rax)
	movq	-8(%rbp), %rax
.L2968:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	Create_TreeNode, .-Create_TreeNode
	.globl	Find_Set
	.type	Find_Set, @function
Find_Set:
.LFB767:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L2970
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	Find_Set
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L2970:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	Find_Set, .-Find_Set
	.globl	Link
	.type	Link, @function
Link:
.LFB768:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	jle	.L2973
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L2976
.L2973:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	jne	.L2976
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	nop
.L2976:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	Link, .-Link
	.globl	Union
	.type	Union, @function
Union:
.LFB769:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	Find_Set
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	Find_Set
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	Link
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	Union, .-Union
	.section	.rodata
.LC153:
	.string	"~/work/hampster.png"
.LC154:
	.string	"Error: can't read file %s\n"
.LC155:
	.string	"~/work/output.png"
	.text
	.globl	main
	.type	main, @function
main:
.LFB770:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -108(%rbp)
	movl	$0, -104(%rbp)
	leaq	.LC153(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	-116(%rbp), %rcx
	leaq	-124(%rbp), %rdx
	leaq	-120(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	stbi_load
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L2980
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC154(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-1, %eax
	jmp	.L3003
.L2980:
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %eax
	imull	%edx, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L2982
.L2983:
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	leal	(%rdx,%rax), %ecx
	movl	-112(%rbp), %eax
	cltq
	leaq	2(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	movl	%eax, %ecx
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -108(%rbp)
	addl	$3, -112(%rbp)
.L2982:
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %eax
	imull	%eax, %edx
	movl	-116(%rbp), %eax
	imull	%edx, %eax
	cmpl	%eax, -112(%rbp)
	jl	.L2983
	movl	-108(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L2984
.L2985:
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$12, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-112(%rbp), %edx
	movl	%edx, (%rax)
	movl	-120(%rbp), %ebx
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-112(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, 8(%rcx)
	movl	-120(%rbp), %esi
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-112(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %eax
	movl	%eax, 4(%rcx)
	addl	$1, -112(%rbp)
.L2984:
	movl	-112(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L2985
	movl	-108(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L2986
.L2987:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	Create_TreeNode
	movq	%rax, (%rbx)
	addl	$1, -112(%rbp)
.L2986:
	movl	-112(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L2987
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, -96(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L2988
.L2993:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jle	.L2989
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movl	-120(%rbp), %eax
	imull	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$-49, %eax
	jl	.L2989
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movl	-120(%rbp), %eax
	imull	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$49, %eax
	jg	.L2989
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movl	-112(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movl	-120(%rbp), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-96(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, 4(%rax)
	addl	$1, -104(%rbp)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -96(%rbp)
.L2989:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movl	-124(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L2990
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movl	-120(%rbp), %eax
	imull	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$-49, %eax
	jl	.L2990
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movl	-120(%rbp), %eax
	imull	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$49, %eax
	jg	.L2990
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movl	-112(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movl	-120(%rbp), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-96(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, 4(%rax)
	addl	$1, -104(%rbp)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -96(%rbp)
.L2990:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jle	.L2991
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movl	-120(%rbp), %eax
	imull	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%edx, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$-49, %eax
	jl	.L2991
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movl	-120(%rbp), %eax
	imull	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%edx, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$49, %eax
	jg	.L2991
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movl	-112(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movl	-120(%rbp), %eax
	imull	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%eax, %edx
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	subl	$1, %edx
	movl	%edx, 4(%rax)
	addl	$1, -104(%rbp)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -96(%rbp)
.L2991:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %edx
	movl	-120(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L2992
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movl	-120(%rbp), %eax
	imull	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%edx, %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$-49, %eax
	jl	.L2992
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movl	-120(%rbp), %eax
	imull	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%edx, %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$49, %eax
	jg	.L2992
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movl	-112(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movl	-120(%rbp), %eax
	imull	%eax, %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%eax, %edx
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, 4(%rax)
	addl	$1, -104(%rbp)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -96(%rbp)
.L2992:
	addl	$1, -112(%rbp)
.L2988:
	movl	-112(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L2993
	movl	$0, -112(%rbp)
	jmp	.L2994
.L2996:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	Find_Set
	movq	%rax, %rbx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	Find_Set
	cmpq	%rax, %rbx
	je	.L2995
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Union
.L2995:
	addl	$1, -112(%rbp)
.L2994:
	movl	-112(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jl	.L2996
	movl	$0, -112(%rbp)
	jmp	.L2997
.L3002:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	20(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2998
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-112(%rbp), %edx
	movslq	%edx, %rax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$4, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	imull	$250, %eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -125(%rbp)
	movl	$0, -100(%rbp)
	jmp	.L2999
.L3001:
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L3000
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-125(%rbp), %eax
	movb	%al, (%rdx)
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movb	$1, 20(%rax)
.L3000:
	addl	$1, -100(%rbp)
.L2999:
	movl	-100(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L3001
.L2998:
	addl	$1, -112(%rbp)
.L2997:
	movl	-112(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L3002
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %eax
	imull	%edx, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC155(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	-124(%rbp), %edx
	movl	-120(%rbp), %esi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	stbi_write_png
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	stbi_image_free
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stbi_image_free
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stbi_image_free
	movl	$0, %eax
.L3003:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L3004
	call	__stack_chk_fail@PLT
.L3004:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	main, .-main
	.section	.rodata
	.align 32
	.type	__PRETTY_FUNCTION__.6684, @object
	.size	__PRETTY_FUNCTION__.6684, 32
__PRETTY_FUNCTION__.6684:
	.string	"stbi__load_and_postprocess_8bit"
	.align 32
	.type	__PRETTY_FUNCTION__.6695, @object
	.size	__PRETTY_FUNCTION__.6695, 33
__PRETTY_FUNCTION__.6695:
	.string	"stbi__load_and_postprocess_16bit"
	.align 16
	.type	__PRETTY_FUNCTION__.6934, @object
	.size	__PRETTY_FUNCTION__.6934, 21
__PRETTY_FUNCTION__.6934:
	.string	"stbi__convert_format"
	.align 16
	.type	__PRETTY_FUNCTION__.7005, @object
	.size	__PRETTY_FUNCTION__.7005, 23
__PRETTY_FUNCTION__.7005:
	.string	"stbi__convert_format16"
	.align 16
	.type	__PRETTY_FUNCTION__.7238, @object
	.size	__PRETTY_FUNCTION__.7238, 23
__PRETTY_FUNCTION__.7238:
	.string	"stbi__jpeg_huff_decode"
	.type	tag.7682, @object
	.size	tag.7682, 5
tag.7682:
	.string	"JFIF"
	.type	tag.7688, @object
	.size	tag.7688, 6
tag.7688:
	.string	"Adobe"
	.type	rgb.7733, @object
	.size	rgb.7733, 3
rgb.7733:
	.ascii	"RGB"
	.align 16
	.type	__PRETTY_FUNCTION__.8082, @object
	.size	__PRETTY_FUNCTION__.8082, 18
__PRETTY_FUNCTION__.8082:
	.string	"stbi__bit_reverse"
	.align 16
	.type	length_dezigzag.8188, @object
	.size	length_dezigzag.8188, 19
length_dezigzag.8188:
	.string	"\020\021\022"
	.ascii	"\b\007\t\006\n\005\013\004\f\003\r\002\016\001\017"
	.align 8
	.type	png_sig.8297, @object
	.size	png_sig.8297, 8
png_sig.8297:
	.ascii	"\211PNG\r\n\032\n"
	.align 16
	.type	__PRETTY_FUNCTION__.8350, @object
	.size	__PRETTY_FUNCTION__.8350, 27
__PRETTY_FUNCTION__.8350:
	.string	"stbi__create_png_image_raw"
	.align 16
	.type	__PRETTY_FUNCTION__.8517, @object
	.size	__PRETTY_FUNCTION__.8517, 27
__PRETTY_FUNCTION__.8517:
	.string	"stbi__compute_transparency"
	.align 16
	.type	__PRETTY_FUNCTION__.8533, @object
	.size	__PRETTY_FUNCTION__.8533, 29
__PRETTY_FUNCTION__.8533:
	.string	"stbi__compute_transparency16"
	.align 16
	.type	__PRETTY_FUNCTION__.8588, @object
	.size	__PRETTY_FUNCTION__.8588, 16
__PRETTY_FUNCTION__.8588:
	.string	"stbi__de_iphone"
	.data
	.align 16
	.type	invalid_chunk.8649, @object
	.size	invalid_chunk.8649, 25
invalid_chunk.8649:
	.string	"XXXX PNG chunk not known"
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.8713, @object
	.size	__PRETTY_FUNCTION__.8713, 18
__PRETTY_FUNCTION__.8713:
	.string	"stbi__shiftsigned"
	.data
	.align 32
	.type	mul_table.8711, @object
	.size	mul_table.8711, 36
mul_table.8711:
	.long	0
	.long	255
	.long	85
	.long	73
	.long	17
	.long	33
	.long	65
	.long	129
	.long	1
	.align 32
	.type	shift_table.8712, @object
	.size	shift_table.8712, 36
shift_table.8712:
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	2
	.long	4
	.long	6
	.long	0
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.8896, @object
	.size	__PRETTY_FUNCTION__.8896, 15
__PRETTY_FUNCTION__.8896:
	.string	"stbi__tga_load"
	.align 8
	.type	__PRETTY_FUNCTION__.9699, @object
	.size	__PRETTY_FUNCTION__.9699, 15
__PRETTY_FUNCTION__.9699:
	.string	"stbiw__writefv"
	.align 16
	.type	__PRETTY_FUNCTION__.9876, @object
	.size	__PRETTY_FUNCTION__.9876, 22
__PRETTY_FUNCTION__.9876:
	.string	"stbiw__write_run_data"
	.align 16
	.type	__PRETTY_FUNCTION__.9883, @object
	.size	__PRETTY_FUNCTION__.9883, 23
__PRETTY_FUNCTION__.9883:
	.string	"stbiw__write_dump_data"
	.align 8
	.type	__PRETTY_FUNCTION__.9972, @object
	.size	__PRETTY_FUNCTION__.9972, 15
__PRETTY_FUNCTION__.9972:
	.string	"stbiw__sbgrowf"
	.align 16
	.type	__PRETTY_FUNCTION__.10035, @object
	.size	__PRETTY_FUNCTION__.10035, 19
__PRETTY_FUNCTION__.10035:
	.string	"stbi_zlib_compress"
	.data
	.align 32
	.type	lengthc.10008, @object
	.size	lengthc.10008, 60
lengthc.10008:
	.value	3
	.value	4
	.value	5
	.value	6
	.value	7
	.value	8
	.value	9
	.value	10
	.value	11
	.value	13
	.value	15
	.value	17
	.value	19
	.value	23
	.value	27
	.value	31
	.value	35
	.value	43
	.value	51
	.value	59
	.value	67
	.value	83
	.value	99
	.value	115
	.value	131
	.value	163
	.value	195
	.value	227
	.value	258
	.value	259
	.align 16
	.type	lengtheb.10009, @object
	.size	lengtheb.10009, 29
lengtheb.10009:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001\001\001\001\002\002\002\002\003\003\003\003\004\004\004\004\005\005\005\005"
	.align 32
	.type	distc.10010, @object
	.size	distc.10010, 62
distc.10010:
	.value	1
	.value	2
	.value	3
	.value	4
	.value	5
	.value	7
	.value	9
	.value	13
	.value	17
	.value	25
	.value	33
	.value	49
	.value	65
	.value	97
	.value	129
	.value	193
	.value	257
	.value	385
	.value	513
	.value	769
	.value	1025
	.value	1537
	.value	2049
	.value	3073
	.value	4097
	.value	6145
	.value	8193
	.value	12289
	.value	16385
	.value	24577
	.value	-32768
	.align 16
	.type	disteb.10011, @object
	.size	disteb.10011, 30
disteb.10011:
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\001\001\002\002\003\003\004\004\005\005\006\006\007\007\b\b"
	.ascii	"\t\t\n\n\013\013\f\f\r\r"
	.align 32
	.type	crc_table.10071, @object
	.size	crc_table.10071, 1024
crc_table.10071:
	.long	0
	.long	1996959894
	.long	-301047508
	.long	-1727442502
	.long	124634137
	.long	1886057615
	.long	-379345611
	.long	-1637575261
	.long	249268274
	.long	2044508324
	.long	-522852066
	.long	-1747789432
	.long	162941995
	.long	2125561021
	.long	-407360249
	.long	-1866523247
	.long	498536548
	.long	1789927666
	.long	-205950648
	.long	-2067906082
	.long	450548861
	.long	1843258603
	.long	-187386543
	.long	-2083289657
	.long	325883990
	.long	1684777152
	.long	-43845254
	.long	-1973040660
	.long	335633487
	.long	1661365465
	.long	-99664541
	.long	-1928851979
	.long	997073096
	.long	1281953886
	.long	-715111964
	.long	-1570279054
	.long	1006888145
	.long	1258607687
	.long	-770865667
	.long	-1526024853
	.long	901097722
	.long	1119000684
	.long	-608450090
	.long	-1396901568
	.long	853044451
	.long	1172266101
	.long	-589951537
	.long	-1412350631
	.long	651767980
	.long	1373503546
	.long	-925412992
	.long	-1076862698
	.long	565507253
	.long	1454621731
	.long	-809855591
	.long	-1195530993
	.long	671266974
	.long	1594198024
	.long	-972236366
	.long	-1324619484
	.long	795835527
	.long	1483230225
	.long	-1050600021
	.long	-1234817731
	.long	1994146192
	.long	31158534
	.long	-1731059524
	.long	-271249366
	.long	1907459465
	.long	112637215
	.long	-1614814043
	.long	-390540237
	.long	2013776290
	.long	251722036
	.long	-1777751922
	.long	-519137256
	.long	2137656763
	.long	141376813
	.long	-1855689577
	.long	-429695999
	.long	1802195444
	.long	476864866
	.long	-2056965928
	.long	-228458418
	.long	1812370925
	.long	453092731
	.long	-2113342271
	.long	-183516073
	.long	1706088902
	.long	314042704
	.long	-1950435094
	.long	-54949764
	.long	1658658271
	.long	366619977
	.long	-1932296973
	.long	-69972891
	.long	1303535960
	.long	984961486
	.long	-1547960204
	.long	-725929758
	.long	1256170817
	.long	1037604311
	.long	-1529756563
	.long	-740887301
	.long	1131014506
	.long	879679996
	.long	-1385723834
	.long	-631195440
	.long	1141124467
	.long	855842277
	.long	-1442165665
	.long	-586318647
	.long	1342533948
	.long	654459306
	.long	-1106571248
	.long	-921952122
	.long	1466479909
	.long	544179635
	.long	-1184443383
	.long	-832445281
	.long	1591671054
	.long	702138776
	.long	-1328506846
	.long	-942167884
	.long	1504918807
	.long	783551873
	.long	-1212326853
	.long	-1061524307
	.long	-306674912
	.long	-1698712650
	.long	62317068
	.long	1957810842
	.long	-355121351
	.long	-1647151185
	.long	81470997
	.long	1943803523
	.long	-480048366
	.long	-1805370492
	.long	225274430
	.long	2053790376
	.long	-468791541
	.long	-1828061283
	.long	167816743
	.long	2097651377
	.long	-267414716
	.long	-2029476910
	.long	503444072
	.long	1762050814
	.long	-144550051
	.long	-2140837941
	.long	426522225
	.long	1852507879
	.long	-19653770
	.long	-1982649376
	.long	282753626
	.long	1742555852
	.long	-105259153
	.long	-1900089351
	.long	397917763
	.long	1622183637
	.long	-690576408
	.long	-1580100738
	.long	953729732
	.long	1340076626
	.long	-776247311
	.long	-1497606297
	.long	1068828381
	.long	1219638859
	.long	-670225446
	.long	-1358292148
	.long	906185462
	.long	1090812512
	.long	-547295293
	.long	-1469587627
	.long	829329135
	.long	1181335161
	.long	-882789492
	.long	-1134132454
	.long	628085408
	.long	1382605366
	.long	-871598187
	.long	-1156888829
	.long	570562233
	.long	1426400815
	.long	-977650754
	.long	-1296233688
	.long	733239954
	.long	1555261956
	.long	-1026031705
	.long	-1244606671
	.long	752459403
	.long	1541320221
	.long	-1687895376
	.long	-328994266
	.long	1969922972
	.long	40735498
	.long	-1677130071
	.long	-351390145
	.long	1913087877
	.long	83908371
	.long	-1782625662
	.long	-491226604
	.long	2075208622
	.long	213261112
	.long	-1831694693
	.long	-438977011
	.long	2094854071
	.long	198958881
	.long	-2032938284
	.long	-237706686
	.long	1759359992
	.long	534414190
	.long	-2118248755
	.long	-155638181
	.long	1873836001
	.long	414664567
	.long	-2012718362
	.long	-15766928
	.long	1711684554
	.long	285281116
	.long	-1889165569
	.long	-127750551
	.long	1634467795
	.long	376229701
	.long	-1609899400
	.long	-686959890
	.long	1308918612
	.long	956543938
	.long	-1486412191
	.long	-799009033
	.long	1231636301
	.long	1047427035
	.long	-1362007478
	.long	-640263460
	.long	1088359270
	.long	936918000
	.long	-1447252397
	.long	-558129467
	.long	1202900863
	.long	817233897
	.long	-1111625188
	.long	-893730166
	.long	1404277552
	.long	615818150
	.long	-1160759803
	.long	-841546093
	.long	1423857449
	.long	601450431
	.long	-1285129682
	.long	-1000256840
	.long	1567103746
	.long	711928724
	.long	-1274298825
	.long	-1022587231
	.long	1510334235
	.long	755167117
	.align 16
	.type	mapping.10101, @object
	.size	mapping.10101, 20
mapping.10101:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.align 16
	.type	firstmap.10102, @object
	.size	firstmap.10102, 20
firstmap.10102:
	.long	0
	.long	1
	.long	0
	.long	5
	.long	6
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.10175, @object
	.size	__PRETTY_FUNCTION__.10175, 22
__PRETTY_FUNCTION__.10175:
	.string	"stbi_write_png_to_mem"
	.align 32
	.type	YQT.10329, @object
	.size	YQT.10329, 256
YQT.10329:
	.long	16
	.long	11
	.long	10
	.long	16
	.long	24
	.long	40
	.long	51
	.long	61
	.long	12
	.long	12
	.long	14
	.long	19
	.long	26
	.long	58
	.long	60
	.long	55
	.long	14
	.long	13
	.long	16
	.long	24
	.long	40
	.long	57
	.long	69
	.long	56
	.long	14
	.long	17
	.long	22
	.long	29
	.long	51
	.long	87
	.long	80
	.long	62
	.long	18
	.long	22
	.long	37
	.long	56
	.long	68
	.long	109
	.long	103
	.long	77
	.long	24
	.long	35
	.long	55
	.long	64
	.long	81
	.long	104
	.long	113
	.long	92
	.long	49
	.long	64
	.long	78
	.long	87
	.long	103
	.long	121
	.long	120
	.long	101
	.long	72
	.long	92
	.long	95
	.long	98
	.long	112
	.long	100
	.long	103
	.long	99
	.align 32
	.type	UVQT.10330, @object
	.size	UVQT.10330, 256
UVQT.10330:
	.long	17
	.long	18
	.long	24
	.long	47
	.long	99
	.long	99
	.long	99
	.long	99
	.long	18
	.long	21
	.long	26
	.long	66
	.long	99
	.long	99
	.long	99
	.long	99
	.long	24
	.long	26
	.long	56
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	47
	.long	66
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.long	99
	.align 32
	.type	aasf.10331, @object
	.size	aasf.10331, 32
aasf.10331:
	.long	1077216499
	.long	1081808063
	.long	1080853343
	.long	1079302960
	.long	1077216499
	.long	1074674138
	.long	1069805333
	.long	1061668290
	.align 16
	.type	head0.10352, @object
	.size	head0.10352, 25
head0.10352:
	.string	"\377\330\377\340"
	.string	"\020JFIF"
	.string	"\001\001"
	.string	""
	.string	"\001"
	.string	"\001"
	.string	""
	.string	"\377\333"
	.string	"\204"
	.align 16
	.type	std_dc_luminance_nrcodes.10317, @object
	.size	std_dc_luminance_nrcodes.10317, 17
std_dc_luminance_nrcodes.10317:
	.string	""
	.string	""
	.string	"\001\005\001\001\001\001\001\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.align 8
	.type	std_dc_luminance_values.10318, @object
	.size	std_dc_luminance_values.10318, 12
std_dc_luminance_values.10318:
	.string	""
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013"
	.align 16
	.type	std_ac_luminance_nrcodes.10319, @object
	.size	std_ac_luminance_nrcodes.10319, 17
std_ac_luminance_nrcodes.10319:
	.string	""
	.string	""
	.string	"\002\001\003\003\002\004\003\005\005\004\004"
	.string	""
	.ascii	"\001}"
	.align 32
	.type	std_ac_luminance_values.10320, @object
	.size	std_ac_luminance_values.10320, 162
std_ac_luminance_values.10320:
	.string	"\001\002\003"
	.ascii	"\004\021\005\022!1A\006\023Qa\007\"q\0242\201\221\241\b#B\261"
	.ascii	"\301\025R\321\360$3br\202\t\n\026\027\030\031\032%&'()*45678"
	.ascii	"9:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\203\204\205\206\207\210\211"
	.ascii	"\212\222\223\224\225\226\227\230\231\232\242\243\244\245\246"
	.ascii	"\247\250\251\252\262\263\264\265\266\267\270\271\272\302\303"
	.ascii	"\304\305\306\307\310\311\312\322\323\324\325\326\327\330\331"
	.ascii	"\332\341\342\343\344\345\346\347\350\351\352\361\362\363\364"
	.ascii	"\365\366\367\370\371\372"
	.align 16
	.type	std_dc_chrominance_nrcodes.10321, @object
	.size	std_dc_chrominance_nrcodes.10321, 17
std_dc_chrominance_nrcodes.10321:
	.string	""
	.string	""
	.string	"\003\001\001\001\001\001\001\001\001\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.align 8
	.type	std_dc_chrominance_values.10322, @object
	.size	std_dc_chrominance_values.10322, 12
std_dc_chrominance_values.10322:
	.string	""
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013"
	.align 16
	.type	std_ac_chrominance_nrcodes.10323, @object
	.size	std_ac_chrominance_nrcodes.10323, 17
std_ac_chrominance_nrcodes.10323:
	.string	""
	.string	""
	.string	"\002\001\002\004\004\003\004\007\005\004\004"
	.ascii	"\001\002w"
	.align 32
	.type	std_ac_chrominance_values.10324, @object
	.size	std_ac_chrominance_values.10324, 162
std_ac_chrominance_values.10324:
	.string	""
	.ascii	"\001\002\003\021\004\005!1\006\022AQ\007aq\023\"2\201\b\024B"
	.ascii	"\221\241\261\301\t#3R\360\025br\321\n\026$4\341%\361\027\030"
	.ascii	"\031\032&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\202\203\204"
	.ascii	"\205\206\207\210\211\212\222\223\224\225\226\227\230\231\232"
	.ascii	"\242\243\244\245\246\247\250\251\252\262\263\264\265\266\267"
	.ascii	"\270\271\272\302\303\304\305\306\307\310\311\312\322\323\324"
	.ascii	"\325\326\327\330\331\332\342\343\344\345\346\347\350\351\352"
	.ascii	"\362\363\364\365\366\367\370\371\372"
	.align 8
	.type	head2.10353, @object
	.size	head2.10353, 14
head2.10353:
	.string	"\377\332"
	.string	"\f\003\001"
	.string	"\002\021\003\021"
	.string	"?"
	.align 32
	.type	YDC_HT.10325, @object
	.size	YDC_HT.10325, 1024
YDC_HT.10325:
	.value	0
	.value	2
	.value	2
	.value	3
	.value	3
	.value	3
	.value	4
	.value	3
	.value	5
	.value	3
	.value	6
	.value	3
	.value	14
	.value	4
	.value	30
	.value	5
	.value	62
	.value	6
	.value	126
	.value	7
	.value	254
	.value	8
	.value	510
	.value	9
	.zero	976
	.align 32
	.type	YAC_HT.10327, @object
	.size	YAC_HT.10327, 1024
YAC_HT.10327:
	.value	10
	.value	4
	.value	0
	.value	2
	.value	1
	.value	2
	.value	4
	.value	3
	.value	11
	.value	4
	.value	26
	.value	5
	.value	120
	.value	7
	.value	248
	.value	8
	.value	1014
	.value	10
	.value	-126
	.value	16
	.value	-125
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	12
	.value	4
	.value	27
	.value	5
	.value	121
	.value	7
	.value	502
	.value	9
	.value	2038
	.value	11
	.value	-124
	.value	16
	.value	-123
	.value	16
	.value	-122
	.value	16
	.value	-121
	.value	16
	.value	-120
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	28
	.value	5
	.value	249
	.value	8
	.value	1015
	.value	10
	.value	4084
	.value	12
	.value	-119
	.value	16
	.value	-118
	.value	16
	.value	-117
	.value	16
	.value	-116
	.value	16
	.value	-115
	.value	16
	.value	-114
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	58
	.value	6
	.value	503
	.value	9
	.value	4085
	.value	12
	.value	-113
	.value	16
	.value	-112
	.value	16
	.value	-111
	.value	16
	.value	-110
	.value	16
	.value	-109
	.value	16
	.value	-108
	.value	16
	.value	-107
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	59
	.value	6
	.value	1016
	.value	10
	.value	-106
	.value	16
	.value	-105
	.value	16
	.value	-104
	.value	16
	.value	-103
	.value	16
	.value	-102
	.value	16
	.value	-101
	.value	16
	.value	-100
	.value	16
	.value	-99
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	122
	.value	7
	.value	2039
	.value	11
	.value	-98
	.value	16
	.value	-97
	.value	16
	.value	-96
	.value	16
	.value	-95
	.value	16
	.value	-94
	.value	16
	.value	-93
	.value	16
	.value	-92
	.value	16
	.value	-91
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	123
	.value	7
	.value	4086
	.value	12
	.value	-90
	.value	16
	.value	-89
	.value	16
	.value	-88
	.value	16
	.value	-87
	.value	16
	.value	-86
	.value	16
	.value	-85
	.value	16
	.value	-84
	.value	16
	.value	-83
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	250
	.value	8
	.value	4087
	.value	12
	.value	-82
	.value	16
	.value	-81
	.value	16
	.value	-80
	.value	16
	.value	-79
	.value	16
	.value	-78
	.value	16
	.value	-77
	.value	16
	.value	-76
	.value	16
	.value	-75
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	504
	.value	9
	.value	32704
	.value	15
	.value	-74
	.value	16
	.value	-73
	.value	16
	.value	-72
	.value	16
	.value	-71
	.value	16
	.value	-70
	.value	16
	.value	-69
	.value	16
	.value	-68
	.value	16
	.value	-67
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	505
	.value	9
	.value	-66
	.value	16
	.value	-65
	.value	16
	.value	-64
	.value	16
	.value	-63
	.value	16
	.value	-62
	.value	16
	.value	-61
	.value	16
	.value	-60
	.value	16
	.value	-59
	.value	16
	.value	-58
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	506
	.value	9
	.value	-57
	.value	16
	.value	-56
	.value	16
	.value	-55
	.value	16
	.value	-54
	.value	16
	.value	-53
	.value	16
	.value	-52
	.value	16
	.value	-51
	.value	16
	.value	-50
	.value	16
	.value	-49
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	1017
	.value	10
	.value	-48
	.value	16
	.value	-47
	.value	16
	.value	-46
	.value	16
	.value	-45
	.value	16
	.value	-44
	.value	16
	.value	-43
	.value	16
	.value	-42
	.value	16
	.value	-41
	.value	16
	.value	-40
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	1018
	.value	10
	.value	-39
	.value	16
	.value	-38
	.value	16
	.value	-37
	.value	16
	.value	-36
	.value	16
	.value	-35
	.value	16
	.value	-34
	.value	16
	.value	-33
	.value	16
	.value	-32
	.value	16
	.value	-31
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	2040
	.value	11
	.value	-30
	.value	16
	.value	-29
	.value	16
	.value	-28
	.value	16
	.value	-27
	.value	16
	.value	-26
	.value	16
	.value	-25
	.value	16
	.value	-24
	.value	16
	.value	-23
	.value	16
	.value	-22
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	-21
	.value	16
	.value	-20
	.value	16
	.value	-19
	.value	16
	.value	-18
	.value	16
	.value	-17
	.value	16
	.value	-16
	.value	16
	.value	-15
	.value	16
	.value	-14
	.value	16
	.value	-13
	.value	16
	.value	-12
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	2041
	.value	11
	.value	-11
	.value	16
	.value	-10
	.value	16
	.value	-9
	.value	16
	.value	-8
	.value	16
	.value	-7
	.value	16
	.value	-6
	.value	16
	.value	-5
	.value	16
	.value	-4
	.value	16
	.value	-3
	.value	16
	.value	-2
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.align 32
	.type	UVDC_HT.10326, @object
	.size	UVDC_HT.10326, 1024
UVDC_HT.10326:
	.value	0
	.value	2
	.value	1
	.value	2
	.value	2
	.value	2
	.value	6
	.value	3
	.value	14
	.value	4
	.value	30
	.value	5
	.value	62
	.value	6
	.value	126
	.value	7
	.value	254
	.value	8
	.value	510
	.value	9
	.value	1022
	.value	10
	.value	2046
	.value	11
	.zero	976
	.align 32
	.type	UVAC_HT.10328, @object
	.size	UVAC_HT.10328, 1024
UVAC_HT.10328:
	.value	0
	.value	2
	.value	1
	.value	2
	.value	4
	.value	3
	.value	10
	.value	4
	.value	24
	.value	5
	.value	25
	.value	5
	.value	56
	.value	6
	.value	120
	.value	7
	.value	500
	.value	9
	.value	1014
	.value	10
	.value	4084
	.value	12
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	11
	.value	4
	.value	57
	.value	6
	.value	246
	.value	8
	.value	501
	.value	9
	.value	2038
	.value	11
	.value	4085
	.value	12
	.value	-120
	.value	16
	.value	-119
	.value	16
	.value	-118
	.value	16
	.value	-117
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	26
	.value	5
	.value	247
	.value	8
	.value	1015
	.value	10
	.value	4086
	.value	12
	.value	32706
	.value	15
	.value	-116
	.value	16
	.value	-115
	.value	16
	.value	-114
	.value	16
	.value	-113
	.value	16
	.value	-112
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	27
	.value	5
	.value	248
	.value	8
	.value	1016
	.value	10
	.value	4087
	.value	12
	.value	-111
	.value	16
	.value	-110
	.value	16
	.value	-109
	.value	16
	.value	-108
	.value	16
	.value	-107
	.value	16
	.value	-106
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	58
	.value	6
	.value	502
	.value	9
	.value	-105
	.value	16
	.value	-104
	.value	16
	.value	-103
	.value	16
	.value	-102
	.value	16
	.value	-101
	.value	16
	.value	-100
	.value	16
	.value	-99
	.value	16
	.value	-98
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	59
	.value	6
	.value	1017
	.value	10
	.value	-97
	.value	16
	.value	-96
	.value	16
	.value	-95
	.value	16
	.value	-94
	.value	16
	.value	-93
	.value	16
	.value	-92
	.value	16
	.value	-91
	.value	16
	.value	-90
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	121
	.value	7
	.value	2039
	.value	11
	.value	-89
	.value	16
	.value	-88
	.value	16
	.value	-87
	.value	16
	.value	-86
	.value	16
	.value	-85
	.value	16
	.value	-84
	.value	16
	.value	-83
	.value	16
	.value	-82
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	122
	.value	7
	.value	2040
	.value	11
	.value	-81
	.value	16
	.value	-80
	.value	16
	.value	-79
	.value	16
	.value	-78
	.value	16
	.value	-77
	.value	16
	.value	-76
	.value	16
	.value	-75
	.value	16
	.value	-74
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	249
	.value	8
	.value	-73
	.value	16
	.value	-72
	.value	16
	.value	-71
	.value	16
	.value	-70
	.value	16
	.value	-69
	.value	16
	.value	-68
	.value	16
	.value	-67
	.value	16
	.value	-66
	.value	16
	.value	-65
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	503
	.value	9
	.value	-64
	.value	16
	.value	-63
	.value	16
	.value	-62
	.value	16
	.value	-61
	.value	16
	.value	-60
	.value	16
	.value	-59
	.value	16
	.value	-58
	.value	16
	.value	-57
	.value	16
	.value	-56
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	504
	.value	9
	.value	-55
	.value	16
	.value	-54
	.value	16
	.value	-53
	.value	16
	.value	-52
	.value	16
	.value	-51
	.value	16
	.value	-50
	.value	16
	.value	-49
	.value	16
	.value	-48
	.value	16
	.value	-47
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	505
	.value	9
	.value	-46
	.value	16
	.value	-45
	.value	16
	.value	-44
	.value	16
	.value	-43
	.value	16
	.value	-42
	.value	16
	.value	-41
	.value	16
	.value	-40
	.value	16
	.value	-39
	.value	16
	.value	-38
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	506
	.value	9
	.value	-37
	.value	16
	.value	-36
	.value	16
	.value	-35
	.value	16
	.value	-34
	.value	16
	.value	-33
	.value	16
	.value	-32
	.value	16
	.value	-31
	.value	16
	.value	-30
	.value	16
	.value	-29
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	2041
	.value	11
	.value	-28
	.value	16
	.value	-27
	.value	16
	.value	-26
	.value	16
	.value	-25
	.value	16
	.value	-24
	.value	16
	.value	-23
	.value	16
	.value	-22
	.value	16
	.value	-21
	.value	16
	.value	-20
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	16352
	.value	14
	.value	-19
	.value	16
	.value	-18
	.value	16
	.value	-17
	.value	16
	.value	-16
	.value	16
	.value	-15
	.value	16
	.value	-14
	.value	16
	.value	-13
	.value	16
	.value	-12
	.value	16
	.value	-11
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	1018
	.value	10
	.value	32707
	.value	15
	.value	-10
	.value	16
	.value	-9
	.value	16
	.value	-8
	.value	16
	.value	-7
	.value	16
	.value	-6
	.value	16
	.value	-5
	.value	16
	.value	-4
	.value	16
	.value	-3
	.value	16
	.value	-2
	.value	16
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.value	0
	.align 2
	.type	fillBits.10355, @object
	.size	fillBits.10355, 4
fillBits.10355:
	.value	127
	.value	7
	.align 4
.LC6:
	.long	1065353216
	.align 4
.LC9:
	.long	1132396544
	.align 4
.LC10:
	.long	1056964608
	.align 4
.LC100:
	.long	1199570688
	.align 8
.LC114:
	.long	0
	.long	1072693248
	.align 4
.LC115:
	.long	1077936128
	.align 4
.LC131:
	.long	172994847
	.align 4
.LC132:
	.long	1132462080
	.align 4
.LC139:
	.long	1060439283
	.align 4
.LC140:
	.long	1053028117
	.align 4
.LC141:
	.long	1057655764
	.align 4
.LC142:
	.long	1067924853
	.align 4
.LC143:
	.long	1050220167
	.align 4
.LC144:
	.long	1058424226
	.align 4
.LC145:
	.long	1038710997
	.align 4
.LC146:
	.long	1124073472
	.align 4
.LC147:
	.long	3190606382
	.align 4
.LC148:
	.long	1051302633
	.align 4
.LC149:
	.long	1054236297
	.align 4
.LC150:
	.long	1034323419
	.align 4
.LC151:
	.long	1048576000
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
