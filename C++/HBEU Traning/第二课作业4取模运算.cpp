/*
定义“取模”运算：对于正整数 a 和p，a % p 表示a 除以p 的余数，
又称“模”运算。现在，输入三个正整数b、p、k，请编程计算b^p % k 的值。
*/
#include<bits/stdc++.h>
using namespace std;
#define ll long long
const int N = 1e3+10;
ll mod(ll a,ll p,ll k){
	if(p==1)return a%k;
	if(p%2)return mod(a%k,p-1,k)*a%k;
	else return mod(a*a%k,p/2,k)%k;
}
int main(){
	ll a,p,k;
	cin>>a>>p>>k;
	cout<<mod(a,p,k);
	return 0;
}
