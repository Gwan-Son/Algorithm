#include <iostream>
#include <string>

using namespace std;

int main()
{
    int N, cnt;
    
    
    cin >> N;
    cnt = N;
    
    for(int i = 0; i < N; i++){
        bool alpha[26] = {false};
        string s = "";
        char temp;
        cin >> s;
        
        for(int j = 0; j < s.length(); j++){
            if(alpha[s[j] - 'a'] == false){
                alpha[s[j] - 'a'] = true;
                temp = s[j];
            } else{
                if(temp != s[j]){
                    cnt--;
                    break;
                }
            }
        }
    }
    
    cout << cnt << "\n";

    return 0;
}
