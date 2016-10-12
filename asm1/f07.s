	.file	"f07.c"
	.text
	.globl	xor
	.type	xor, @function
xor:
.LFB0:
	movl	%edi, %eax
	xorl	%esi, %eax
	ret
.LFE0:
	.size	xor, .-xor
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
