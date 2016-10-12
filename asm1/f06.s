	.file	"f06.c"
	.text
	.globl	or
	.type	or, @function
or:
.LFB0:
	movl	%edi, %eax
	orl	%esi, %eax
	ret
.LFE0:
	.size	or, .-or
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
