	.file	"f27.c"
	.text
	.globl	func7
	.type	func7, @function
func7:
.LFB0:
	addq	%rsi, %rdi
	addq	%rdi, %rdx
	addq	%rdx, %rcx
	addq	%rcx, %r8
	addq	%r8, %r9
	movq	%r9, %rax
	addq	8(%rsp), %rax
	ret
.LFE0:
	.size	func7, .-func7
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
