 oppositeNumber(n){
  if(n>0){
    return n is double?double.parse("-$n"):int.parse("-$n");
  }else{
    return n is double?double.parse(n.toString().substring(1)):int.parse(n.toString().substring(1));
  }
  // return 0;
}

void main(){
    print(oppositeNumber(167.90));  
}