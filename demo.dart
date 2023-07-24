


String capitalizeFirstLetter(String word){
    List<String> wordelemnts=word.split(" ");
    List<String> capitalizedfirstletter=[];
    wordelemnts.forEach((element) {
      capitalizedfirstletter.add(element.substring(0,1)+element.substring(1).toLowerCase());
    });
    return capitalizedfirstletter.join(" ");
  }
void main(){
//   final Map<String, String>feed_types={
//   "CHICKEN_DUCK_MASH":"Chick & Duck Mash",
//   "GROWERS_MASH":"Growers Mash",
//   "LAYERS_MASH":"Layers Mash",
//   "KIENYEJI_GROWERS_MASH":"Kienyeji Growers Mash",
//   "STARTER_CRUMBS":"Starter Crumbs",
//   "FINISHER_PELLETS":"Finisher Pellets"
// };
;

// final List<String> humanize=feed_types.entries.map((e) => e.value).toList();
// final List<String> machinelize=feed_types.entries.map((e) => e.key).toList();
  // List<String> feeds = [];
  // List<String> list1=['FINISHER_PELLETS','LAYERS_MASH'];
  // List<String> list2=["Chick & Duck Mash","Growers Mash","Layers Mash"];  
  // controller.layersFeeds[0].contains(" ")?controller.layersFeeds:controller.layersFeeds.map((key) => feed_types[key]).toList();
  
  String name="HELLO";
  bool answ=false;
  List<String>n=name.split('');
  for(int i=0; i<n.length; i++){
    if(!(n[i].toUpperCase()==n[i])){
      answ=false;
      break;
    }else{
      answ=true;
    }
  }
  print(answ);



  // print(getFeedsWithoutUnderscores(list2, feed_types)); // Output: [Chick & Duck Mash, Layers Mash]`
}


  List<String> getFeedsWithoutUnderscores(List<String> feeds, Map<String, dynamic> feed_types){
    if(feeds.isEmpty){
      return [];
    }else if(feeds[0].contains(" ")){
      return feeds;
    }else{
      List f= feeds.map((key) => feed_types[key]).toList();
      return f.whereType<String>().toList();
      // return ['Hello', 'World'];
    }
  }