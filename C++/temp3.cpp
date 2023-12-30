/*2023码蹄杯省赛真题 难度白银*/
#include<bits/stdc++.h> 
using namespace std;
int m,n;
int main( ){
    cin>>m>>n;
    for(int i=1;;i++){
        /*1.m直接就是10的倍数,不需要用代金券,不用找零
        2.买了i个之后 i*m的余数正好等于代金券的面额,也不用找零
        3.买了i个之后 i*m是10的倍数,不需要用代金券,不用找零*/
        if(m%10==0 || i*m%10==n ||i*m%10==0){
            cout<<i;
            return 0;
        }
    }
    return 0;
}