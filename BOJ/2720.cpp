#include <iostream>

using namespace std;

int main() {
    int T;

    cin >> T;

    for(int i = 0; i < T; i++){
        int C;
        int Q = 0,D = 0,N = 0,P = 0;
        cin >> C;
        while(C > 0){
            if(C >= 25){
                Q = C/25;
                C = C%25;
            } else if(C >= 10){
                D = C/10;
                C = C%10;
            } else if(C >= 5){
                N = C/5;
                C = C%5;
            } else{
                P = C;
                C = 0;
            }
        }
        cout << Q << " " << D << " " << N << " " << P << "\n";
    }
    
    return 0;
}
