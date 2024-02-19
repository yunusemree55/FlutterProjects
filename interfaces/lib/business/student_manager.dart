
import 'package:interfaces/business/student_service.dart';
import 'package:interfaces/entities/student.dart';

class StudentManager implements StudentService{

  late List<Student> _studentList;

  StudentManager(){
    _studentList = [Student(1, "Yunus Emre", "Çiçek", "Bilgisayar Mühendisliği"), Student(2, "Enes Emir", "Çiçek", "Otomotiv Mühendisliği")];
  }

  @override
  void add(Student student) {

    _studentList.add(student);
    print("${student.firstName} ${student.lastName} adlı öğrenci kaydedildi");

  }

  @override
  List<Student> getAll() {

    return _studentList;
  }

}