// Write a function which calculates the average of the numbers in a given list.

// Note: Empty arrays should return 0.

  findAverage(List<int> array) {
  if(array.isEmpty){
    return 0;
  }else{
    return (array.fold(0, (previousValue, element) => previousValue+element))/array.length;
  }
}

void main(){
  List<int> nums=[];
  print(findAverage(nums));
}