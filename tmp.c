#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>


typedef struct t_list {
    uint64_t data;
    struct t_list *next;
} s_list;


s_list *init(void) {
    s_list *list = malloc(sizeof(s_list));
    list->data = (uint64_t)strdup("apple");
    list->next = malloc(sizeof(s_list));
    list->next->data = (uint64_t)strdup("milk");
    list->next->next = malloc(sizeof(s_list));
    list->next->next->data = (uint64_t)strdup("bread");
    return (list);
}

void clean(s_list *list) {
    s_list *tmp = list;
    while (tmp) {
        s_list *next = tmp->next;
        free((void *)tmp->data);
        free(tmp);
        tmp = next;
    }
}

void print(s_list *list) {
    while (list) {
        printf("%s\n", (char *)list->data);
        list = list->next;
    }
}

void sort(s_list **head, int (*cmp)(uint64_t, uint64_t))
{
	uint64_t data;
	s_list	*parcour;

	parcour = (*head);
	while ((*head)->next)
	{
		if (((*cmp)((*head)->data, (*head)->next->data)) > 0)
		{
			data = (*head)->data;
			(*head)->data = (*head)->next->data;
			(*head)->next->data = data;
			(*head) = parcour;
		}
		else
			(*head) = (*head)->next;
	}
	(*head) = parcour;
}

int wrap_strcmp(uint64_t a, uint64_t b) {
    return (strcmp((const char *)a, (const char *)b));
}

void test(void *ptr) {
    printf("ptr = %p\n", ptr);
}

int main(void) {
    s_list *list = init();
    uint64_t *ptr = list->next;
    
    printf("*ptr = %lu\n", *ptr);
    printf("*list->next->data = %lu\n", list->next->data);
    if
    return (0);
}