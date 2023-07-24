// Selection sort algorithm
List<int> sort1(List<int> arr){
  for(int i=0; i<arr.length-1; i++){
      int minIndex=i;
      bool didSwap=false;
      for (int j=i+1; j<arr.length; j++){
        if(arr[minIndex]>arr[j]){
          minIndex=j;
        }
      }
      if(minIndex!=i){
        final temp=arr[i];
        arr[i]=arr[minIndex];
        arr[minIndex]=temp;
        didSwap=true;
      }
      if(!didSwap){
        break;
      }
  }
  return arr;
}
// bubble sort algorithm
List<int>sort2(arr){
  for(int i=0; i<arr.length-1; i++){
    for(int j=0; j<arr.length-i-1; j++){
      if(arr[j]>arr[j+1]){
        final temp=arr[j];
        arr[j]=arr[j+1];
        arr[j+1]=temp;
      }
    }
  }
  return arr;
}

// Insertion sort algorithm
// version one of insertion sort
List<int> sortiv13(arr){
  for(int i=1; i<arr.length; i++){
      for(int j=i; j>0; j--){
        if(arr[j]<arr[j-1]){
          final temp=arr[j];
          arr[j]=arr[j-1];
          arr[j-1]=temp;
        }else{
          break;
        }
      }
  }
  return arr;
}
// Version two of insertion sort
List<int> sortiv23(arr){
  for(int i=1; i<arr.length; i++){
      for(int j=i; j>0 && arr[j]<arr[j-1]; j--){
          final temp=arr[j];
          arr[j]=arr[j-1];
          arr[j-1]=temp;
        
      }
  }
  return arr;
}
// Version three of insertion sort
List<int> sortiv33(arr){
  for(int i=1; i<arr.length; i++){
    int j=i;
      while(j>0 && arr[j]<arr[j-1]){
          final temp=arr[j];
          arr[j]=arr[j-1];
          arr[j-1]=temp;
          j--;
      }
  }
  return arr;
}
void main(){
  List<int> nums=[43,1,56,3,23,5,7,30,12,1000,860,760,900,14,131];
  print(sortiv33(nums));
}