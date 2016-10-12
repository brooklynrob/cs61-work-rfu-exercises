	.file	"f22.c"
	.text
	.globl	func2
	.type	func2, @function
func2:
.LFB0:
	leaq	(%rdi,%rsi), %rax
	ret
.LFE0:
	.size	func2, .-func2
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
