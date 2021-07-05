.data
hellostr:
        .string "Hello, mister "
.text
.global main
.type main, @function
main:
        movq $0, %rax
        movq $0, %rdi
        movq $name, %rsi
        movq $100, %rdx
	syscall

        movq $1, %rax
        movq $1, %rdi
        movq $hellostr, %rsi
        movq $14, %rdx
        syscall
	
	movq $1, %rax
        movq $1, %rdi
	movq $name, %rsi
	movq $100, %rdx
	syscall

.bss
name:
	.space 100
