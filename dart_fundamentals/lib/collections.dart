import 'dart:collection';

void main(){

  List<String> cities = ["Ankara","Samsun","Malatya"];
  cities.add("Antalya");

  for(String city in cities){

    print(city);
  }

  HashSet<int> numbers = HashSet<int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);

  for(int number in numbers){
    print(number);
  }

  Map<String,String> vocabulary = {
    'book':'kitap',
    'home':'ev',
    'player':'oyuncu'
  };


  vocabulary.forEach((key, value) {

    print("$key : $value");

  });

}