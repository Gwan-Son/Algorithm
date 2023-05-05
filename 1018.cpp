#include <iostream>
#include <algorithm>

using namespace std;

char arr[51][51];

int main() {
	int N, M;
	int black = 0, white = 0;
	int result = 65;
	cin >> N >> M;
	for (int i = 0; i < N; i++) {
		for (int j = 0; j < M; j++) {
			cin >> arr[i][j];
		}
	}
	for (int i = 0; i + 8 <= N; i++) {
		for (int j = 0; j + 8 <= M; j++) {
			black = 0;
			white = 0;
			for (int k = i; k < i + 8; k++) {
				for (int l = j; l < j + 8; l++) {
					if ((k + l) % 2 == 0) {
						if (arr[k][l] == 'B') {
							white++;
						}
						else {
							black++;
						}
					}
					else {
						if (arr[k][l] == 'B') {
							black++;
						}
						else {
							white++;
						}
					}
				}
			}
			result = min(result, black);
			result = min(result, white);
		}
	}
	cout << result << "\n";

	return 0;
}
