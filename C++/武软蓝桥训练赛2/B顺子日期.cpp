/*2022第十三届蓝桥杯填空题真题改编*/
#include<stdio.h>
#include<string.h>
int main()
{
	char a[8];
	int count=0;
	int months[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};
	for(int i=1;i<=12;i++)
	{
		for(int j=1;j<=months[i];j++)
		{
			long long sum=2023*10000+i*100+j;
			sprintf(a,"%lld",sum);
			if(strstr(a,"012")!=NULL||strstr(a,"123")!=NULL)
				count++;
		}
	}
	printf("%d",count);
	return 0;
 }
