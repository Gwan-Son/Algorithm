#include <iostream>
#include <queue>

using namespace std;

queue<int> card;

int main() {
	int N, temp;

	cin >> N;

	for (int i = 1; i <= N; i++) {
		card.push(i);
	}

	while (card.size() > 1) {
		card.pop();
		if (card.size() == 1) break;
		temp = card.front();
		card.pop();
		card.push(temp);
	}
	cout << card.front() << "\n";
	return 0;
}
