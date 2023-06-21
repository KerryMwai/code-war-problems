int find(List integers) {
  int oddCount=0;
  int evenCount=0;

  for(var i=0; i<integers.length; i++){
    integers[i].isOdd?oddCount++:evenCount++;
  }
  return oddCount>evenCount?int.parse(integers.where((element) => element.isEven).toList().join()):int.parse(integers.where((element) => element.isOdd).toList().join());
}
void main(){
  List<int> integers=[2, 4, 0, 100, 4, 11, 2602, 36];
  List<int> integers2=[160, 3, 1719, 19, 11, 13, -21];
  print(find(integers));

}