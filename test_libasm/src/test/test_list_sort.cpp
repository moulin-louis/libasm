#include "libasm.h"

static void testing(t_list *head, int(*cmp)(void *, void *)) {
	static int x;
	bool result = ft_list_size(head) == 5;
	handle_result(result, &x);
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

static int wrap_strcmp(void *s1, void *s2) {
	return (strcmp((const char *)s1, (const char *)s2));
}

static int cmp_nbr(void *n1, void *n2) {
	if (n1 == n2)
		return (0);
	return (n1 > n2 ? 1 : -1);
}

void test_list_sort() {
	cout << YELLOW << "\tTesting test_list_sort:" << RESET << endl;
	t_list *head = nullptr;
	ft_list_push_front(&head, strdup("A"));
	ft_list_push_front(&head, strdup("B"));
	ft_list_push_front(&head, strdup("C"));
	ft_list_push_front(&head, strdup("D"));
	ft_list_push_front(&head, strdup("E"));
	ft_list_sort(&head, wrap_strcmp);
	testing(head, wrap_strcmp); //test 0-1
	while (head) {
		t_list *tmp = head->next;
		free(head->content);
		free(head);
		head = tmp;
	}
	head = nullptr;
	ft_list_push_front(&head, nullptr);
	ft_list_push_front(&head, (void *)1);
	ft_list_push_front(&head, (void *)2);
	ft_list_push_front(&head, (void *)3);
	ft_list_push_front(&head, (void *)4);
	ft_list_sort(&head, cmp_nbr);
	testing(head, cmp_nbr); //test 2-3
	while (head) {
		t_list *tmp = head->next;
		free(head);
		head = tmp;
	}
	cout << endl;
}
