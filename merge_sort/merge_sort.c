#include <stdio.h>
#include <malloc.h>
void merge(int *arr,int left,int middle,int right);
void merge_sort(int *arr,int left,int right);
int main(int argc, char const *argv[])
{
	int arr[]={23,41,134,13,123,33,22,4,7,53};
	merge_sort(arr,0,9);
	for(int i=0;i<10;i++)
		printf("%d ", arr[i]);
	printf("\n");
	return 0;
}
void merge(int *arr,int left,int middle,int right)
{
	int n1=middle-left+1;
	int n2=right-middle;
	int *L=(int*)malloc(n1*sizeof(int));
	int *R=(int*)malloc(n2*sizeof(int));
	for (int i = 0; i < n1; ++i)
	{
		L[i]=arr[left+i];//arr[0...middle]
	}
	for (int j = 0; j < n2; ++j)
	{
		R[j]=arr[middle+j+1];//arr[middle+1...right]
	}
	int i=0,j=0,k=left;
	for (; k <= right; ++k)
	{
		if(i>=n1||j>=n2) break;
		if(L[i]<=R[j])
		{
			arr[k]=L[i];
			++i;
		}
		else
		{
			arr[k]=R[j];
			++j;
		}
	}
	if (i>=n1)
	{
		for (; k <= right; ++k)
		{
			arr[k]=R[j];
			++j;
		}
	}
	if(j>=n2)
	{
		for (; k <= right; ++k)
		{
			arr[k]=L[i];
			++i;
		}
	}
	free(L);
	free(R);
}
void merge_sort(int *arr,int left,int right)
{
	if(left>=right) return;//递归结束条件
	int middle=(left+right)>>1;
	merge_sort(arr,left,middle);
	merge_sort(arr,middle+1,right);
	merge(arr,left,middle,right);
}