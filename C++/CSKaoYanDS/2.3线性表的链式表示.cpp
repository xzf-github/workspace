#include<stdio.h>
#include<stdlib.h>
#define ElemType int
typedef struct LNode{
    ElemType data;
    struct LNode *next;
}LNode,*LinkList;
void Init_LinkList(LinkList &L){
    L=(LNode*)malloc(sizeof(LNode));
    L->next=NULL;
}
void LNodeInsert(LinkList &L,LNode *p){
    p->next=L->next;
    L->next=p;
}
//t5
void LinkListReverse(LinkList &L){
    LNode *p=(LNode*)malloc(sizeof(LNode));
    p=L->next;
    while(p!=NULL){
        //第一个结点不用插入,初始就在头结点后面
        if(p!=L->next)LNodeInsert(L,p);
        p=p->next;
    }
}
void divideLinkList(LinkList &A,LinkList &B){
    Init_LinkList(B);
    int i=0;
    LNode *m=A,*n=B;
    while(m->next!=NULL){
        if(++i%2==0){
            
        }
    }
}