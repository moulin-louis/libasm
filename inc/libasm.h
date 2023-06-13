#ifndef LIBASM_H
#define LIBASM_H
#define ulong unsigned long
ulong   ft_read(int fd, char *buff, unsigned int size_buff);
int     ft_strcmp(const char *s1, const char *s2);
char    *ft_strcpy(char *dest, const char *src);
char    *ft_strdup(const char *s);
ulong   ft_strlen(const char *ptr);
ulong   ft_write(int fd, char *buff, unsigned int size_buff);
#endif