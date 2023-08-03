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
	std::cout.flush();
}

void test_push_front(void) {
	std::cout << YELLOW << "\tTesting ft_list_push_front:" << RESET << std::endl;
	t_list *head = static_cast<t_list *>(calloc(1, 16));
	if (!head) {
		std::cout << RED  << "Problem allocation" << RESET;
		return ;
	}
	char str[] = "Bonjour";
	testing(&head, nullptr, 2); //Test 1,2
	testing(&head, reinterpret_cast<void *>(1), 3); //Test 3,4
	free(head->next->next);
	head->next->next = nullptr;
	testing(&head, reinterpret_cast<void *>(2), 3); //Test 5,6
	testing(&head, static_cast<void *>(str), 4); //Test 7, 8
	testing(&head, nullptr, 5); //Test 9, 10
	t_list *tmp;
	while(head) {
		tmp = head->next;
		free(head);
		head = tmp;
	}
	std::cout << std::endl;
}
