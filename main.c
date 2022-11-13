#include <stdio.h>
#include <stdbool.h>
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
int main() {
    char str[1000000];
    int i = 0;
    int ch;
    int size = 0;
    do {
        ch = fgetc(stdin);
        str[i++] = ch;
        size++;
    } while (ch != -1);
    str[i - 1] = '\0';
    swap_consonant(str, size);
}
