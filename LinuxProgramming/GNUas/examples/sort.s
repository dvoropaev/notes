.text
.global main
.type main, @function

main:	
	movq $sortstring, %rsi
        movq $10000, %rdx
        movq $0, %rax
        movq $0, %rdi
        syscall

        movq $sortstring, %rax
loop1:
        movb (%rax), %bl
        subb $10, %bl
        jz endsort
        movq %rax, %rcx
loop2:
        inc %rcx
        movb (%rcx), %dl
        subb $10, %dl
        jnz swapping
        inc %rax
        jmp loop1
swapping:
        movb (%rax), %bl
        movb (%rcx), %dl
        cmpb %bl, %dl
        jg loop2
        movb %bl, (%rcx)
        movb %dl, (%rax)
        jmp loop2

endsort:
	movq $sortstring, %rsi
        movq $10000, %rdx
        movq $1, %rax
        movq $1, %rdi
        syscall

.bss
sortstring:
	.space 1000000000
