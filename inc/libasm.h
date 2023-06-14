#ifndef LIBASM_H
#define LIBASM_H
unsigned long   ft_read(int fd, char *buff, unsigned int size_buff);
int             ft_strcmp(const char *s1, const char *s2);
char            *ft_strcpy(char *dest, const char *src);
char            *ft_strdup(const char *s);
unsigned long   ft_strlen(const char *ptr);
unsigned long   ft_write(int fd, char *buff, unsigned int size_buff);
#endif