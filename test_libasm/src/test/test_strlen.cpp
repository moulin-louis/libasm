#include "libasm.h"

static void testing(string str) {
	static int x;
	bool result = strlen(str.c_str()) == ft_strlen(str.c_str());
	handle_result(result, &x);
	cout.flush();
}

void perf_strlen(void) {
	char str[] = "Hello World!";
	int i = 0;
	clock_t start, end;
	double cpu_time_used;

	start = clock();
	while (i++ < ITER_TEST)
		(void)strlen(str);
	end = clock();
	cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	cout << "strlen took " << cpu_time_used << " seconds to execute \n";
	i = 0;
	start = clock();
	while (i++ < ITER_TEST)
		(void)ft_strlen(str);
	end = clock();
	cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	cout << "ft_strlen took " << cpu_time_used << " seconds to execute \n";
	i = 0;
	start = clock();
	while (i++ < ITER_TEST)
		(void)libft_ft_strlen(str);
	end = clock();
	cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	cout << "libft_strlen took " << cpu_time_used << " seconds to execute \n";
}

void test_strlen(void) {
	cout << YELLOW << "Testing ft_strlen:" << RESET << endl;
	testing(""); //Test 1
	testing("Salut tout le monde"); // Test 2
	testing("0987654321"); // Test 3
	testing("long_string"); // Test 4
	cout << endl;
}