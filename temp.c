#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct node {
	void * data;
	struct node *next;
} t_list;

void	ft_list_sort(t_list **head, int (*cmp)());

void ft_add_back(t_list *head, void * data) {
	t_list *new_node = calloc(1, sizeof(t_list));
	new_node->data = data;
	t_list *tmp = head;
	while (tmp->next)
		tmp = tmp->next;
		tmp->next = new_node;
}

//void print_list(t_list *head) {
//	while (head) {
//		printf("node->data = [%d]\n", head->data);
//		head = head->next;
//	}
//}

void clear_list(t_list *head) {
	while (head) {
		t_list *tmp = head->next;
		free(head);
		head = tmp;
	}
}

void bubbleSort(t_list *start)
{
	int swapped;
	t_list *ptr1;
	t_list *lptr = NULL;

	do
	{
		swapped = 0;
		ptr1 = start;

		while (ptr1->next != lptr)
		{
			if (ptr1->data > ptr1->next->data)
			{
				void * tmp = ptr1->data;
				ptr1->data = ptr1->next->data;
				ptr1->next->data = tmp;
				swapped = 1;
			}
			ptr1 = ptr1->next;
		}
		lptr = ptr1;
	}
	while (swapped);
}

int main(void) {
	t_list *head = calloc(1, sizeof(t_list));
	head->data = (void *)6;
	ft_add_back(head, (void *)5);
	ft_add_back(head, (void *)4);
	ft_add_back(head, (void *)3);
	ft_add_back(head, (void *)2);
	ft_add_back(head, (void *)1);
	ft_add_back(head, (void *)0);
	ft_list_sort(&head, strcmp);
//	print_list(head);
//	bubbleSort(head);
//	printf("\n\n");
//	print_list(head);
	clear_list(head);
}