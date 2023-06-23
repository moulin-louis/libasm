#include "libasm.h"

static void testing(int in, int out, const void *src, int size, int expected_errno, int expected_retval) {
    static int x;
    bool result = true;
    errno = 0;
    int retval = ft_write(out, (char *)src, size);
    result = (errno == expected_errno) ? true : false;
    handle_result(result, &x);
    if (expected_errno == 0) {
        char dest[100];
        memset(dest, 'X', 100);
        dest[99] = 0;
        read(in, dest, size);
        char eof = EOF;
        char c = 0;
        write(out, &eof, 1);
        read(in, &c, 1);
        result = !memcmp(dest, (char const *)src, size) && c == eof;
        handle_result(result, &x);
    }
    result = expected_retval == retval;
    handle_result(result, &x);
    std::cout.flush();
}

void test_write(void) {
    cout << YELLOW << "Testing ft_write:" << RESET << endl;
    signal(SIGPIPE, SIG_IGN);
    int fd_pipe[2];
    pipe(fd_pipe);
    //still a riping off Tripouille test
    testing(fd_pipe[0], fd_pipe[1], "loumouli", 3, 0, 3); // Test 0-1-2
    close (fd_pipe[0]);
    close (fd_pipe[1]);
    pipe(fd_pipe);
    testing(fd_pipe[0], fd_pipe[1], "", 0, 0, 0); // Test 3-4-5
    close (fd_pipe[0]);
    close (fd_pipe[1]);
    pipe(fd_pipe);
    testing(fd_pipe[0], fd_pipe[1], "", 1, 0, 1); // Test 6-7-8
    close (fd_pipe[0]);
    close (fd_pipe[1]);
    testing(fd_pipe[0], -1, "", 1, EBADF, -1); // Test 9-10
    pipe(fd_pipe);
    close(fd_pipe[0]);
    testing(fd_pipe[0], fd_pipe[1], "", 1, EPIPE, -1); // Test 11-12
    cout << endl;
}
