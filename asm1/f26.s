	.file	"f26.c"
	.text
	.globl	func6
	.type	func6, @function
func6:
.LFB0:
	addq	%rsi, %rdi
	addq	%rdi, %rdx
	addq	%rdx, %rcx
	addq	%rcx, %r8
	leaq	(%r8,%r9), %rax
	ret
.LFE0:
	.size	func6, .-func6
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
