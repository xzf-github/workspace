#include <bits/stdc++.h>
using namespace std;
int p[10000];//存储最大祖先的数组  p[i]为i的最大祖先
int findi(int x){
    if(p[x]!=x)p[x]=findi(p[x]);
    //如果当前祖先不是自己,则不断向上找自己的最大祖先
    //每次递归相当于访问自己当前的祖先,并查询祖先的祖先是谁
    return p[x];
}
int main(){
    int n,m,z,x,y;
    cin>>n>>m;
    for(int i=1;i<=n;i++)p[i]=i;
    for(int i=0;i<m;i++){
        cin>>z>>x>>y;
        if(z==1)p[findi(x)]=findi(y);//并
        else{
            if(findi(x)==findi(y))cout <<"Y\n";//查
            else cout <<"N\n";
        }
    }
}
