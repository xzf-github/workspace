#include<bits/stdc++.h>
using namespace std;
int nums[100010],k;
/*����˼��:
�ȵݹ�ذ����зֳ���������,Ȼ������ÿ�������ٷ�Ƭ�ε�������к�
Ȼ���ٽ�ÿ����СƬ�ε�������кͺϲ�����
���յõ��������е�������к� 
*/
//int continuralMaxSequenceSum(int seq[]){
//	int leftMaxSum,rightMaxSum; 
//}
int maxi,current;
int main(){
    cin>>k;
    for(int i=0;i<k;i++)scanf("%d",nums+i);
    for(int i=0;i<k;i++){
    	current+=nums[i];
    	if(maxi<current)maxi=current;
    	if(current<0)current=0;
    	
	}
	cout<<maxi;
}

