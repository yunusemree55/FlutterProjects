// Count of a specific letter which repeats in the word



void main(){

  int count = countOfLetter("Hello there my friend!", "e");

  print(count);

}


int countOfLetter(String word,String targetLetter){

  int calculator = 0;

  for(int i = 0; i < word.length; i++){

    if(word[i] == targetLetter){
      calculator = calculator + 1;
    }
  }

  return calculator;

}