import 'package:inheritance/entities/person.dart';
import 'package:inheritance/entities/student.dart';
import 'package:inheritance/entities/teacher.dart';

void main(){

  Person student1 = Student(1, "Yunus Emre", "Çiçek", "Bilgisayar Mühendisliği", "123456"); //Person classı Student class'ının referansını tutabilir.
  Teacher teacher1 = Teacher(2, "John", "Smith", "05123456789");

  List<Person> people = [student1,teacher1];

  for(Person person in people){
    print("İsim soyisim: ${person.firstName} ${person.lastName}");
  }


}