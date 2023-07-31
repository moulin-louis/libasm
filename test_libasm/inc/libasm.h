
#ifndef         LIBASM_H
#define         LIBASM_H
#include <cstdio>
#include <cstring>
#include <unistd.h>
#include <fcntl.h>
#include <cstdlib>
#include <cerrno>
#include <ctime>
#include <chrono>
#include <iostream>
#include <csignal>
#include "../libft/inc/libft.h"

using namespace std::chrono;
using namespace std;


#ifdef __cplusplus
extern "C" {
#endif
    // Function declarations from the C library here
    unsigned long   ft_read(int fd, char *buff, unsigned int size_buff);
    int             ft_strcmp(const char *s1, const char *s2);
    char            *ft_strcpy(char *dest, const char *src);
    char            *ft_strdup(const char *s);
    unsigned long   ft_strlen(const char *ptr);
    unsigned long   ft_write(int fd, char *buff, unsigned int size_buff);
    unsigned int    ft_list_size(t_list *head);
    void            ft_list_push_front(t_list **head, void *data);
    
#ifdef __cplusplus
}
#endif

void            test_read(void);
void            test_strlen(void);
void			perf_strlen(void);
void            test_strcmp(void);
void            test_strcpy(void);
void            test_strdup(void);
void            test_write(void);
void            test_list_size(void);
void			test_push_front(void);
void            handle_result(bool result, int *);

#define        	get_time() duration_cast<milliseconds>(system_clock::now().time_since_epoch()).count()
#define         RED "\e[0;31m"
#define         GREEN "\e[0;32m"
#define         YELLOW "\e[0;33m"
#define         RESET "\e[0m"
#define			ITER_TEST 100000000

#endif
