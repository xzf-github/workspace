#include<stdio.h>
#include<stdlib.h>
#define InitSize 10
#define ElemType int
typedef struct{
    ElemType *data;
    int MaxSize;
    int length;
}SeqList;
void InitList(SeqList &L){
    //用malloc函数申请一片连续的存储空间
    L.data=(ElemType*)malloc(InitSize*sizeof(ElemType));
    L.MaxSize=InitSize;
    L.length=0;
}
void IncreaseSize(SeqList &L,int len){
    ElemType*p=L.data;
    L.data=(ElemType*)malloc((L.MaxSize+len)*sizeof(ElemType));
    for(int i=0;i<L.MaxSize;i++){
        L.data[i]=p[i];
    }
    L.MaxSize=L.MaxSize+len;
    free(p);
}
int main(){
    SeqList L;
    InitList(L);
    //...往顺序表中随便加入几个元素
    IncreaseSize(L,5);
    return 0;
}