import 'package:dart_fundamentals/entities/person.dart';

void main(){

  Person person1 = Person();

  person1.id = 1;
  person1.firstName = "Yunus Emre";
  person1.lastName = "Çiçek";
  person1.identityNumber = "12345678910";

  Person person2 = Person.withFields(id: 2, firstName: "Enes Emir", lastName: "Çiçek", identityNumber: "9876543210");

  List<Person> persons = [person1,person2];

  for(Person person in persons){
    print("Kişi adı soyadı: ${person.firstName} ${person.lastName}");
  }


}