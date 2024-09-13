#include <iostream>

using namespace std;

int main() {
	int N;
	cin >> N;
	int cnt = 1;
	while (true) {
		if (N == (cnt + cnt % 10 + cnt % 100 / 10 + cnt % 1000 / 100 + cnt % 10000 / 1000 + cnt % 100000 / 10000 + cnt % 1000000 / 100000 + cnt % 10000000 / 1000000)) {
			cout << cnt << endl;
			break;
		}
		cnt++;
		if (cnt >= N) {
			cout << 0 << endl;
			break;
		}
	}
	return 0;
}
