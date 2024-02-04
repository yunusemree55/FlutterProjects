
void main() {

  Greeting();
  GreetingPerson("Yunus Emre");

  int result = Add(4, 6);

  print(result);

}





void Greeting(){

  print("Hello there!");

}


void GreetingPerson(String name){
  
  print("Hello there, $name!");
}


int Add(int x1,int x2){

  int result = x1 + x2;

  return result;
}




