/*
3、城市路径
【问题描述】
地图上有 n 个城市，一只奶牛要从 1 号城市开始依次经过这些城市，最终到达 n 号城市。
但是这只奶牛觉得这样太无聊了，所以它决定跳过其中的一个城市(但是不能跳过 1 号和 n 号城市)，
使得它从 1 号城市开始，到达 n 号城市所经过的总距离最小。
假设每一个城市 i 都有一个坐标(x i ，y i )，
从(x1，y1)的城市1到(x2，y2)的城市2之间的距离为|x1-x2|+|y1-y2|
【输入格式】
第 1 行 1 个正整数 n，表示城市个数。
接下来的 n 行，每行 2 个数 x i 和 y i ，表示城市 i 的坐标。
【输出格式】
一行一个数，使得它从1号城市开始，跳过某一个城市，到达n号城市所经过的最小总距离。
【输入样例】
4
0 0
8 3
11 -1
10 0
【输出样例】
14
【样例说明】
跳过 2 号城市。
【数据规模】
对于 40% 的数据满足：n≤1000。
对于 100% 的数据满足：3≤n≤100000，-1000≤x i ，y i ≤1000。
【问题分析】
设f (i)为从城市1依次跳到城市i的距离之和，设g(i)为从城市i依次跳到城市n的距离之
和，则问题的答案为 min{f (i-1)+g(i+1)+dis[i-1,i+1]}。
其中，dis [i-1,i+1]表示城市 i-1 到城市 i+1的曼哈顿距离，
f (i)和 g(i)都可以用递推来预处理求出：f(i)= f(i-1)+ dis[i-
1,i]，g(i) =g(i+1) +dis[I,i+1]。
也可以设 f (i)表示从城市 1 依次跳到城市 n，且跳过城市 i 的距离之和，
sum 表示表示从城市 1 依次跳到城市 n 的距离之和，
则 f (i)=min{sum–dis[I,i-1]-dis[i+1.i]+dis[i-1,i+1]}
*/
#include<bits/stdc++.h>
using namespace std;
const int N = 1e5+10;
int f[N],g[N],ans=0x7fffffff;//f[i]=f[i-1]+dis(i-1,i),g[i]=g[i+1]+dis(i,i+1)
//f[0]=f[1]=0 g[n]=0 g[n-1]=0+dis(n-1,n);
int pos[N][2];
int dis(int m,int n){
	//两城之间距离公式| x 1-x 2 | + | y 1-y 2 |
	return abs(pos[m][0]-pos[n][0])+abs(pos[m][1]-pos[n][1]);
}
int main(){
	int n;
	cin>>n;
	f[1]=g[n]=0;
	for(int i=1;i<=n;i++){
		cin>>pos[i][0]>>pos[i][1];//读入每座城市的xy坐标 
	}
	for(int i=2;i<=n;i++){//f(i)递推预处理 
		f[i]=f[i-1]+dis(i-1,i);
	}
	for(int i=n-1;i>=1;i--){//g(i)递推预处理 
		g[i]=g[i+1]+dis(i,i+1);
	}
	for(int i=2;i<=n-1;i++){
		ans=min(ans,f[i-1]+g[i+1]+dis(i-1,i+1));
		//cout<<f[i-1]+g[i+1]+dis(i-1,i+1)<<endl;
	}
	//for(int i=1;i<n;i++)cout<<dis(i,i+1)<<endl;
	cout<<ans;
	return 0;
}

