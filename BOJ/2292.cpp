//https://www.acmicpc.net/problem/2292
#include <iostream>

using namespace std;

int main() {
	int N;
	int result = 1;

	cin >> N;

	N--;

	while (N > 0) {
		N = N - 6 * result;
		result++;
	}

	cout << result << "\n";

	return 0;
}
