#include "libasm.h"

void handle_result(bool result, int *nbr_test) {
    cout << (result ? GREEN : RED);
    cout << "Test " << (*nbr_test) << ": " << (result ? "OK!" : "KO!") << " ";
    (*nbr_test)++;
}

//void check_diff_perf(void) {
//    int nbr_run = 100000000;
//    time_t start = gettime();
//    for (int i = 0; i < nbr_run; i++) {
//        (void)strlen("test");
//    }
//    time_t end = gettime();
//    printf("strlen: %ldms\n", end - start);
//    start = gettime();
//    for (int i = 0; i < nbr_run; i++) {
//        ft_strlen("test");
//    }
//    end = gettime();
//    printf("ft_strlen: %ldms\n", end - start);
//    start = gettime();
//    for (int i = 0; i < nbr_run; i++) {
//        libft_ft_strlen("test");
//    }
//    end = gettime();
//    printf("libft_ft_strlen: %ldms\n", end - start);
//}

int main() {
    cout << GREEN;
    t_list *tmp = (t_list *)calloc(1, sizeof(t_list));
    if (!tmp) {
        return (1);
    }
    int x = 5;
    ft_list_push_front(&tmp, &x);
    free(tmp);
    // test_strlen();
    // test_strcmp();
    // test_strcpy();
    // test_strdup();
    // test_read();
    // test_write();
    // test_list_size();
}



