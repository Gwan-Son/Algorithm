#include <iostream>
#include <algorithm>
#include <stack>

using namespace std;

stack<int> stk;

int main() {
	int N, temp;
	string s;
	cin >> N;
	for (int i = 0; i < N; i++) {
		cin >> s;
		if (!s.compare("push")) {
			cin >> temp;
			stk.push(temp);
		}
		else if (!s.compare("pop")) {
			if (stk.empty()) {
				cout << "-1\n";
			}
			else {
				cout << stk.top() << "\n";
				stk.pop();
			}
		}
		else if (!s.compare("top")) {
			if (stk.empty()) {
				cout << "-1\n";
			}
			else {
				cout << stk.top() << "\n";
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
