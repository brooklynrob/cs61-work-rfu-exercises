	.file	"f02.c"
	.text
	.globl	sum
	.type	sum, @function
sum:
.LFB0:
	imull	$1000, %edi, %eax
	imull	$10000, %esi, %esi
	addl	%esi, %eax
	imull	$100000, %edx, %edx
	addl	%edx, %eax
	ret
.LFE0:
	.size	sum, .-sum
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
