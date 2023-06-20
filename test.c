#include <stdio.h>
#include <stdlib.h>
typedef struct s_list
{
	void			*content;
	struct s_list	*next;
}					t_list;

void foo(t_list *list)
{
    list->content = "World";
    list->next = NULL;
}

int main(void)
{
    t_list *list = calloc(1, sizeof(t_list));
    if (!list)
        return 1;
    list->content = "Hello";
    extern ft_list_push_front();
    ft_list_push_front(&list, "World");
    printf("%s\n", (char *)list->content);
    printf("%s\n", (char *)list->next->content);
    free(list->next);
    free(list);
    return 0;
}