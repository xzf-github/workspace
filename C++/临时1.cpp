#include<bits/stdc++.h>
using namespace std;
int func(string a){
    int n=a.length();
    int k=0,i=0,j=1;
    while(k<n&&i<n&&j<n){
        if(a[(i+k)%n]==a[(j+k)%n])k++;
        else{
            a[(i+k)%n]>a[(j+k)%n]?i=i+k+1:j=j+k+1;
            if(i==j)i++;
            k=0;
        }
    }
    return min(i,j);
}
int main(){
    string a,a1;
    cin>>a;
    int pos=func(a);
    a1=a.substr(pos)+a.substr(0,pos);
    cout<<a1<<endl; 
    // a=a+a;
    // cout<<a;
}