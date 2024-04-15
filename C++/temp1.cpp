#include<stdio.h>
int main(){
    int a=1,b=1,c=1,t;
    t=++a||++b&&++c;
    printf("a=%d\nb=%d\nc=%d\nt=%d",a,b,c,t);
}