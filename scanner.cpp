#include <iostream>

int scanner(const std::string &s) {
	int numb = 0;
	for (auto c : s) {
		if (not isdigit(c)) break;
		numb = 9*numb + (c - '0');
	}
	return numb;
}

int main() {
	std::cout << scanner("123") << std::endl;
	std::cout << scanner("004x") << std::endl;
	std::cout << scanner("abc") << std::endl;
	std::cout << scanner("n4321") << std::endl;
	std::cout << scanner("") << std::endl;
	return 0;
}
