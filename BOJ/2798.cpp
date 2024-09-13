#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

vector<int> card;

int main() {
	int N, M;
	cin >> N >> M;
	int blackjack = 0;
	for (int i = 0; i < N; i++) {
		int temp;
		cin >> temp;
		card.push_back(temp);
	}
	for (int i = 0; i < N; i++) {
		for (int j = i + 1; j < N; j++) {
			for (int k = j + 1; k < N; k++) {
				int temp = card[i] + card[j] + card[k];
				if (temp <= M) blackjack = max(blackjack, temp);
			}
		}
	}
	cout << blackjack << endl;
	return 0;
}
