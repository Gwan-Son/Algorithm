//https://www.acmicpc.net/problem/2501
#include <iostream>

using namespace std;

int main() {
	int N, K, ed = 0;
	int cnt = 0;
	cin >> N >> K;

	for (int i = 1; i <= N; i++) {
		if (N % i == 0) {
			cnt++;
			if (cnt == K) {
				cout << i << "\n";
				ed = 1;
				break;
			}
		}
	}
	if (!ed) {
		cout << 0 << "\n";
	}

	return 0;
}
