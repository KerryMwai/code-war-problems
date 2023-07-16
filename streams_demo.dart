Future<int> sumStream(Stream<int> streams)async{
  int sum=0;
  await for(int value in streams){
      sum+=value;
  }
  return sum;
}

Stream<int> coutStreamTo(int to)async*{
    for(int i=1; i<=to;i++){
      yield i;
    }
}

void main()async{
      var stream=coutStreamTo(10);

    int summed=await sumStream(stream);
    print(summed);
}