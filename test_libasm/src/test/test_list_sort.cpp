#include "libasm.h"

void testing(t_list *head, int(*cmp)(uint64_t, uint64_t)) {
	static int x;
	bool result = ft_list_size(head) == 5;
	handle_result(result, &x);
	result = true;
	while (head) {
		if (head->next) {
			if (cmp(head->content, head->next->content) > 0) {
				result = false;
				handle_result(result, &x);
				break ;
			}
		}
		head = head->next;
	}
	handle_result(result, &x);
	cout.flush();
}

int wrap_strcmp(uint64_t s1, uint64_t s2) {
	return (strcmp((const char *)s1, (const char *)s2));
}

int cmp_nbr(uint64_t n1, uint64_t n2) {
	if (n1 == n2)
		return (0);
	return (n1 > n2 ? 1 : -1);
}

static void print_list(t_list *head) {
	while (head) {
		cout << "-\t" << (char *)head->content << endl;
		head = head->next;
	}
}

void test_list_sort() {
	cout << YELLOW << "\tTesting test_list_sort:" << RESET << endl;
    {
        t_list *head;
        ft_list_push_front(&head, (uint64_t)strdup("apple"));
        ft_list_push_front(&head, (uint64_t)strdup("milk"));
        ft_list_push_front(&head, (uint64_t)strdup("bread"));
        cout << "Before:" << endl;
        print_list(head);
        cout << endl;
        ft_list_sort(&head, wrap_strcmp);
        cout << "After:" << endl;
        print_list(head);
        while (head) {
            t_list *tmp = head->next;
            free((void *)head->content);
            free(head);
            head = tmp;
        }
    }


    t_list *head = nullptr;
    ft_list_push_front(&head, (uint64_t)strdup("A"));
	ft_list_push_front(&head, (uint64_t)strdup("B"));
	ft_list_push_front(&head, (uint64_t)strdup("C"));
	ft_list_push_front(&head, (uint64_t)strdup("D"));
	ft_list_push_front(&head, (uint64_t)strdup("E"));
	ft_list_sort(&head, wrap_strcmp);
	testing(head, wrap_strcmp); //test 0-1
	while (head) {
		t_list *tmp = head->next;
		free((void *)head->content);
		free(head);
		head = tmp;
	}
	head = nullptr;
	ft_list_push_front(&head, 0);
	ft_list_push_front(&head, 1);
	ft_list_push_front(&head, 2);
	ft_list_push_front(&head, 3);
	ft_list_push_front(&head, 4);
	ft_list_sort(&head, cmp_nbr);
	testing(head, cmp_nbr); //test 2-3
    while (head) {
	    t_list *tmp = head->next;
	    free(head);
		head = tmp;
	}
	cout << endl;
}

