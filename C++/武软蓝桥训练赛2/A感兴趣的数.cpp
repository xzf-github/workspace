/*2019第十届蓝桥杯填空题真题改编*/
#include<bits/stdc++.h>
using namespace std;
int n;
int ans;
bool special(int n){
  while(n){
    switch(n%10){
      case 2:
      case 0:
      case 1:
      case 8:return 1;
    }
    n/=10;
  }
  return 0;
}
int main()
{
  cin>>n;
  for(int i=1;i<=n;i++){
    if(special(i))ans+=i;
  }
  cout<<ans;
  return 0;
}