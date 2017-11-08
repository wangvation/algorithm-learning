#include<iostream>
#include<stdio.h>
using namespace std;
void insert_sort(int *arr,int length);
int main(int argc, char const *argv[])
{
	int arr[]={23,41,134,13,123,33,22,4,7,53};
	insert_sort(arr,10);
	for(int i=0;i<10;i++)
		printf("%d ", arr[i]);
	printf("\n");
	return 0;
}
void insert_sort(int *arr,int length){
	for(int i=1;i<length;i++){
		int key=arr[i];
		int j=i;
		for(;j>0&&key<arr[j-1];j--){
			arr[j]=arr[j-1];
		}
		arr[j]=key;
	}
}