#include<bits/stdc++.h>
using namespace std;
const int N = 1e6+10;
int a[N],n,h;
bool check(int mid){
	long long sum=0;
	for(int i=n-1;i>=0;i--){
		if(a[i]<mid)break;
		sum+=a[i]-mid;
	}
	//printf("��ǰľ��:%d ",sum);
	return sum>=h;
}
int main(){
	//freopen("cuttree1.txt","r",stdin);
	cin>>n>>h;
	for(int i=0;i<n;i++)cin>>a[i];
	sort(a,a+n);
	int l=a[0],r=a[n-1];
	while(l<r){
		int mid=(l+r+1)/2;
		if(check(mid))l=mid;
		else r=mid-1;
		//printf("��ǰ��߽�:%d ��ǰ�ұ߽�:%d\n",l,r);
	}
	cout<<l<<endl;
	return 0;
}

