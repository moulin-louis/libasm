#include "../inc/libasm.h"
#include "../libft/inc/libft.h"
#include <stdio.h>
#include <string.h>
// #include <unistd.h>
// #include <fcntl.h>
// #include <stdlib.h>
// #include <errno.h>
#include <sys/time.h>

time_t	gettime(void) {
	struct timeval	tv;
	gettimeofday(&tv, NULL);
	return ((tv.tv_sec * 1000) + (tv.tv_usec / 1000));
}

// int test_ft_strlen() {
//     int x = 0;
//     printf("Testing: [\"\"]:");
//     if (strlen("") != ft_strlen(""))
//         printf("%sKO%s", RED, RESET);
//     x++;
//     if (strlen("Salut tout le monde") != ft_strlen("Salut tout le monde"))
//         return (printf("Failed on test %d\n", x), 1);
//     x++;
//     if (strlen("0987654321") != ft_strlen("0987654321"))
//         return (printf("Failed on test %d\n", x), 1);
//     x++;
//     if (strlen(long_string) != ft_strlen (long_string))
//         return (printf("Failed on test %d\n", x), 1);
//     return (0);
// }

void check_diff_perf(void) {
    int nbr_run = 100000000;
    time_t start = gettime();
    for (int i = 0; i < nbr_run; i++) {
        int x = strlen("test");
    }
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
    printf("libft_ft_strlen: %ldms\n", end - start);
}

int main(void) {
    // printf("Testing ft_strlen....\n");
    // if (test_ft_strlen())
    //     printf("Test ft_strlen failed...\n");
    // else
    //     printf("Test ft_strlen passed!\n");
    // char str[1024];
    // int retval = ft_read(0, str, 1023);
    // if (retval == -1) {
    //     printf("problem ft_read: %s\n", strerror(errno));
    //     return (1);
    // }
    // str[retval] = 0;
    // retval = ft_write(1, str, retval);
    // if (retval == -1) {
    //     printf("problem ft_write: %s\n", strerror(errno));
    //     return (1);
    // }
    
    check_diff_perf();
    // return (libft_ft_strlen("bonjour") - ft_strlen("test"));
}



