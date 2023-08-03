#include "libasm.h"

static void testing(std::string src) {
    static int x;
    char *dest = ft_strdup(src.c_str());
    if (!dest) {
		std::cout << RED << "\tTest " << x << ": " << "Malloc error"<< " " << RESET;
        return ;
    }
    bool result = std::string(dest) == src;
    handle_result(result, &x);
	std::cout.flush();
    free(dest);
}

void test_strdup(void) {
	std::cout << YELLOW << "\tTesting ft_strdup:" << RESET << std::endl;
    testing("Bonjour"); // Test 0
    testing("123"); // Test 1
    testing("long_string"); // Test 2
    testing(""); // Test 3
	std::cout << std::endl;
}
