int findSmallestInt(List<int> arr) =>arr.fold(arr[0], (previousValue, element) =>previousValue<element?previousValue:element );
void main(){
  List<int> nums=[34,67,56,12,13,78,24];
  print(findSmallestInt(nums));
}