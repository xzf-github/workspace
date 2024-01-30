#include<bits/stdc++.h>
using namespace std;
string s,s1;
int func(string s){
    int n=s.size();
    s=s+s;
    int i=0,j=1,k=0;
    while(i<n&&j<n){
        if(s[i+k]==s[j+k])k++;
        else{
            s[i+k]>s[j+k]?i=i+k+1:j=j+k+1;
            if(i==j)j++;
            k=0;
        }
    }
    return min(i,j);
}
int main(){
    cin>>s;
    int pos=func(s);
    s1=s.substr(pos)+s.substr(0,pos);
    cout<<s1<<endl;
}