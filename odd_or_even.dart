String oddOrEven(List<int> array) {
  print( array.reduce((value, element) =>value+element));
  int sum=0;
  for(var i=0; i<array.length; i++){
    sum+=array[i];
  }
  if(sum.isEven){
    return "even";
  }else{
    return "odd";
  }

  
}


void main(){
  List<int> nums=[17, 21, 99];
  print(oddOrEven(nums));
}