int growingPlant(int upSpeed, int downSpeed, int desiredHeight) {
  int total=0;
  int count=0;
  for(int i=0;; i++){
    total=(upSpeed*i)+(upSpeed-downSpeed*i);
    count++;
    if(desiredHeight==total || total>desiredHeight){
      break;
    }
  }
  
  return count;
}

// 

void main(){
  growingPlant(100, 10, 910);

}