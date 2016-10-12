	.file	"f23.c"
	.text
	.globl	func3
	.type	func3, @function
func3:
.LFB0:
	addq	%rsi, %rdi
	leaq	(%rdi,%rdx), %rax
	ret
.LFE0:
	.size	func3, .-func3
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
