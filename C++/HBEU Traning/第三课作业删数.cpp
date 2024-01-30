/*

*/
#include<bits/stdc++.h>
using namespace std;
const int N = 1e3+10;
string n;
int s;
int main(){
	cin>>n>>s;
	string mini=n;
	//cout<<n.substr(0,3)+n.substr(3+s,n.size()-3-s);
	for(int i=0;i<=n.size()-s;i++){
		if(mini>(n.substr(0,i)+n.substr(i+s,n.size()-(i+s)))){
			mini=n.substr(0,i)+n.substr(i+s,n.size()-(i+s));
		}
		//cout<<n.substr(0,i)+n.substr(i+s,n.size()-(i+s))<<endl;
	}
	cout<<mini;
	return 0;
}

