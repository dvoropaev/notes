
.data
str1:
        .string "Start"
str2:
	.string "End"
.text
.global _start
_start:

        movq $1, %rax
        movq $1, %rdi
        movq $str1, %rsi
        movq $6, %rdx
        syscall

	movq $1000, timer
	movq $timer, %rax
	movq $35, %rdi
	syscall
	
	movq $1, %rax
        movq $1, %rdi
	movq $str2, %rsi
	movq $4, %rdx
	syscall

	movq $60, %rax
	movq $0, %rdi
	syscall

.bss
timer:
	.space 100

