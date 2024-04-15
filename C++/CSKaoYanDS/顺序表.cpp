#include<stdio.h>
#include<stdlib.h>
#define InitSize 10
#define ElemType int
typedef struct{
    ElemType *data;
    int MaxSize;
    int length;
}SqList;
void InitList(SqList &L){
    //用malloc函数申请一片连续的存储空间
    L.data=(ElemType*)malloc(InitSize*sizeof(ElemType));
    L.MaxSize=InitSize;
    L.length=0;
}
void IncreaseSize(SqList &L,int len){
    ElemType*p=L.data;
    L.data=(ElemType*)malloc((L.MaxSize+len)*sizeof(ElemType));
    for(int i=0;i<L.MaxSize;i++){
        L.data[i]=p[i];
    }
    L.MaxSize=L.MaxSize+len;
    free(p);
}
//元素插入(按位序)
bool ListInsert(SqList &L,int i,int e){
    //判断i的范围是否有效
    if(i<1||i>L.length+1)return false;
    //当前存储空间已满,不能插入
    if(L.length>=L.MaxSize)return false;
    //将第i个元素及之后的元素后移
    for(int j=L.length;j>=i;j--)
        L.data[j]=L.data[j-1];
    //在位置i处放入e
    L.data[i-1]=e;
    //顺序表总长度加1
    L.length++;
    return true;
}
bool ListDelete(SqList &L,int i,int &e){
    if(i<1||i>L.length)return false;
    e=L.data[i-1];
    for(int j=i;j<L.length;j++)
        L.data[j-1]=L.data[j];
}
int main(){
    SqList L;
    InitList(L);
    //...往顺序表中随便加入几个元素
    IncreaseSize(L,5);
    return 0;
}