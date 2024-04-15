#include <stdio.h>  
#include <stdlib.h>  
#include <stdbool.h>  
  
// 定义栈的最大容量  
#define MAX_SIZE 100  
  
// 定义栈的结构体  
typedef struct {  
    int top;                    // 栈顶指针  
    unsigned length;         // 栈的容量  
    int* array;                 // 存储元素的数组  
} Stack;  
  
// 创建一个新栈  
Stack* createStack(unsigned length) {  
    Stack* stack = (Stack*)malloc(sizeof(Stack));  
    stack->top = -1;          // 初始化栈顶指针为-1，表示空栈  
    stack->length = length; // 设置栈的容量  
    stack->array = (int*)malloc(stack->length * sizeof(int));  
    return stack;  
}  
  
// 判断栈是否已满  
bool isFull(Stack* stack) {  
    return stack->top == stack->length - 1;  
}  
  
// 判断栈是否为空  
bool isEmpty(Stack* stack) {  
    return stack->top == -1;  
}  
  
// 将元素压入栈顶  
void push(Stack* stack, int item) {  
    if (isFull(stack)) {  
        return; // 栈已满，无法压入元素  
    }  
    stack->array[++stack->top] = item; // 将元素放入栈顶，并更新栈顶指针  
}  
  
// 从栈顶弹出元素  
int pop(Stack* stack) {  
    if (isEmpty(stack)) {  
        return INT_MIN; // 栈为空，返回最小值作为错误标识  
    }  
    return stack->array[stack->top--]; // 弹出栈顶元素，并更新栈顶指针  
}  
  
// 定义队列的结构体，包含两个栈  
typedef struct {  
    Stack* stackIn;  // 用于入队的栈  
    Stack* stackOut; // 用于出队的栈  
} MyQueue;  
  
// 创建队列  
MyQueue* myQueueCreate() {  
    MyQueue* obj = (MyQueue*)malloc(sizeof(MyQueue));  
    obj->stackIn = createStack(MAX_SIZE);  // 创建入队栈  
    obj->stackOut = createStack(MAX_SIZE); // 创建出队栈  
    return obj;  
}  
  
// 将元素入队  
void myQueuePush(MyQueue* obj, int x) {  
    push(obj->stackIn, x); // 直接将元素压入入队栈  
}  
  
// 将元素出队  
int myQueuePop(MyQueue* obj) {  
    if (isEmpty(obj->stackOut)) { // 如果出队栈为空  
        while (!isEmpty(obj->stackIn)) { // 将入队栈的元素全部弹出并压入出队栈  
            push(obj->stackOut, pop(obj->stackIn));  
        }  
    }  
    if (isEmpty(obj->stackOut)) {  
        return -1; // 如果出队栈仍然为空，说明队列为空，返回-1作为错误标识  
    }  
    return pop(obj->stackOut); // 弹出出队栈的栈顶元素并返回  
}  
  
// 检查队列是否为空  
bool myQueueEmpty(MyQueue* obj) {  
    return isEmpty(obj->stackIn) && isEmpty(obj->stackOut); // 如果两个栈都为空，则队列为空  
}  
  
// 销毁队列，释放内存  
void myQueueFree(MyQueue* obj) {  
    free(obj->stackIn->array);     // 释放入队栈的数组内存  
    free(obj->stackIn);            // 释放入队栈的结构体内存  
    free(obj->stackOut->array);    // 释放出队栈的数组内存  
    free(obj->stackOut);          // 释放出队栈的结构体内存  
    free(obj);                    // 释放队列的结构体内存  
}  
int main() {  
    MyQueue* obj = myQueueCreate();  
    myQueuePush(obj, 1);  
    myQueuePush(obj, 2);  
    printf("%d\n", myQueuePop(obj)); // 输出: 1  
    myQueuePush(obj, 3);  
    printf("%d\n", myQueuePop(obj)); // 输出: 2  
    printf("%d\n", myQueuePop(obj)); // 输出: 3  
    printf("%d\n", myQueuePop(obj)); // 输出: -1，队列为空  
    myQueueFree(obj);  
    return 0;  
}