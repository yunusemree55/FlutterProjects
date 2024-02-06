import 'package:inheritance/entities/person.dart';

class Student extends Person{

  late String department;
  late String schoolNo;

  Student(int id,String firstName,String lastName,this.department,this.schoolNo):super(id: id,firstName: firstName,lastName: lastName);
}