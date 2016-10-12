	.file	"f21.c"
	.text
	.globl	func1
	.type	func1, @function
func1:
.LFB0:
	movq	%rdi, %rax
	ret
.LFE0:
	.size	func1, .-func1
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
