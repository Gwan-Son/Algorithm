#include <iostream>
#include <algorithm>
#include <deque>

using namespace std;

deque<int> stk;

int main() {
	int N, temp;
	string s;
	cin >> N;
	for (int i = 0; i < N; i++) {
		cin >> s;
		if (!s.compare("push_front")) {
			cin >> temp;
			stk.push_front(temp);
		}
		else if (!s.compare("push_back")) {
			cin >> temp;
			stk.push_back(temp);
		}
		else if (!s.compare("pop_front")) {
			if (stk.empty()) {
				cout << "-1\n";
			}
			else {
				cout << stk.front() << "\n";
				stk.pop_front();
			}
		}
		else if (!s.compare("pop_back")) {
			if (stk.empty()) {
				cout << "-1\n";
			}
			else {
				cout << stk.back() << "\n";
				stk.pop_back();
			}
		}
		else if (!s.compare("front")) {
			if (stk.empty()) {
				cout << "-1\n";
			}
			else {
				cout << stk.front() << "\n";
			}
		}
		else if (!s.compare("back")) {
			if (stk.empty()) {
				cout << "-1\n";
			}
			else {
				cout << stk.back() << "\n";
			}
		}
		else if (!s.compare("size")) {
			cout << stk.size() << "\n";
		}
		else if (!s.compare("empty")) {
			if (stk.empty()) {
				cout << "1\n";
			}
			else {
				cout << "0\n";
			}
		}
	}
	return 0;
}
