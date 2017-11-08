#include <iostream>
#include <assert.h>
/*max heap
  >>left child>>>>  >>left child>>>>
  ↑              ↓  ↑              ↓
--↑--------------↓--↑--------------↓----------------------
| root 6    |    5   |     4   |     3  |    2   |   1   | 
--↓--------------↓-------↑--↓----------------↑-----↑------
  ↓              >>>>>>>>↑>>↓>>right child>>>>     ↑
  >>>>>>>right child>>>>>>  >>>>>left child>>>>>>>>
*/

void adjust_max_heap(int *heap,int index,int end);
void build_max_heap(int *heap,int size);
void top_k(int *arr,int size,int *out,int k);
int main(int argc, char const *argv[])
{
    int arr[]={32, 54, 43, 56, 6, 4, 35, 17, 87, 31};
    int k=6;
    int *out=new int[k];
    top_k(arr,10,out,k);
    for (int i = 0; i < k; ++i)
    {
        std::cout<<out[i]<<' ';
    }
    std::cout<<std::endl;
    delete out;
    return 0;
}
void adjust_max_heap(int *heap,int index,int end)
{
    assert(heap!=NULL);
    int tmp = heap[index];
    for (int child; index <end; index=child)
    {
        child=2*index+1;
        if(child>=end) break;
        if(heap[child]<heap[child+1])
            ++child;
        if(tmp<heap[child])
            heap[index]=heap[child];
        else
            break;
    }
    heap[index]=tmp;
}
void build_max_heap(int *heap,int size)
{
    assert(heap!=NULL);
    for (int i = 0; i < size; ++i)
    {
       adjust_max_heap(heap,i,size-1);
    }
}
void top_k(int *arr,int size,int *out,int k)
{
    assert(arr!=NULL&&out!=NULL);
    for (int i = 0; i < k; ++i)
    {
        out[i]=arr[i];
    }
    build_max_heap(out,k);
    for (int i = k; i < size; ++i)
    {
        if(arr[i]<out[0])
        {
            out[0]=arr[i];
            adjust_max_heap(out,0,k-1);
        }
    }

}