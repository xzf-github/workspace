#include<bits/stdc++.h>
using namespace std;
void test(int &x){
    x=1024;
}
int main(){
    int x=1;
    printf("调用前x的值为%d\n",x);
    test(x);
    printf("调用后x的值为%d\n",x);
    return 0;
}