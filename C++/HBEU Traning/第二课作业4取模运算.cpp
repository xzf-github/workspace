/*
���塰ȡģ�����㣺���������� a ��p��a % p ��ʾa ����p ��������
�ֳơ�ģ�����㡣���ڣ���������������b��p��k�����̼���b^p % k ��ֵ��
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
