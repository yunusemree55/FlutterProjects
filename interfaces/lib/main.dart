import 'package:interfaces/business/student_manager.dart';
import 'package:interfaces/entities/student.dart';

void main(){

  Student student1 = Student(3, "Mert Ali", "Işık", "Polimer Mühendisliği");
  StudentManager studentManager = StudentManager();

  studentManager.add(student1);

  for(Student student in studentManager.getAll()){

    print("Öğrenci adı soyadı: ${student.firstName} ${student.lastName}");

  }

}