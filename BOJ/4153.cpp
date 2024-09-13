//https://www.acmicpc.net/problem/4153
#include <iostream>
#include <algorithm>

using namespace std;

int main() {
	long long a, b, c;
	
	while (true) {
		long long sa, sb, sc;
		cin >> a >> b >> c;
		if (a == 0 && b == 0 && c == 0)break;
		sa = a * a;
		sb = b * b;
		sc = c * c;
		if (sa == sb + sc || sb == sa + sc || sc == sa + sb) {
			cout << "right" << "\n";
		}
		else {
			cout << "wrong" << "\n";
		}
	}
	return 0;
}
