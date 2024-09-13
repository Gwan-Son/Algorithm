//https://www.acmicpc.net/problem/1181
#include <iostream>
#include <algorithm>
#include <vector>
#include <string>

using namespace std;

vector<string> s;

int wordCmp(string a, string b) {
	if (a.length() == b.length()) {
		return a < b;
	}
	else {
		return a.length() < b.length();
	}
}

int main() {
	int N;
	string temp = "";
	cin >> N;
	for (int i = 0; i < N; i++) {
		temp = "";
		cin >> temp;
		s.push_back(temp);
	}
	sort(s.begin(), s.end(),wordCmp);
	for (int i = 0; i < s.size(); i++) {
		if (i != 0) {
			if (s[i] == s[i - 1]) {
				continue;
			}
		}
		cout << s[i] << "\n";
	}

	return 0;
}
