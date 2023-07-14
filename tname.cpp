#include <iostream>

template <typename Item> 
struct Node {
	Item data;
};

int main() {
	Node<int> h;
	Node<char> i;
	h.data = 42, i.data = 'a';
	std::cout << h.data << ' ' << i.data << '\n';
	return 0;
}
