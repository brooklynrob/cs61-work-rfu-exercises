	.file	"f09.c"
	.text
	.globl	mul
	.type	mul, @function
mul:
.LFB0:
	movl	%edi, %eax
	imull	%esi, %eax
	ret
.LFE0:
	.size	mul, .-mul
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
