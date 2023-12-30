/*洛谷语言月赛真题*/
#include<bits/stdc++.h>
using namespace std;
int n, k, b;
int ans;
int main(){
    cin >> n >> k >> b;
    for (int i = 1; i <= n; i++) {
        int x, y;
        cin >> x >> y;
        long long y0=1ll*k*x+b;
        if(y==y0)ans++;
    }
    cout <<ans<< endl;
}
