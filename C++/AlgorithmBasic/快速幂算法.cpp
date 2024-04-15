#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#define ll long long
int main(){
    ll base,exp,mod,res;
    //printf("请输入底数base,幂指数exp,模数mod(空格隔开)\n");
    scanf("%lld%lld%lld",base,exp,mod);
    base%=mod;
    while(exp>0){
        if(exp%2)res=(res*base)%mod;
        base=(base*base)%mod;
        exp/=2;
    }
    printf("%lld",res);
    return 0;
}
