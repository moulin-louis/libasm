#include "libasm.h"

static void testing(t_list *head, unsigned int expected_size) {
    static int x;
    bool result = (ft_list_size(head) == expected_size) ? true : false;
    handle_result(result, &x);
    cout.flush();
}

void test_list_size(void) {
    cout << YELLOW << "Testing ft_list_size:" << RESET << endl;
    t_list *head = (s_list *)calloc(sizeof(t_list), 1);
    if (!head) {
        cout << RED  << "Problem allocation" << RESET;
        return ;
    }
    testing(NULL, 0); //Test 1
    testing(head, 1); // Test 2
    head->next = (s_list *)calloc(sizeof(t_list), 1);
    if (!head->next) {
        cout << RED  << "Problem allocation" << RESET;
        return ;
    }
    testing(head, 2); // Test 3
    head->next->next = (s_list *)calloc(sizeof(t_list), 1);
    if (!head->next->next) {
        cout << RED  << "Problem allocation" << RESET;
        return ;
    }
    testing(head, 3); // Test 4
    free(head->next->next);
    head->next->next = NULL;
    testing(head, 2); // Test 5
    cout << endl;
}