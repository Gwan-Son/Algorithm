//https://www.acmicpc.net/problem/2869
#include <iostream>
#include <algorithm>

using namespace std;

int main() {
	int A, B, V;
	int result = 0;

	cin >> A >> B >> V;

	result = (V - B - 1) / (A - B) + 1;
	
	cout << result << "\n";

	return 0;
}
