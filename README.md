# ASM_HW2

ИДЗ №2 по АВС выполнил студент БПИ219 Талалаев Геннадий

Мой вариант представлен ниже:

![variant](pictures/variant.png)

---
**Ограничения ввода:**
1) Вводится строка, содержащая n (n <= 1 000 000) символов ASCII-таблицы . Для конца ввода нажать Сtrl+D
3) Если длина массива строки равна 0, то вывод пустой
4) Программа принимает на вход строку.
---
## 4 балла
![four_first](grades/4_1.png)
 - main.c
---
![four_second](grades/4_2.png)

- Компиляция без отладочных опций:

![first_compiling](pictures/first_compilation.png)

- После компиляции создался файл first.s
---

![four_third](4_3.png)

- Использованы аргументы командой строки и ручное редактирование, получился файл second.s

![second_comiling](pictures/second_compilation.png)

---
![four_fourth](grades/4_4.png)

- Программа скомпилирована и скомпонована без опций отладки

![compilation3](pictures/third_compilation.png)

---
![4_5](pictures/4_5.png)

**Тесты**


1) Ввод: 
```
qwertyuiopasdfghjklzxcvbnm
```

Предполагаемый вывод:
```
QWeRTyuioPaSDFGHJKLZXCVBNM
```

Вывод программы на C:

![](pictures/test1_C.png)

Вывод программы на GAS:

![](pictures/test1_asm.png)
---
2) Ввод: 
```
Hello world!
```

Предполагаемый вывод:
```
HeLLoW WoRLD!
```

Вывод программы на C:

![](pictures/test2_C.png)

Вывод программы на GAS:

![](pictures/test2_asm.png)
---
3) Ввод: 
```
qwerqwetqwteqwt jfsnjfnss
ksadokaskodasod asdksadnka
qiwejisajdsinsa dasjfnsad
```

Предполагаемый вывод:
```
QWeTQWEeTQWETeQWT JFSNJFNSS
KSaDoKaSKoDaSoD aSDKSaDNKa
QiWeJuSaJDSuNSa DaSJFNSaD
```

Вывод программы на C:

![](pictures/test3_C.png)

Вывод программы на GAS:

![](pictures/test3_asm.png)
---
4) Ввод: 
```

```

Предполагаемый вывод:
```

```

Вывод программы на C:

![](pictures/test4_C.png)

Вывод программы на GAS:

![](pictures/test4_asm.png)
---
5) Ввод: 
```
123456789
```

Предполагаемый вывод:
```
123456789
```

Вывод программы на C:

![](pictures/test5_C.png)

Вывод программы на GAS:

![](pictures/test5_asm.png)
---

---
![four_sixth](grades/4_6.png)

- Отчёт сформирован.
---
## 5 баллов

![5_1](grades/5_1.png)

- Функции с передачей данных через параметры использованы (файл main.c)

```
bool check_if_consonant(char el, int size) {
    char consonants[] = {'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't',
                         'v', 'w', 'x', 'z'};
    for (int i = 0; i < size; i++) {
        if (consonants[i] == el) {
            return true;
        }
    }
    return false;
}
void swap_consonant(char str[], int size) {
    for (int i = 0; i < size; i++) {
        if (check_if_consonant(str[i], size)) {
            str[i] = str[i] - 32;
        }
    }
    for (int i = 0; i < size; i++) {
        printf("%c", (char) str[i]);
    }
}
```

---
![five_second](grades/5_2.png)

- Локальные переменные использованы(i, ch, size, str[1000000]). Это можно увидеть в файле main.c
```
    char str[1000000];
    int i = 0;
    int ch;
    int size = 0;
```
---

![five_third](grades/5_3.png)
-   В ассемблерную программу при вызове функции добавлены комментарии, описывающие передачу фактических параметров и перенос возвращаемого результата. Это можно увидеть в файле second.s
---

![five_fourth](grades/5_4.png)
-    В функциях для формальных параметров добавлены комментарии, описывающие связь между параметрами языка Си и регистрами (стеком). Это можно увидеть в фале second.s
---

![five_fifth](grades/5_5.png)

- Информация добавлена в отчёт
