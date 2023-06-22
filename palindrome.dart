void main(){
  String w="12/21/33 12:21";
  List<String> w2=w.split('');
  List<String> w3=[];
  for(var word in w2.reversed){
    w3.add(word);
  }

  if(w3.join('')==w){
      print("They are equal");
  }else{
    print("They are not equal");
  }
}