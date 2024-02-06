class Person{

  late int id;
  late String firstName;
  late String lastName;
  late String identityNumber;


  Person(){
    print("Person constructor'ı çalıştı");
  }

  Person.withFields({required this.id,required this.firstName,required this.lastName,required this.identityNumber}){
    print("Field'larla birlikte yazılan constructor çalıştı");
  }

}