/*

*/
#include<bits/stdc++.h>
using namespace std;
const int N = 1e3+10;
int a[N],n,x; 
int bsearch(int a[],const int& x,int n){
	int l=0,r=n-1;
	while(l<=r){
		int mid=(l+r)/2;
		if(x==a[mid])return mid;
		if(x>a[mid])l=mid+1;
		else r=mid-1;
	}
	return -1
}
int main(){
	cin>>n>>x;
	for(int i=0;i<n;i++)cin>>a[i];
	sort(a,a+n);
	int l=0,r=n-1;
	while(l<r){
		int mid=(l+r)/2;
		if(check(mid))r=mid;
		else l=mid+1;
	}
	
	return 0;
}

