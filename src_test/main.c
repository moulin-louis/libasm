#include "../inc/libasm.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
// int test_ft_strlen() {
//     int x = 0;
//     if (strlen("") != ft_strlen(""))
//         return (printf("Failed on test %d\n", x), 1);
//     x++;
//     if (strlen("Salut tout le monde") != ft_strlen("Salut tout le monde"))
//         return (printf("Failed on test %d\n", x), 1);
//     x++;
//     if (strlen("0987654321") != ft_strlen("0987654321"))
//         return (printf("Failed on test %d\n", x), 1);
//     x++;
//     if (strlen("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000") != ft_strlen ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"))
//         return (printf("Failed on test %d\n", x), 1);
//     return (0);
// }

int main(void) {
    // printf("Testing ft_strlen....\n");
    // if (test_ft_strlen()) {
    //     printf("Test ft_strlen failed...\n");
    // } else {
    //     printf("Test ft_strlen passed!\n");
    // // }
    // char str[4];
    // int size = 4;
    // read(1, str, size);
    // char* str = calloc(1024, 1);
    char str[1024];
    // int fd = open("./TODfdfs", O_RDONLY);
    // int fd = 0;
    int x = ft_read(65, str, 1024);
    printf(" x = %d\n", x);
    // close(fd);
    // write(1, str, 1024);
    // free(str);
}



