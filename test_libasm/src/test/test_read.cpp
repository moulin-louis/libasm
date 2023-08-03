#include "libasm.h"

static void testing(int fd, const char *str, uint size, int expected_errno, long expected_retval) {
    static int x;
    bool result;
    errno = 0;
    char buff[100] = {0};
    long retval = ft_read(fd, buff, size);
    //first test
    result = (errno == expected_errno) ? true : false;
    handle_result(result, &x);
    char c = -1;
    read(fd, &c, 1);
    if (errno == 0) {
        //second test
        result = !memcmp(str, buff, size);
        std::cout << (result ? GREEN : RED);
		std::cout << "\tTest " << x++ << ": " << (result ? "OK!" : "KO!") << " ";
        //third test
        result = c == -1 || c == str[size];
        handle_result(result, &x);
    }
        //4r test
    result = retval == expected_retval;
    handle_result(result, &x);
	std::cout.flush();
}


void test_read(void) {
	char path_file[] = "./test_file";
	char path_folder[] = "./src";
	std::cout << YELLOW << "\tTesting ft_read:" << RESET << std::endl;
    signal(SIGPIPE, SIG_IGN);
    int fd = open(path_file, O_RDONLY);
    testing(fd, "loumouli", 0, 0, 0);
    close(fd);
    fd = open(path_file, O_RDONLY);
    testing(fd, "loumouli", 3, 0, 3);
    close(fd);
    fd = open(path_file, O_RDONLY);
    testing(fd, "loumouli", 8, 0, 8);
    close(fd);
    testing(-1, "", 1, EBADF, -1);
	fd = open(path_folder, O_RDONLY);
    testing(fd, "", 1, EISDIR, -1);
    close(fd);
	std::cout << std::endl;
}
