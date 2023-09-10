#include "libasm.h"

static void testing(const string base, const string input, int expected_output) {
	static int x;
    int tmp = ft_atoi_base(base.c_str(), input.c_str());
	bool result = tmp == expected_output;
    if (!result) {
        cout << RED << "resut of ft_atoi_base == " << tmp << endl;
        cout << "should be == " << expected_output << endl << RESET;
    }
	handle_result(result, &x);
	cout.flush();
}

void test_atoi_base(void) {
	cout << YELLOW << "\tTesting ft_atoi_base:" << RESET << endl;
	string tmp = "2a";
    string base = "0123456789abcdef";
    testing(tmp, base, 42); //Test 0
    tmp = "-2a";
    testing(tmp, base, -42); //Test 1
    tmp = "-----2a";
    testing(tmp, base, -42); //Test 2
    tmp = "-+-2a";
    testing(tmp, base, 42); //Test 3
    tmp = "-+--2a";
    testing(tmp, base, -42); //Test 4
    tmp = "-+--+++++++++++++2a";
    testing(tmp, base, -42); //Test 5
    tmp = "-+--+++++++++++++-2a";
    testing(tmp, base, 42); //Test 6
    base = "01";
    tmp = "101";
    testing(tmp, base, 5); //Test 7
    tmp = "-101";
    testing(tmp, base, -5); //Test 8
    tmp = "2a";
    base = ""
    cout << endl;
	return ;
}