#include "libasm.h"

static void testing(t_list **head, void *data, unsigned int expected_size) {
	static int x;
	bool result = true;
	ft_list_push_front(head, data);
	if (ft_list_size(*head) != expected_size)
		result = false;
	handle_result(result, &x);
	result = true;
	if ((*head)->content != data)
		result = false;
	handle_result(result, &x);
	cout.flush();
}

void test_push_front(void) {
	cout << YELLOW << "Testing ft_list_push_front:" << RESET << endl;
	t_list *head = (t_list *)calloc(1, 16);
	if (!head) {
		cout << RED  << "Problem allocation" << RESET;
		return ;
	}
	testing(&head, NULL, 2); //Test 1,2
	testing(&head, (void *)1, 3); //Test 3,4
	free(head->next->next);
	head->next->next = NULL;
	testing(&head, (void *)2, 3); //Test 5,6
	testing(&head, (void *)"SALUT", 4); //Test 7, 8
	testing(&head, (void *)NULL, 5); //Test 9, 10
	t_list *tmp;
	while(head) {
		tmp = head->next;
		free(head);
		head = tmp;
	}
	cout << endl;
}