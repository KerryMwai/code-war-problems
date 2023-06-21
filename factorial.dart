int findFactorial(int n){
  if(n==0 || n==1) return 1;
  return n*findFactorial(n-1);
}

void main(){
    print(findFactorial(2));
}