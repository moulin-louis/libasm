#include "libasm.h"

//static void testing(t_list *head, unsigned int expected_size) {
//	static int x;
//	bool result = ft_list_size(head) == expected_size;
//	handle_result(result, &x);
//	cout.flush();
//}

static int wrap_strcmp(void *s1, void *s2) {
	return (strcmp((const char *)s1, (const char *)s2));
}

void test_list_sort(void) {
	cout << YELLOW << "\tTesting test_list_sort:" << RESET << endl;
	t_list *head = NULL;
	ft_list_push_front(&head, strdup("A"));
	ft_list_push_front(&head, strdup("B"));
	ft_list_push_front(&head, strdup("C"));
	ft_list_push_front(&head, strdup("D"));
	ft_list_push_front(&head, strdup("E"));
	t_List *tmp = head;
	while (tmp) {
		cout << (char *)(tmp->content) << " ";
		tmp = tmp->next;
	}
	cout << endl;
	cout << "calling ft_list_sort" << endl;
	ft_list_sort(&head, wrap_strcmp);
	tmp = head;
	while (tmp) {
		cout << (char *)(tmp->content) << " ";
		tmp = tmp->next;
	}
	while (head) {
		tmp = head->next;
		free(head->content);
		free(head);
		head = tmp;
	}
	cout << endl;
}
