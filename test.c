#include <stdio.h>
#include <stdlib.h>

typedef struct s_list {
	void			*content;
	struct s_list	*next;
}					t_list;

void	ft_list_push_front(t_list **beg_list, void *data);

int main(int ac, char **av) {
	t_list *head = (t_list *)calloc(1, 16);
	if (!head) {
		printf("Problem allocation");
		return (0);
	}
	ft_list_push_front(&head, (void *)av[1]);
	free(head->next);
	free(head);
	return (0);
}