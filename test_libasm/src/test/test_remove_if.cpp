#include "libasm.h"

void ft_push_back(t_list **head, uint64_t data) {
	t_list *tmp = *head;
	auto node = (t_list *)calloc(1, sizeof(t_list));
	node->content = (uint64_t)data;
	if (!tmp) {
		*head = node;
		return ;
	}
	while (tmp->next)
		tmp = tmp->next;
	tmp->next = node;
}

static int cmp(uint64_t a, uint64_t b) {
    return ((a == b) ? 0 : 1);
}

static void free_node(uint64_t ptr) {
	free((void *)ptr);
}

static void testing(t_list *head, unsigned int expected_size) {
    static int x;
    bool result = ft_list_size(head) == expected_size;
    handle_result(result, &x);
    cout.flush();
}


void test_remove_if() {
    t_list *head = nullptr;
    t_list *tmp;
    cout << YELLOW << "\tTesting ft_remove_if:" << RESET << endl;
    ft_push_back(&head, 0);
    ft_push_back(&head, 1);
    ft_push_back(&head, 2);
    ft_list_remove_if(&head, 0, cmp, free_node);
    testing(head, 2); // Test 0
    ft_list_remove_if(&head, 2, cmp, free_node);
    testing(head, 1); // Test 1
    ft_list_remove_if(&head, 1, cmp, free_node);
    testing(head, 0); // Test 2
    ft_list_remove_if(&head, 0, cmp, free_node);
    testing(head, 0); // Test 3
    ft_push_back(&head, 0);
    ft_push_back(&head, 1);
    ft_push_back(&head, 2);
    ft_list_remove_if(&head, 2, cmp, free_node);
    testing(head, 2); // Test 4
    ft_list_remove_if(&head, 1, cmp, free_node);
    testing(head, 1); // Test 5
    ft_list_remove_if(&head, 0, cmp, free_node);
    testing(head, 0); // Test 6
    while (head) {
        tmp = head->next;
        free(head);
        head = tmp;
    }
	cout << endl;
}
