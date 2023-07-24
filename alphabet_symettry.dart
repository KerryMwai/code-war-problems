alphabeSymety(List<String> arr){
  List<String> alphabets=[];
  for(int charCode=97; charCode<=122; charCode++){
    alphabets.add(String.fromCharCode(charCode));
  }

  for(int i=0; i<arr.length; i++){

  }
}
void main(){
  Set uniques=new Set();
  List<int> nums=[1,2,3,2,3,4,2,5,6,67,7,5,4];
  for(int n in nums){
    uniques.add(n);
  }
  print(uniques.toList());
}