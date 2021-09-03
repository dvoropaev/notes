#include <sys/syscall.h>

.data
hellostr:
        .string "Hello, mister "
.text
.global _start
_start:
        movq $__NR_read, %rax
        movq $0, %rdi
        movq $name, %rsi
        movq $100, %rdx
	syscall

        movq $__NR_write, %rax
        movq $1, %rdi
        movq $hellostr, %rsi
        movq $14, %rdx
        syscall
	
	movq $__NR_write, %rax
        movq $1, %rdi
	movq $name, %rsi
	movq $100, %rdx
	syscall

	movq $__NR_exit, %rax
	movq $0, %rdi
	syscall

.bss
name:
	.space 100

