
import 'package:inheritance/entities/person.dart';

class Teacher extends Person{

  late String phoneNumber;

  Teacher(int id,String firstName,String lastName,this.phoneNumber):super(id: id,firstName: firstName,lastName: lastName);
}