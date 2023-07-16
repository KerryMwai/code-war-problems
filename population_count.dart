
int nbYear(int p0, double percent, int aug, int p) {
  bool target=true;
  int count=0;
  int total=p0;
  while(target){
    total+=((total*percent/100)+aug).floor();
    count++;
    if(total>=p){
      target=false;
    }
  }
  return count;
}
void main(){
  print(nbYear(1000, 2.0, 50, 1214));
}