List<String> wave(String str) {
  List<String> p = str.split('');
  int index = p.indexWhere((element) => element == ' ');
  String word = str;
  String w = word.replaceAll(' ', '');
  List<String> wordaslist = w.split('');
  List<String> wos = [];
  List<String> capitalized = [];

  List<String> finalList = [];

  for (var i = 0; i < wordaslist.length; i++) {
    for (var j = 0; j < wordaslist.length; j++) {
      if (i == j) {
        capitalized.add(wordaslist[j].toUpperCase());
      } else {
        capitalized.add(wordaslist[j]);
      }
    }
    wos.add(capitalized.join(''));
    capitalized = [];
  }

  if (str.contains(' ')) {
    for (var i = 0; i < wos.length; i++) {
      finalList.add(wos[i].substring(0, index) + " " + wos[i].substring(index));
    }
    return finalList;
  }else{
    return wos;
  }
}

void main() {
 List<String> a=' a b '.split('');
  a.forEach((element) => element==' '?element.replaceAll(' ', ''):element.replaceAll('', ''),);
  print(a);
  // print(wave("a b "));
}
