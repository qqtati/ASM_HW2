.file    "main.c"
.intel_syntax noprefix
.text
.globl    check_if_consonant
.type    check_if_consonant, @function
check_if_consonant:                         #функция check_if_consonant
endbr64
push    rbp                             #сохранение rbp на стек
mov    rbp, rsp                            #rbp := rsp
mov    eax, edi                            #eax := edi
mov    DWORD PTR -40[rbp], esi             #указывает где на стеке разместить 1 аргумент функции
mov    BYTE PTR -36[rbp], al               #указывает где на стеке разместить 2 аргумент функции
movabs    rax, 7740113702898393954        #кладем 64-битовое значение в регистр
movabs    rdx, 8391176362264522092        #кладем 64-битовое значение в регистр
mov    QWORD PTR -32[rbp], rax
mov    QWORD PTR -24[rbp], rdx
mov    DWORD PTR -16[rbp], 2054715254
mov    r13d, 0                #i := 0
jmp    .L2                                 #переход к L2
.L5:                                        #Тело цикла
mov    eax, r13d             # eax := переменная цикла
cdqe
movzx    eax, BYTE PTR -32[rbp+rax]      # eax := array[i]
cmp    BYTE PTR -36[rbp], al               # сравнение аргумента функции и array[i]
jne    .L3                                 # если false -> L3
mov    eax, 1                              # eax := 1 (true)
jmp    .L6                                 # переход в L6
.L3:
add    r13d, 1                # i++
.L2:
mov    eax, r13d              # eax := i
cmp    eax, DWORD PTR -40[rbp]             # i < size?
jl    .L5                                 # переход в L5
mov    eax, 0                              # eax := 0 (false)
.L6:
pop    rbp                                 #очистка стека в исходное состояние
ret                                     #возврат значения
.size    check_if_consonant, .-check_if_consonant
.globl    swap_consonant
.type    swap_consonant, @function
swap_consonant:                             #функция swap_consonant
endbr64
push    rbp                             #сохранение rbp на стек
mov    rbp, rsp                            #rbp := rsp
sub    rsp, 32                             #rsp := rsp - 32
mov    QWORD PTR -24[rbp], rdi             #указывает где на стеке разместить 1 аргумент функции
mov    DWORD PTR -28[rbp], esi             #указывает где на стеке разместить 2 аргумент функции
mov    r13d, 0                #объявление переменной функции
jmp    .L8                                 # переход в L8
.L10:
mov    eax, r13d              # eax := i
movsx    rdx, eax                        # расширяет разрядность eax до rdx
mov    rax, QWORD PTR -24[rbp]             #расширяем до rax
add    rax, rdx                            # индексирует (прибавляет i)
movzx    eax, BYTE PTR [rax]             # копирует в регистр eax := array[rax]
movsx    eax, al
mov    edx, DWORD PTR -28[rbp]             #edx := array
mov    esi, edx                            #esi - адрес начала блока
mov    edi, eax                            #edi - адрес назначения
call    check_if_consonant              # вызов фукнции check_if_consonant
test    al, al
je    .L9                                 #перехожд к L9
mov    eax, r13d              #eax := i
movsx    rdx, eax                        #расширяем eax
mov    rax, QWORD PTR -24[rbp]             #расширяем до rax
add    rax, rdx                            #индексирует (прибавляет i)
movzx    eax, BYTE PTR [rax]             # eax := array[i]
lea    ecx, -32[rax]                       # eax
mov    eax, r13d
movsx    rdx, eax
mov    rax, QWORD PTR -24[rbp]
add    rax, rdx
mov    edx, ecx
mov    BYTE PTR [rax], dl                  #array[i] = array[i] - 32
.L9:
add    r13d, 1                #i += 1
.L8:
mov    eax, r13d              # eax := i
cmp    eax, DWORD PTR -28[rbp]             # eax < size
jl    .L10                                # переход в L10
mov    DWORD PTR -8[rbp], 0
jmp    .L11                                #переход в L11
.L12:
mov    eax, DWORD PTR -8[rbp]              # eax := i
movsx    rdx, eax                        # расширяем
mov    rax, QWORD PTR -24[rbp]             # rax = array[0]
add    rax, rdx                            # индексируем rax
movzx    eax, BYTE PTR [rax]             # копируем eax array[i]
movsx    eax, al
mov    edi, eax                            #edi := eax
call    putchar@PLT                     #вызываем функция вывода символа
add    DWORD PTR -8[rbp], 1                # i := i + 1
.L11:
mov    eax, DWORD PTR -8[rbp]             # eax := i
cmp    eax, DWORD PTR -28[rbp]            # eax < size
jl    .L12                               # переход в L12
nop
nop
leave                                  # очистка стека
ret                                    # возврат в вызывающую функцию
.size    swap_consonant, .-swap_consonant
.globl    main
.type    main, @function
main:
endbr64
push    rbp                            #сохранение rbp на стек
mov    rbp, rsp                           # rbp := rsp
lea    r11, -999424[rsp]                  # str[1000000]
.LPSRL0:
sub    rsp, 4096
or    DWORD PTR [rsp], 0
cmp    rsp, r11
jne    .LPSRL0
sub    rsp, 592
mov    r13d, 0               # i = 0
mov    DWORD PTR -8[rbp], 0               #size = 0
.L14:
mov    rax, QWORD PTR stdin[rip]          #rax := ввод симовола в клавиатуры
mov    rdi, rax                           #rdi := rax
call    fgetc@PLT                      # вызво функции ввода символа
mov    DWORD PTR -12[rbp], eax            #ch := eax
mov    eax, r13d             #eax := i
lea    edx, 1[rax]
mov    r13d, edx
mov    edx, DWORD PTR -12[rbp]            #edx = ch
cdqe
mov    BYTE PTR -1000016[rbp+rax], dl     # str[i++]  = ch;
add    DWORD PTR -8[rbp], 1               # size += 1
cmp    DWORD PTR -12[rbp], -1             # ch != -1
jne    .L14                               #переход в L14
mov    eax, r13d             #eax := i
sub    eax, 1                             #eax := eax - 1
cdqe
mov    BYTE PTR -1000016[rbp+rax], 0      #str[i - 1] = '\0'
mov    edx, DWORD PTR -8[rbp]             #ed x:= size
lea    rax, -1000016[rbp]
mov    esi, edx
mov    rdi, rax
call    swap_consonant                 #вызов функции swap_constant
mov    eax, 0                             #eax := 0
leave                                  #очистка стека
ret                                    #возврат значения
