	.file	"f08.c"
	.text
	.globl	not
	.type	not, @function
not:
.LFB0:
	movl	%edi, %eax
	notl	%eax
	ret
.LFE0:
	.size	not, .-not
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
