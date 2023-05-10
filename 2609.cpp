#include <iostream>
#include <algorithm>

using namespace std;

int main() {
	int A, B, temp;
	int i = 2;

	cin >> A >> B;
	temp = max(A, B);
	for (temp; temp >= 1; temp--) {
		if (A % temp == 0 && B % temp == 0) {
			cout << temp << "\n";
			break;
		}
	}
	cout << A * B / temp << "\n";
	return 0;
}
