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
        c[i]+=a[i]+b[i];//���㹱��
        c[i+1]+=c[i]/10;//ģ���λ
        c[i]%=10;
    }
    if(c[len+1])len++;//����λ���ܻᵼ��λ������
    for(int i=len;i>0;i--)//������������һλ��ŵ�����Ϊ�����λ������
        cout<<c[i];
    return 0;
}

