int getNumberOfErrors(String s){
    final lettersam=RegExp('[a-m]');
  int errorCount=0;
  for(int i=0; i<s.length; i++){
    if(!lettersam.hasMatch(s[i])){
      errorCount++;
    }
  }
  return errorCount;
}
void main(){
  print(getNumberOfErrors("hjykuioijhgdfszcscdfghjkjhgdfyuiouytrewryuiokjhgnfbghjhgxfdghjkfdfghgfghjryedgf"));
}