#include<bits/stdc++.h>
using namespace std;
#define maxn 520
int a[maxn],b[maxn],c[maxn];
int main(){
    string A,B;
    cin>>A>>B;
    int len=max(A.length(),B.length());
    for(int i=A.length()-1,j=1;i>=0;i--,j++)a[j]=A[i]-'0';
    for(int i=B.length()-1,j=1;i>=0;i--,j++)b[j]=B[i]-'0';
    for(int i=1;i<=len;i++){
        c[i]+=a[i]+b[i];//计算贡献
        c[i+1]+=c[i]/10;//模拟进位
        c[i]%=10;
    }
    if(c[len+1])len++;//最后进位可能会导致位数增加
    for(int i=len;i>0;i--)//倒序输出，最后一位存放的数字为最高数位的数字
        cout<<c[i];
    return 0;
}

