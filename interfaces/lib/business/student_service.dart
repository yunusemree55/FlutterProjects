
import 'package:interfaces/entities/student.dart';

abstract class StudentService{

  List<Student> getAll();
  void add(Student student);


}