#include <iostream>
#include <queue>
using namespace std;

queue<int> yosepoose;
queue<int> yosepoose_permutation;

int main(){
    int N, K, temp;
    cin >> N >> K;
    for(int i = 1; i <= N; i++){
        yosepoose.push(i);
    }
    while (true)
    {
        if(yosepoose.size() <= 0) break;
        for(int j = 0; j < K - 1; j++){
            temp = yosepoose.front();
            yosepoose.pop();
            yosepoose.push(temp);
        }
        temp = yosepoose.front();
        yosepoose.pop();
        yosepoose_permutation.push(temp);
    }
    cout << "<";
    for(int i = 0; i < N; i++){
        if(yosepoose_permutation.size() != 1){
            cout << yosepoose_permutation.front() << ", ";
            yosepoose_permutation.pop();
        }
        else{
            cout << yosepoose_permutation.front();
            yosepoose_permutation.pop();
        }
    }
    cout << ">";
    
    return 0;
}
