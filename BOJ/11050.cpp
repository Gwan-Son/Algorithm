#include <iostream>
#include <algorithm>

using namespace std;

int binomial(int n, int k){
    if( k == 0 || n == k) return 1;
    return binomial(n - 1, k - 1) + binomial(n - 1, k);
}

int main(){
    int N, K;
    cin >> N >> K;
    cout << binomial(N, K);
    return 0;
}
