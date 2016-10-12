	.file	"f11.c"
	.text
	.globl	sum
	.type	sum, @function
sum:
.LFB0:
	imulq	$1000, %rdi, %rax
	imulq	$10000, %rsi, %rsi
	addq	%rsi, %rax
	imulq	$100000, %rdx, %rdx
	addq	%rdx, %rax
	ret
.LFE0:
	.size	sum, .-sum
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
