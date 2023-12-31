/*
5、偶数个3
【问题描述】
编程求出所有的 n 位数中，有多少个数中有偶数个数字 3。
【输入格式】
一行一个正整数 n，0<n<1000。
【输出格式】
一行一个正整数，表示 n 位数中有多少个数有偶数个 3。
【输入样例】
2
【输出样例】
73
*/
#include<bits/stdc++.h>
using namespace std;
const int N = 1e3+10;
int a[N],b[N];//a是n位数奇数个3的数量,b是偶数... 
//递推公式a(i)=a(i-1)*9+b(i-1),b(i)=b(i-1)*9+a(i-1) 
int main(){
	a[1]=1;
	b[1]=8;
	int n;
	cin>>n;
	for(int i=2;i<=n;i++){
		a[i]=a[i-1]*9+b[i-1];
		b[i]=b[i-1]*9+a[i-1];
	}
	cout<<b[n]; 
	return 0;
}
/*
【问题分析】
无论一个多位数中有几个 3，都可以分为奇数个和偶数(包括 0)个两组，在一个
多位数末尾加上一个 3，就会改变其奇偶性，加其他数字都不会改变它的奇偶性。
所以，可以 1~9 这九个一位数为基础，采用每次向末尾加一位的方法，逐步构
造并达到 n 位数，来讨论它们的奇偶性。
设 a(i) 存储 i 位数中 3 为奇数的个数，b(i)存储 i 位数中 3 为偶数的个数，则很容
易推出递推关系式：a(i) = a(i-1)×9+b(i-1)，b(i) = b(i-1)×9+a(i-1)，因为首位不
为 0，所以边界条件为：a(1) = 1，b(1) = 8。程序实现时，也可以用一个数组来优化。
*/

