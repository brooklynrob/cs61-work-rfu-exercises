	.file	"f03.c"
	.text
	.globl	sub
	.type	sub, @function
sub:
.LFB0:
	imull	$1000, %edi, %eax
	imull	$-10000, %esi, %esi
	addl	%esi, %eax
	imull	$-100000, %edx, %edx
	addl	%edx, %eax
	ret
.LFE0:
	.size	sub, .-sub
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
