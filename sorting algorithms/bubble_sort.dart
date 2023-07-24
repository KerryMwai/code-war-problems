class BubbleSort{
  final List itemsToSort;
  BubbleSort({required this.itemsToSort});

  sort(){
    for(int i=0; i<itemsToSort.length-1; i++){
      bool didSwap=false;
        for(int j=0; j<itemsToSort.length-i-1; j++){
          if(itemsToSort[j]>itemsToSort[j+1]){
            final temp=itemsToSort[j];
            itemsToSort[j]=itemsToSort[j+1];
            itemsToSort[j+1]=temp;
            didSwap=true;
          }
        }
        if(!didSwap){
              break;
          }
    }
    return itemsToSort;
  }
}


void main(){
  List<int> nums=[2,5,3,6,7,1,4,9,8,100,80,70,90,20];
  BubbleSort sortItems=BubbleSort(itemsToSort: nums);
  print(sortItems.sort());
}