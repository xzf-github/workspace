/*

*/
#include<bits/stdc++.h>
using namespace std;
const int N = 3e4+10;
int w,n,t[N],res;
int main(){
	cin>>w>>n;
	for(int i=0;i<n;i++)cin>>t[i];
	sort(t,t+n);
	for(int i=0,j=n-1;i<=j;){
		if(t[i]+t[j]<=w){
			j--;
			i++;	
		}
		else{
			j--;
		}
		res++;
	}
	cout<<res;
	return 0;
}

