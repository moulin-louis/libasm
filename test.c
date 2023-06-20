#include <stdio.h>
#include <stdlib.h>
typedef struct s_list
{
	void			*content;
	struct s_list	*next;
}					t_list;
void ft_list_push_front(t_list **begin_list, void *data);

//void ft_list_push_front(t_list **begin_list, void *data)
//{
//    t_list *new = calloc(1, sizeof(t_list));
//    if (!new)
//        return ;
//    new->content = data;
//    new->next = *begin_list;
//    *begin_list = new;
//}

int main(void)
{
    t_list *list = calloc(1, sizeof(t_list));
    if (!list)
        return 1;
    list->content = "Hello";
    ft_list_push_front(&list, "World");
    printf("%s\n", (char *)list->content);
    printf("%s\n", (char *)list->next->content);
    free(list->next);
    free(list);
    return 0;
}