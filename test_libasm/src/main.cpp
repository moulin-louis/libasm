#include "libasm.h"
#include <string.h>
void handle_result(bool result, int *nbr_test) {
    cout << (result ? GREEN : RED);
    cout << "Test " << (*nbr_test) << ": " << (result ? "OK!" : "KO!") << " ";
    (*nbr_test)++;
}

int main(void) {
    cout << GREEN;
    test_strlen();
	perf_strlen();
    test_strcmp();
    test_strcpy();
    test_strdup();
    test_read();
    test_write();
    test_list_size();
	test_push_front();
}



