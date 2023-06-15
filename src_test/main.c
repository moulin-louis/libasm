#include "../inc/libasm.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/time.h>

time_t	gettime(void) {
	struct timeval	tv;
	gettimeofday(&tv, NULL);
	return ((tv.tv_sec * 1000) + (tv.tv_usec / 1000));
}

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

void check_diff_perf(void) {
    int nbr_run = 100000000;
    time_t start = gettime();
    for (int i = 0; i < nbr_run; i++)
        strlen("test");
    time_t end = gettime();
    printf("strlen: %ldms\n", end - start);
    start = gettime();
    for (int i = 0; i < nbr_run; i++) {
        ft_strlen("test");
    }
    end = gettime();
    printf("ft_strlen: %ldms\n", end - start);
    start = gettime();
    for (int i = 0; i < nbr_run; i++) {
        libft_ft_strlen("test");
    }
    end = gettime();
    printf("ft_strlen: %ld\n", end - start);
}

int main(void) {
    // time_t timestamp = gettime();
    // printf("Testing ft_strlen....\n");
    // if (test_ft_strlen()) {
    //     printf("Test ft_strlen failed...\n");
    // } else {
    //     printf("Test ft_strlen passed!\n");
    // }

    // char str[1024];
    // int ret_val = ft_read(0, str, 1023);
    // if (ret_val == -1)
    //     printf("Error ft_read: %s\n", strerror(errno));
    // int retval = ft_write(1, "Hello World!\n", 13);
    // if (retval == -1)
    //     printf("Error ft_write: %s\n", strerror(errno));
    // char str[] = "STRING_DE_TEST";
    // char str2[] = "STRING_DE_TEST2";
    // int retval_ft = ft_strcmp(str, str2);
    // printf("ft_strcmp: %d\n", retval_ft);
    // int retval_glibc = strcmp(str, str2);
    // printf("off strcmp: %d\n", retval_glibc);
    // char *dest = malloc(1024);
    // char src[] = "Salut les zamis\n";
    // ft_strcpy(dest, src);
    // for (int i = 0;  i < 3; i++) {
    //     printf("i = %d\n", i);
    //     printf("dest[i] =  %c\n", dest[i]);
    // }
    // printf("dest = [%s]\n", dest);
    // free(dest);
    // return (ft_strlen("test"));
    // char test[] = "123";
    // char *dest = ft_strdup(test);
    // printf("dest = [%s]\n", dest);
    // free(dest);
    // char str[1024];
    // ssize_t x = read(1, str, 1023);
    // str[x] = 0;
    check_diff_perf();
    return (0);
}



