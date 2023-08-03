#include "libasm.h"

static void testing(t_list *head, unsigned int expected_size) {
    static int x;
    bool result = ft_list_size(head) == expected_size;
    handle_result(result, &x);
	std::cout.flush();
}

void test_list_size(void) {
	std::cout << YELLOW << "\tTesting ft_list_size:" << RESET << std::endl;
    t_list *head = static_cast<t_list *>(calloc(sizeof(t_list), 1));
    if (!head) {
		std::cout << RED  << "Problem allocation" << RESET;
        return ;
    }
    testing(nullptr, 0); //Test 1
    testing(head, 1); // Test 2
    head->next = static_cast<t_list *>(calloc(sizeof(t_list), 1));
    if (!head->next) {
		std::cout << RED  << "Problem allocation" << RESET;
        return ;
    }
    testing(head, 2); // Test 3
    head->next->next = static_cast<t_list *>(calloc(sizeof(t_list), 1));
    if (!head->next->next) {
		std::cout << RED  << "Problem allocation" << RESET;
        return ;
    }
    testing(head, 3); // Test 4
    free(head->next->next);
    head->next->next = nullptr;
    testing(head, 2); // Test 5
    free(head->next);
    free(head);
	std::cout << std::endl;
}
