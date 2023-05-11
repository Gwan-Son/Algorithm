#include <iostream>
#include <algorithm>

using namespace std;

struct points{
    int x, y;
};

bool cmp(points &a, points &b){
    if(a.x == b.x){
        return a.y < b.y;
    }
    else{
        return a.x < b.x;
    }
}

points pointsN[100001];

int main(){
    int N;
    cin >> N;
    for(int i = 0; i < N; i++){
        cin >> pointsN[i].x >> pointsN[i].y;
    }
    sort(pointsN, pointsN + N, cmp);
    for(int i = 0; i < N; i++){
        cout << pointsN[i].x << " " << pointsN[i].y << "\n";
    }
    return 0;
}
