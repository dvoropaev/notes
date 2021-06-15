/* GNU Assembler Hello World 64 bit edition */
/* Compile: gcc hello_world_64_with_main.s -o hello_world_64_with_main.bin 
 * Run: ./hello_world_64_with_main.bin
 */
/*
 * Начало сегмента данных
 */
.data
 
/*
 * Строка, которую будем печатать. Точнее метка указывающая
 * на ее начало.
 */
hello_str:
        /*
         * А это сами данные строки.
         */
        .string "Hello, 64-bit world!\n"
 
        /*
         * Вычисление длины строки и помещение ее(длины) в символ
         * hello_str_length. -1 нужен, чтобы не выводить нулевой
         * символ, который вставляет .string
         */
        .set hello_str_length, . - hello_str - 1

/*
 * Начало сегмента кода.
 */
.text

/*
 * Объявляем main глобавльным символом.
 */
.globl  main                  
.type   main, @function             /* main - функция (а не данные)       */
 
main:
        movq    $1, %rax            /*  поместить номер системного вызова 
                                        write = 1 в регистр %rax */     
        movq    $1, %rdi            /*  первый параметр - в регистр %ebx;
                                        номер файлового дескриптора 
                                        stdout - 1  */

        movq    $hello_str, %rsi    /*  второй параметр - в регистр %rsi;
                                        указатель на строку            */
 
        movq    $hello_str_length, %rdx /* третий параметр - в регистр
                                           %rdx; длина строки       */
 
        syscall             /*  системный вызов */
 
        movq    $60, %rax   /* номер системного вызова exit - 60   */
        movq    $0, %rdi    /* передать 0 как значение параметра  */
        syscall             /* вызвать exit(0)                    */
 
        .size   main, . - main    /* размер функции main            */
/*---------------------------end---------------------------------------------*/
