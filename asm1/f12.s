	.file	"f12.c"
	.text
	.globl	sum
	.type	sum, @function
sum:
.LFB0:
	leal	(%rdi,%rsi), %eax
	ret
.LFE0:
	.size	sum, .-sum
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
