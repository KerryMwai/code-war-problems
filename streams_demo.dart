// Receiving stream events
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

// Working with streams associated with error events
Future<int> sumStream0(Stream<int> streams)async{
  int sum=0;
  try{
      await for(int value in streams){
      sum+=value;
  }
  }catch(e){
    return -1;
  }
  return sum;
}

Stream<int> coutStreamTo0(int to)async*{
    for(int i=1; i<=to;i++){
      if(i==4){
        throw Exception("Intentional exception");
      }else{
        yield i;
      }
    }
}

// Working with streams
Future<int> lastPositive(Stream<int> stream) =>
    stream.lastWhere((x) => x >= 0);
void main()async{
      var stream=coutStreamTo0(10);

    int summed=await sumStream0(stream);
    print(summed);
}

// Methods that process a stream
// The following methods on Stream<T> process the stream and return a result:

// Future<T> get first;
// Future<bool> get isEmpty;
// Future<T> get last;
// Future<int> get length;
// Future<T> get single;
// Future<bool> any(bool Function(T element) test);
// Future<bool> contains(Object? needle);
// Future<E> drain<E>([E? futureValue]);
// Future<T> elementAt(int index);
// Future<bool> every(bool Function(T element) test);
// Future<T> firstWhere(bool Function(T element) test, {T Function()? orElse});
// Future<S> fold<S>(S initialValue, S Function(S previous, T element) combine);
// Future forEach(void Function(T element) action);
// Future<String> join([String separator = '']);
// Future<T> lastWhere(bool Function(T element) test, {T Function()? orElse});
// Future pipe(StreamConsumer<T> streamConsumer);
// Future<T> reduce(T Function(T previous, T element) combine);
// Future<T> singleWhere(bool Function(T element) test, {T Function()? orElse});
// Future<List<T>> toList();
// Future<Set<T>> toSet();
// All of these functions, except drain() and pipe(), correspond to a similar function on Iterable. Each one can be written easily by using an async function with an await for loop (or just using one of the other methods). For example, some implementations could be: