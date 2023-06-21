List<int> oddOnesOut(List<int> nums) {
  return [];
}


void main(){
  List<int> nums=[26, 23, 24, 17, 23, 24, 23, 26];
  Set uniques=Set();
  Set uniqueswithkeys=Set();
  for(var n in nums){
    uniques.add(n);
  }
  for(var n in uniques){
    uniqueswithkeys.add({n:0});
  }

  for(var i=0; i<nums.length; i++){
    final val=uniqueswithkeys.firstWhere((element) => element[nums[i]]);
    print(val);
  }
}

// for(var n in uniqueswithkeys){
//     print(n[nums[i]]);
//     }