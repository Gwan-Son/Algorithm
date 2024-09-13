#include <iostream>
#include <algorithm>

using namespace std;

int numbers[1000001];
int N, M, temp;

int solve(int n) {
	int start = 0;
	int end = N - 1;
	while (start <= end) {
		int mid = (start + end) / 2;
		if (numbers[mid] == n) return 1;
		else if (n < numbers[mid]) end = mid - 1;
		else start = mid + 1;
	}
	return 0;
}

int main() {
	cin >> N;
	for (int i = 0; i < N; i++) {
		cin >> temp;
		numbers[i] = temp;
	}
	sort(numbers, numbers + N);
	cin >> M;
	for (int i = 0; i < M; i++) {
		cin >> temp;
		cout << solve(temp) << "\n";
	}
	return 0;
}
