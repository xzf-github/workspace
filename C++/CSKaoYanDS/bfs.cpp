#include<stdio.h>
#define N 10000
#define MaxSize 100
#define ElemType int
bool visited[N];
//邻接矩阵方式存储有向图，ve为邻接矩阵，size为当前图的顶点数，初始为0
typedef struct Graph
{
    ElemType vertex[MaxSize];
    int AdjMatrix[MaxSize][MaxSize];
    int size;
}Graph,G;
void insertVertex(Graph G,ElemType x){
    printf("请输入要插入的顶点：");
    scanf("%d",&x);
    for(int i=0;i<=G.size;i++){
        if(!G.vertex[i]){
            G.vertex[i]=1;
            G.size++;
            break;
        }
    }
}
void addEdge(Graph G,int x,int y){
    printf("请输入要插入的弧尾和弧头：");
    scanf("%d %d",&x,&y);//暂时不考虑权值
    G.AdjMatrix[x][y]=1;
}
void BFSTraverse(){

}
int main(){

    return 0;
}