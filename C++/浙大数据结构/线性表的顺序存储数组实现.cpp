#include<stdio.h>
#include<malloc.h>
#define MAXN 100
#define ElementType int
ElementType L[MAXN];//下标0存最后一个元素的位置
//1.初始化（建立空表）
void MakeEmpty(){
    L[0]=-1;
}
//2.查找
int Find(ElementType X){
    int i=-1;
    for(int j=1;j<=L[0];j++){
        if(L[j]==X){
            i=j;
            break;
        }
    }
    return i;
}
//3.插入
void Insert(ElementType X,int i){
    if(L[0]>=MAXN){
        printf("表满");
        return;
    }
    if(i<1||i>L[0]+1){
        printf("位置不合法");
        return;
    }
    for(int j=L[0];j>=i;j--)
        L[j+1]=L[j];
    
    L[i]=X;
    L[0]++;
}
//4.删除
void Delete(int i){
    if(i<1||i>L[0]){
        printf("位置不合法");
        return;
    }
     for(int j=i;j<L[0];j++)
        L[j]=L[j+1];
    
    L[0]--;
}