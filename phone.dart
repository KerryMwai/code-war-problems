void main(){
  List<int> phone=[1, 2, 3, 4, 5, 6, 7, 8, 9, 0];  
  List phoneNumber=[];
  List<int> l1=phone.getRange(0,3).toList();
  List<int> l2=phone.getRange(3,6).toList();
  List<int> l3=phone.getRange(6,10).toList();
  phoneNumber.add("(");
  phoneNumber.add(l1.join(''));
  phoneNumber.add(") ");
  phoneNumber.add(l2.join(''));
  phoneNumber.add("-");
  phoneNumber.add(l3.join(''));
  print(phoneNumber.join(''));
}