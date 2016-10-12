	.file	"f25.c"
	.text
	.globl	func5
	.type	func5, @function
func5:
.LFB0:
	addq	%rsi, %rdi
	addq	%rdi, %rdx
	addq	%rdx, %rcx
	leaq	(%rcx,%r8), %rax
	ret
.LFE0:
	.size	func5, .-func5
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
