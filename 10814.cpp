//https://www.acmicpc.net/problem/10814
#include <iostream>
#include <algorithm>
#include <vector>
#include <string>

using namespace std;

struct person {
	int age, number;
	string name;
};

vector<person> s;

bool personCpm(person a, person b) {
	if (a.age == b.age) {
		return a.number < b.number;
	}
	else {
		return a.age < b.age;
	}
}

int main() {
	int N;
	int tempAge = 0,tempNumber = 0;
	string tempName = "";
	cin >> N;
	for (int i = 0; i < N; i++) {
		tempAge = 0;
		tempName = "";
		tempNumber++;
		cin >> tempAge >> tempName;
		s.push_back({tempAge,tempNumber,tempName});
	}
	sort(s.begin(), s.end(), personCpm);
	for (int i = 0; i < s.size(); i++) {
		cout << s[i].age << " " << s[i].name << "\n";
	}

	return 0;
}
