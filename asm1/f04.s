	.file	"f04.c"
	.text
	.globl	sub
	.type	sub, @function
sub:
.LFB0:
	imull	$1000, %edi, %eax
	imull	%edx, %esi
	subl	%esi, %eax
	ret
.LFE0:
	.size	sub, .-sub
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
