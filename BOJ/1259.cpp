//https://www.acmicpc.net/problem/1259
#include <iostream>
#include <algorithm>
#include <string>

using namespace std;

int main() {
	string pel, rv_pel;

	while (true) {
		pel = "";
		rv_pel = "";
		cin >> pel;
		if (pel == "0") break;
		rv_pel = pel;
		reverse(rv_pel.begin(), rv_pel.end());
		if (!pel.compare(rv_pel)) {
			cout << "yes" << "\n";
		}
		else {
			cout << "no" << "\n";
		}
	}

	return 0;
}
