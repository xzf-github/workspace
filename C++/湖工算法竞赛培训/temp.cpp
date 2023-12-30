#include<bits/stdc++.h> 

using namespace std;
int n;
int v[10010],pos[10010];
long long s[10010],ans;
int mi[]={1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192};
int bfind(int x){
    int l=0,r=n-1;
    while(l<=r){
		int mid=(l+r)/2;
		if(x==mi[mid])return mid;
		if(x>mi[mid])l=mid+1;
		else r=mid-1;
	}
	return -1;
}
int main( ){
    //读取输入
    cin>>n;
    int j=0;
    for(int i=1;i<=n;i++){
        scanf("%d",v+i);
    }
    //memset(pos,sizeof(int),1);
    //要求游戏复杂度  而游戏复杂度等于每一个节点的复杂程度的和
    //而每一个节点的复杂程度为,该节点子树上所有节点加权权值的最大值
    // int way;//求出最后一个节点的边数, 倒推计算每个节点到根节点的
    // for(int i=0;n>=mi[i];i++){
    //     way=i;
    // }
    if(n%2==0)n++;
    for(int i=n;i>1;i-=2){
    	int root=i-(i+1)/2;
        if( max(v[i],v[i-1]) > max((pos[i]+1)*s[i],(pos[i-1]+1)*s[i-1]) ){
            if(v[i]>v[i-1]){
                s[root]=v[i];
                pos[root]=1;
            }else{
                s[root]=v[i-1];
                pos[root]=1;
            }
        }else{
            if(s[i]>s[i-1]){
                s[root]=s[i];
                pos[root]=pos[i]+1;
            }else{
                s[root]=s[i-1];
                pos[root]=pos[i-1]+1;
            }
        }
    }//结果s就是每个节点都找到了该子树上所有的节点加权权值的最大值
    //计算每个节点的复杂程度并累加
    for(int i=1;i<=n;i++){
        ans+=s[i]*pos[i];
    	printf("节点%d的最大加权权值为%d,其边数为%d\n",i,s[i],pos[i]);
    }
    cout<<ans;
    return 0;
}
