#include<bits/stdc++.h>
using namespace std;
int nums[100010],k;
int maxi=-1,current;
int main(){
    cin>>k;
    for(int i=0;i<k;i++)scanf("%d",nums+i);
    int maxFirst=0,maxLast=0,first=nums[0],last;
    for(int i=0;i<k;i++){
    	current+=nums[i];
		last=nums[i];
    	if(maxi<current){
    		maxi=current;
			maxFirst=first;
			maxLast=last;	
		}
    	if(current<0){
    		current=0;
			first=nums[i+1];
		}
	}
	if(maxi<0){
		maxFirst=nums[0];
		maxLast=nums[k-1];
		maxi=0;
	}
	printf("%d %d %d",maxi,maxFirst,maxLast);
	return 0;
}
int Max3( int A, int B, int C ){ 
/* ����3�������е����ֵ */
    return A > B ? A > C ? A : C : B > C ? B : C;
}

int DivideAndConquer( int List[], int left, int right ){ 
/* ���η���List[left]��List[right]��������к� */
    int MaxLeftSum, MaxRightSum; /* �������������Ľ� */
    int MaxLeftBorderSum, MaxRightBorderSum; /*��ſ�ֽ��ߵĽ��*/

    int LeftBorderSum, RightBorderSum;//��ǰ�ֽ�����ߺ�,��ǰ�ֽ����ұߺ� 
    int center, i;//�зֵ� 

    if( left == right ){ /* �ݹ����ֹ����������ֻ��1������ */
        if( List[left] > 0 )  return List[left];
        else return 0;
    }

    /* ������"��"�Ĺ��� */
    center = ( left + right ) / 2; /* �ҵ��зֵ� */
    /* �ݹ�����������е����� */
    MaxLeftSum = DivideAndConquer( List, left, center );
    MaxRightSum = DivideAndConquer( List, center+1, right );

    /* �������ֽ��ߵ�������к� */
    MaxLeftBorderSum = 0; LeftBorderSum = 0;
    for( i=center; i>=left; i-- ) {
	/* ����������ɨ�� */
        LeftBorderSum += List[i];
        if( LeftBorderSum > MaxLeftBorderSum )
            MaxLeftBorderSum = LeftBorderSum;
    } /* ���ɨ����� */

    MaxRightBorderSum = 0; RightBorderSum = 0;
    for( i=center+1; i<=right; i++ ) { /* ����������ɨ�� */
        RightBorderSum += List[i];
        if( RightBorderSum > MaxRightBorderSum )
            MaxRightBorderSum = RightBorderSum;
    } /* �ұ�ɨ����� */

    /* ���淵��"��"�Ľ�� */
    return Max3( MaxLeftSum, MaxRightSum, MaxLeftBorderSum + MaxRightBorderSum );
}

int MaxSubseqSum3( int List[], int N )
{ /* ������ǰ2���㷨��ͬ�ĺ����ӿ� */
    return DivideAndConquer( List, 0, N-1 );
}
