	.file	"f24.c"
	.text
	.globl	func4
	.type	func4, @function
func4:
.LFB0:
	addq	%rsi, %rdi
	addq	%rdi, %rdx
	leaq	(%rdx,%rcx), %rax
	ret
.LFE0:
	.size	func4, .-func4
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
