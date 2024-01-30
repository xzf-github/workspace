#include<stdio.h>
#include<malloc.h>
#define ElementType int
#define MAXN 1000
typedef struct LNode *List;
struct LNode{
    ElementType Data[MAXN];
    int Last;
};
struct LNode L;
List PtrL;
//访问下标为i的元素：L.Data[i]或PtrL->Data[i]
//线性表的长度：L.Last+1或PtrL->Last+1

//操作集
//1.初始化（建立空的顺序表）
List MakeEmpty(){
    List PtrL;
    PtrL=(List)malloc(sizeof(struct LNode));
    PtrL->Last=-1;
    return PtrL;
}
//2.查找
int Find(ElementType X,List PtrL){
    int i=0;
    while(i<=PtrL->Last&&PtrL->Data[i]!=X)
        i++;
    if(i>PtrL->Last)return -1;//如果没找到，返回-1
    else return i;//找到后返回存储位置
}
//3.插入（第i个位置上插入一个值为X的新元素）i∈[1,n+1]
void Insert(ElementType X,int i,List PtrL){
    if(PtrL->Last==MAXN-1){
        printf("Full List");//表满
        return;
    }
    if(i<1||i>PtrL->Last+2){
        printf("位置不合法");
        return;
    }
    for(int j=PtrL->Last;j>=i-1;j--)
        PtrL->Data[j+1]=PtrL->Data[j];
    PtrL->Data[i-1]=X;
    PtrL->Last++;
    return;
}
//4.删除（删除表中第i个位置上的元素）i∈[1,n]
void Delete(int i,List PtrL){
    if(i<1||i>PtrL->Last+1){
        printf("不存在第i个元素");
        return;
    }
    for(int j=i-1;j<PtrL->Last;j++)
        PtrL->Data[j]=PtrL->Data[j+1];

    PtrL->Last--;
    return;
}