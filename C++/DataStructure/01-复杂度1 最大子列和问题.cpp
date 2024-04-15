#include<bits/stdc++.h>
using namespace std;
int nums[100010],k;
/*分治思想:
先递归地把序列分成左右两边,然后再求每个不可再分片段的最大子列和
然后再将每个最小片段的最大子列和合并起来
最终得到整个序列的最大子列和 
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

