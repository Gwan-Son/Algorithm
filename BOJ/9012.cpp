#include <iostream>
#include <stack>

using namespace std;

int main() {
	int T, opencnt = 0;
	string s;
	cin >> T;
	for (int i = 0; i < T; i++) {
		stack<char> VPS;
		opencnt = 0;
		s = "";
		cin >> s;
		for (int j = 0; j < s.size(); j++) {
			VPS.push(s[j]);
		}
		while (!VPS.empty()) {
			if (opencnt < 0) break;
			if (VPS.top() == ')') {
				opencnt++;
				VPS.pop();
			}
			else {
				opencnt--;
				VPS.pop();
			}
		}
		if (opencnt == 0) {
			cout << "YES" << "\n";
		}
		else {
			cout << "NO" << "\n";
		}
	}
	return 0;
}
