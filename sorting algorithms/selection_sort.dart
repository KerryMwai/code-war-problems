 class InsertionSort{
 final List arr;

  InsertionSort({required this.arr});
  sort(){
    for(int i=0; i<arr.length-1; i++){
      int minIndex=i;
      for(int j=i+1; j<arr.length; j++){
        if(arr[minIndex]>arr[j]){
          minIndex=j;
        }
      }
      if(minIndex!=i){
        final temp=arr[i];
        arr[i]=arr[minIndex];
        arr[minIndex]=temp;
      }
    }
    return arr;
  }
}
void main(){
List nums=[2,4,1,3,5,6,9,7,10,8];
InsertionSort sortIn=InsertionSort(arr: nums);
print(sortIn.sort());
}