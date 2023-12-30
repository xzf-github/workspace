Position BinarySearch( List L, ElementType X ){
	int l=1,r=L->Last;
	while(l<r){
		int mid=(l+r)/2;
		if(L->Data[mid]>=X)r=mid;
		else l=mid+1;
	}
	if(L->Data[l]==X)return l;
	else return NotFound;
}
