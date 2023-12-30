/*2023码蹄杯省赛真题 难度白银*/
#include<bits/stdc++.h> 
using namespace std;
int m,n;//1 1000 1 9
int main( ){
    cin>>m>>n;
    for(int i=1;;i++){
        if(m%10==0 || i*m%10==n ||i*m%10==0){
            cout<<i;
            return 0;
        }
    }
    return 0;
}