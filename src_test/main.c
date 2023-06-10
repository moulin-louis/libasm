#include "../inc/libasm.h"
#include <stdio.h>

int main(void) {
    char str[] = "Hello";
    printf("%s len = %ld\n", str, _ft_strlen(str));
}