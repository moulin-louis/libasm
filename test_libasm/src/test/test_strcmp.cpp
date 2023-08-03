#include "libasm.h"

static void testing(std::string str1, std::string str2) {
    static int x;
	bool result = false;
	int of_result = strcmp(str1.c_str(), str2.c_str());
	int my_result = ft_strcmp(str1.c_str(), str2.c_str());
	if (of_result < 0 && my_result < 0)
		result = true;
	if (of_result > 0 && my_result > 0)
		result = true;
	if (of_result == 0 && my_result == 0)
		result = true;
    handle_result(result, &x);
    std::cout.flush();
}

void test_strcmp(void) {
    std::cout << YELLOW << "\tTesting ft_strcmp:" << RESET << std::endl;
    // I just stole Tripouille test tbh
    testing("", "");
    testing("loumouli", "loumouli");
    testing("loumouli", "louMouli");
    testing("loumouli", "loumoulI");
    testing("loumouli", "loumoulix");
    testing("loumouli", "loumoul");
    testing("long_string", "long_string");
    std::cout << std::endl;
}
