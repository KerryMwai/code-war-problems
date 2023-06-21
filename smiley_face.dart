int countSmileys(List<String> arr) {
  // your code here
  return 0;
}

void main(){

  List<String> faces=[':)',':(',':D',':O',':;'];
  List<List<String>> smilefaces=[[':',';'],['-','~'],[')','D']];
  
  List<List<String>> charactersfromfaces=[];
  List<List<String>> smilefacesfromgivenfaces=[];

  for(var i=0; i<faces.length; i++){
    charactersfromfaces.add(faces[i].split('')); 
  }
  int count=0;
  // for(var i=0; i<charactersfromfaces.length; i++){
  //   for(var j=0; j<charactersfromfaces[i].length; j++){
  //       for(var k=0; k<smilefaces.length; k++){
  //         if(!smilefaces[k].contains(charactersfromfaces[i][j])){
  //           break;
  //         }else{
  //           count++;
  //         }
  //       }
  //   }
  // }
print(count);

}





// Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.

// Rules for a smiling face:

// Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
// A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
// Every smiling face must have a smiling mouth that should be marked with either ) or D
// No additional characters are allowed except for those mentioned.

// Valid smiley face examples: :) :D ;-D :~)
// Invalid smiley faces: ;( :> :} :]

// Example
// countSmileys([':)', ';(', ';}', ':-D']);       // should return 2;
// countSmileys([';D', ':-(', ':-)', ';~)']);     // should return 3;
// countSmileys([';]', ':[', ';*', ':$', ';-D']); // should return 1;
// Note
// In case of an empty array return 0. You will not be tested with invalid input (input will always be an array). Order of the face (eyes, nose, mouth) elements will always be the same.