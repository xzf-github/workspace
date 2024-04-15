#include<stdio.h>
#include<malloc.h>
typedef struct Node *Polynomial;
struct Node{
    int coef,expon;
    Polynomial next;
};
void Attach(int c,int e,Polynomial *pRear){//将当前多项式插入链表尾部 
/*参数*prear为指向指针的指针（双重指针）用来改变传入参数指针指向的地址 
*/
	//新结点 
    Polynomial p=(Polynomial)malloc(sizeof(struct Node));
    p->coef=c;
    p->expon=e;
    p->next=NULL;
    
    (*pRear)->next=p;
    *pRear=p;
}
Polynomial ReadPoly(){//读入链表 
	Polynomial p,rear,tmp; 
    int t=0,e,c;
	p=(Polynomial)malloc(sizeof(struct Node));//链表头空结点 
    p->next=NULL;
    rear=p;
    scanf("%d",&t);
    while(t--){
        scanf("%d%d",&c,&e);
        Attach(c,e,&rear);
    }
    
    tmp=p;
    p=p->next;
    free(tmp);
    return p;
}
Polynomial Mult(Polynomial p1,Polynomial p2){
    Polynomial t,t1,t2,p,rear;
    int c,e;
    if(!p1||!p2)return NULL;
    t1=p1,t2=p2;
    p=(Polynomial)malloc(sizeof(struct Node));
    p->next=NULL;
    rear=p;
    while(t2){
        Attach(t1->coef*t2->coef,t1->expon+t2->expon,&rear);
        t2=t2->next;
    }
    t1=t1->next;
    while(t1){
        t2=p2;
        rear=p;
        while(t2){
            e=t1->expon+t2->expon;
            c=t1->coef*t2->coef;
            while(rear->next&&rear->next->expon>e)rear=rear->next;
            if(rear->next&&rear->next->expon==e){
                if(rear->next->coef+c){//若系数相加不为0 
                    rear->next->coef+=c;
                }else{//若系数相加为0
				//经典free结点操作 
                    t=rear->next;
                    rear->next=t->next;
                    free(t);
                }
            }else{
                t=(Polynomial)malloc(sizeof(struct Node));
                t->coef=c;
                t->next=rear->next;
                rear->next=t;
                rear=rear->next;
            }
            t2=t2->next;
        }
        t1=t1->next;
    }
    rear=p;
    p=p->next;
    free(rear);
    return p;
}
Polynomial Add(Polynomial p1,Polynomial p2){
    Polynomial t1,t2,p,rear,tmp;
    t1=p1;
    t2=p2;
    p=(Polynomial)malloc(sizeof(struct Node));
    p->next=NULL;
    rear=p;
    //以下为归并过程，与merge sort类似 
    while(t1&&t2){
        if(t1->expon==t2->expon){//如果指数相同 
            if(t1->coef+t2->coef){//且系数相加不为0 
                Attach(t1->coef*t2->coef,t1->expon+t2->expon,&rear);
            }
        }else if(t1->expon>t2->expon){//如果t1当前项的指数大于t2当前项的指数 
            Attach(t1->coef,t1->expon,&rear);
        }else{
            Attach(t2->coef,t2->expon,&rear);
        }
    }
    while(t1){
        Attach(t1->coef,t1->expon,&rear);
        //t1=t1->next;
    }
    while(t2){
        Attach(t2->coef,t2->expon,&rear);
        //t2=t2->next;
    }
    
    tmp=p;
    p=p->next;
    free(tmp);
    return p;
}
void PrintPoly(Polynomial p){
    int flag=0;
    if(!p){
        printf("0 0\n");
        return;
    }
    while(p){
        if(!flag)flag=1;
        else printf(" ");
        printf("%d %d",p->coef,p->expon);
        p=p->next;
    }
    puts("");
}
int main(){
    Polynomial p1,p2,pp,ps;
    p1=ReadPoly();
    p2=ReadPoly();
    pp=Mult(p1,p2);
    PrintPoly(pp);
    ps=Add(p1,p2);
    PrintPoly(ps);
    return 0;
}
/*
#include <iostream>
using namespace std;
typedef struct Node *PtrToNode;
struct Node{
	int col;
	int exp;
	PtrToNode next;
};
typedef PtrToNode List;
List read(){
    int N,col,exp;
    scanf("%d",&N);
    List head=(struct Node*)malloc(sizeof(struct Node));//头结点
    head->next=NULL;//设置头结点
    if(N){//N有可能为0
        List p=head;//指针
        for(int i=0;i<N;i++){
            List cur=(struct Node*)malloc(sizeof(struct Node));
            scanf("%d %d",&cur->col,&cur->exp);
            p->next=cur;
            p=p->next;
        }
        p->next=NULL;//设置尾指针
    }
    return head;
}
List Listadd(List L1,List L2);
List Listplus(List L1,List L2){
    List L=(struct Node*)malloc(sizeof(struct Node));//L也有头指针
    L->next=NULL;
    List p1=L1->next;//跨过头指针
    List p2=L2->next;
    while(p1){
        List tp=(List)malloc(sizeof(struct Node));
        tp->next=NULL;
        List t=tp;
        p2=L2->next;
        while(p2){
            List temp=(struct Node*)malloc(sizeof(struct Node));
            temp->col=(p1->col)*(p2->col);
            temp->exp=(p1->exp)+(p2->exp);
            temp->next=NULL;
            t->next=temp;
            t=t->next;
            p2=p2->next;
        }
        t->next=NULL;
        L=Listadd(L,tp);
        p1=p1->next;
    }
    return L;
}

List Listadd(List L1,List L2){
    List L=(struct Node*)malloc(sizeof(struct Node));
    L->next=NULL;
    List pL=L;
    List p1=L1->next;//跨过头指针
    List p2=L2->next;
    while(p1&&p2){
        if(p1->exp==p2->exp){
            if((p1->col+p2->col)!=0){
                List temp=(struct Node*)malloc(sizeof(struct Node));
                temp->col=p1->col+p2->col;
                temp->exp=p1->exp;
                temp->next=NULL;
                pL->next=temp;
                pL=pL->next;
            }
            p1=p1->next;
            p2=p2->next;
        }else if(p1->exp>p2->exp){
            List temp=(struct Node*)malloc(sizeof(struct Node));
            temp->col=p1->col;
            temp->exp=p1->exp;
            temp->next=NULL;
            pL->next=temp;
            p1=p1->next;
            pL=pL->next;
        }else{
            List temp=(struct Node*)malloc(sizeof(struct Node));
            temp->col=p2->col;
            temp->exp=p2->exp;
            temp->next=NULL;
            pL->next=temp;
            p2=p2->next;
            pL=pL->next;
        }
    }
    //还有没被加入的余链
    if(p1){
        while(p1){
            List temp=(struct Node*)malloc(sizeof(struct Node));
            temp->col=p1->col;
            temp->exp=p1->exp;
            temp->next=NULL;
            pL->next=temp;
            pL=pL->next;
            p1=p1->next;
        }
    }
    if(p2){
        while(p2){
            List temp=(struct Node*)malloc(sizeof(struct Node));
            temp->col=p2->col;
            temp->exp=p2->exp;
            temp->next=NULL;
            pL->next=temp;
            pL=pL->next;
            p2=p2->next;
        }
    }
    pL->next=NULL;
    return L;
}

void print(List L){
    List t=L;
    L=L->next;
    free(t);
    if(L==NULL){
        printf("0 0");
    }else{
        int flag=1;
        while(L){
            if(flag){
                flag=0;
            }else{
                printf(" ");
            }
            printf("%d %d",L->col,L->exp);
            L=L->next;
        }
    }
    printf("\n");
}

int main(){
    List L1,L2,LP,LA;
    L1=read();
    L2=read();
    LP=Listplus(L1,L2);
    print(LP);
    LA=Listadd(L1,L2);
    print(LA);
    return 0;
}
*/ 
