bool isPalindrome(String x) {
    List<String> w2=x.split('');
    List<String> w3=[];
  for(var word in w2.reversed){
    w3.add(word);
  }
   if(w3.join('').toLowerCase()==x.toLowerCase()){
      return true;
  }else{
    return false;
  }
}
void main(){
  String w="12/21/33 12:21";
  isPalindrome(w)?print("The word is equal to its inverse"):print("The word is not equal to its inverse");
}