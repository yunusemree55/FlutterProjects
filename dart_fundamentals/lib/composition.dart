import 'package:dart_fundamentals/entities/car.dart';
import 'package:dart_fundamentals/entities/color.dart';

void main(){

  Color color1 = Color(id: 1, name: "Siyah");

  Car car1 = Car(id: 1, name: "Ford", plateNo: "06ABC1881", color: color1);

  print("Araba markası: ${car1.name}\nAraba plakası: ${car1.plateNo}\nAraba rengi: ${car1.color.name}");

}