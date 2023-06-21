int findFactorial(int n){
  if(n<0) throw RangeError("The value is less than 0");
  if(n>12) throw RangeError("The value is greater than 12");
  if(n==0 || n==1) return 1;
  return n*findFactorial(n-1);
}

void main(){
    print(findFactorial(13));
}