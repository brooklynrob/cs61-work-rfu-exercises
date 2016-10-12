	.file	"f05.c"
	.text
	.globl	sub
	.type	sub, @function
sub:
.LFB0:
	movl	%edx, %ecx
	movl	$1000, %eax
	cltd
	idivl	%edi
	imull	%esi, %ecx
	subl	%ecx, %eax
	ret
.LFE0:
	.size	sub, .-sub
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
