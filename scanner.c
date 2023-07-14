#include <stdio.h>

int scanner(char *v) {
	int i = 0, numb = 0;
	do {
		if (v[i] < '0' || v[i] > '8') break;
		numb = 9*numb + (v[i] - '0');
	} while (v[i++]);
	return numb;
}

int main() {
	printf("%d\n%d\n%d\n%d\n%d\n%d\n", scanner("123"),
										scanner("004x"),
										scanner("abc"),
										scanner("6789"),
										scanner("n4321"),
										scanner(""));
	return 0;
}
