	.file	"top_k.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	main
	.type	main, @function
main:
.LFB1021:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$23, -48(%rbp)
	movl	$123, -44(%rbp)
	movl	$45, -40(%rbp)
	movl	$33, -36(%rbp)
	movl	$18, -32(%rbp)
	movl	$12, -28(%rbp)
	movl	$43, -24(%rbp)
	movl	$21, -20(%rbp)
	movl	$5, -16(%rbp)
	movl	$86, -12(%rbp)
	movl	$6, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	movabsq	$2287828610704211968, %rdx
	cmpq	%rdx, %rax
	ja	.L2
	salq	$2, %rax
	jmp	.L3
.L2:
	movq	$-1, %rax
.L3:
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -56(%rbp)
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	_Z5top_kPiiS_i
	movl	$0, -64(%rbp)
.L5:
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.L4
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	addl	$1, -64(%rbp)
	jmp	.L5
.L4:
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEPFRSoS_E
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1021:
	.size	main, .-main
	.section	.rodata
.LC0:
	.string	"top_k.cpp"
.LC1:
	.string	"heap!=NULL"
	.text
	.globl	_Z15adjust_max_heapPiii
	.type	_Z15adjust_max_heapPiii, @function
_Z15adjust_max_heapPiii:
.LFB1022:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L9
	movl	$_ZZ15adjust_max_heapPiiiE19__PRETTY_FUNCTION__, %ecx
	movl	$32, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L9:
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L14:
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.L10
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.L11
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L11
	addl	$1, -8(%rbp)
.L11:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	jle	.L15
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L14
.L15:
	nop
.L10:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1022:
	.size	_Z15adjust_max_heapPiii, .-_Z15adjust_max_heapPiii
	.globl	_Z14build_max_heapPii
	.type	_Z14build_max_heapPii, @function
_Z14build_max_heapPii:
.LFB1023:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L17
	movl	$_ZZ14build_max_heapPiiE19__PRETTY_FUNCTION__, %ecx
	movl	$49, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L17:
	movl	$0, -4(%rbp)
.L19:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L20
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z15adjust_max_heapPiii
	addl	$1, -4(%rbp)
	jmp	.L19
.L20:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1023:
	.size	_Z14build_max_heapPii, .-_Z14build_max_heapPii
	.section	.rodata
.LC2:
	.string	"arr!=NULL&&out!=NULL"
	.text
	.globl	_Z5top_kPiiS_i
	.type	_Z5top_kPiiS_i, @function
_Z5top_kPiiS_i:
.LFB1024:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L22
	cmpq	$0, -40(%rbp)
	jne	.L23
.L22:
	movl	$_ZZ5top_kPiiS_iE19__PRETTY_FUNCTION__, %ecx
	movl	$57, %edx
	movl	$.LC0, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L23:
	movl	$0, -8(%rbp)
.L25:
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.L24
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -8(%rbp)
	jmp	.L25
.L24:
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z14build_max_heapPii
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.L28:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L29
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L27
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	-32(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z15adjust_max_heapPiii
.L27:
	addl	$1, -4(%rbp)
	jmp	.L28
.L29:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1024:
	.size	_Z5top_kPiiS_i, .-_Z5top_kPiiS_i
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1031:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L32
	cmpl	$65535, -8(%rbp)
	jne	.L32
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L32:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1031:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB1032:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1032:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata
	.align 32
	.type	_ZZ15adjust_max_heapPiiiE19__PRETTY_FUNCTION__, @object
	.size	_ZZ15adjust_max_heapPiiiE19__PRETTY_FUNCTION__, 37
_ZZ15adjust_max_heapPiiiE19__PRETTY_FUNCTION__:
	.string	"void adjust_max_heap(int*, int, int)"
	.align 16
	.type	_ZZ14build_max_heapPiiE19__PRETTY_FUNCTION__, @object
	.size	_ZZ14build_max_heapPiiE19__PRETTY_FUNCTION__, 31
_ZZ14build_max_heapPiiE19__PRETTY_FUNCTION__:
	.string	"void build_max_heap(int*, int)"
	.align 32
	.type	_ZZ5top_kPiiS_iE19__PRETTY_FUNCTION__, @object
	.size	_ZZ5top_kPiiS_iE19__PRETTY_FUNCTION__, 33
_ZZ5top_kPiiS_iE19__PRETTY_FUNCTION__:
	.string	"void top_k(int*, int, int*, int)"
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
