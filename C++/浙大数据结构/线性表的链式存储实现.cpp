#include<stdio.h>
#include<malloc.h>
#define ElementType int
typedef struct LNode *List;
struct LNode{
    ElementType data;
    List next;
}L;
List PtrL;
//操作集
//1.求表长
int Length(List PtrL){
    List p=PtrL;//p指向表的第一个结点
    int j=0;
    while(p){
        p=p->next;
        j++;//当前p指向的是第j个结点
    }
    return j;
}

//2.查找
//2.1按序号查找
List FindKth(int k,List PtrL){
    if(k<1){
        printf("参数k非法");
        return NULL;
    }
    List p=PtrL;
    int i=1;
    while(p!=NULL&&i<k){
        p=p->next;
        i++;
    }
    if(i==k)return p;//找到第k个,返回指针
    else return NULL;//否则返回空
}
//2.2按值查找:Find
List Find(ElementType X,List PtrL){
    List p=PtrL;
    while(p!=NULL&&p->data!=X)
        p=p->next;
    return p;
}

//3.插入(在第i个结点前插入一个值为X的新结点),原第i个结点变为第i+1个结点,新插入结点变为第i个结点
/*
1.先构造一个新结点,用s指向;
2.在找到链表的第i-1个结点,用p指向;
3.然后修改指针,插入结点(p之后插入新结点是s)
*/
bool Insert(ElementType x,int i,List PtrL){//PtrL为传入链表的头指针
    List p=PtrL,s;//p指向传入链表的头结点
    for(int j=1;p&&j<i;p=p->next,j++);//循环i-1次,循环结束后,p指向第i-1个元素结点
    //此时p->next所指的结点即为第i个元素结点
    if(!p){//如果此时p指向NULL,则第i-1个元素结点不存在
        puts("第i个元素不存在");
        return false;
    }
    s=(List)malloc(sizeof(LNode));
    s->data=x;
    s->next=p->next;
    p->next=s;
    return true;
}
/*
bool Insert( List L, ElementType X, Position P ){ // 这里默认L有头结点
    Position tmp, pre;

    // 查找P的前一个结点       
    for ( pre=L; pre&&pre->Next!=P; pre=pre->Next ) ;            
    if ( pre==NULL ) { // P所指的结点不在L中 
        printf("插入位置参数错误\n");
        return false;
    }
    else { // 找到了P的前一个结点pre 
        // 在P前插入新结点 
        tmp = (Position)malloc(sizeof(struct LNode)); // 申请、填装结点 
        tmp->Data = X; 
        tmp->Next = P;
        pre->Next = tmp;
        return true;
    }
}
*/

//4.删除(删除链表的第i个位置上的结点)
/*
1.先找到链表的第i-1个结点,用p指向;
2.再用指针s指向要被删除的结点(p的下一个结点);
3.然后修改指针,删除s所指结点;
4.最后释放s所指结点的空间
*/
List Delete(int i,List PtrL){
    List p,s;
    if(i==1){//若要删除的是表的第一个结点
        s=PtrL;//s指向第一个结点
        if(PtrL!=NULL)PtrL=PtrL->next;//从链表中删除
        else return NULL;
        free(s);//释放被删除结点
        return PtrL;
    }
    p=FindKth(i-1,PtrL);//查找第i-1个结点
    if(p==NULL){
        printf("第%d个结点不存在",i);
        return NULL;
    }else if(p->next==NULL){
        printf("第%d个结点不存在",i);
        return NULL;
    }else{
        s=p->next;//s指向第i个结点
        p->next=s->next;//从链表中删除
        free(s);//释放被删除结点
        return PtrL;
    }
}