//https://www.acmicpc.net/problem/1085
#include <iostream>

using namespace std;

int main() {
	int x, y, w, h;
	int result = 1001;

	cin >> x >> y >> w >> h;

	if (w - x > x) {
		result = min(result, x);
	}
	else {
		result = min(result, w - x);
	}
	if (h - y > y) {
		result = min(result, y);
	}
	else {
		result = min(result, h - y);
	}

	cout << result << "\n";

	return 0;
}
