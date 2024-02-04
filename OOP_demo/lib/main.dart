import 'package:oop_demo/Car.dart';

void main(){

  Car car1 = new Car();

  car1.name = "Ford";
  car1.color = "Black";
  car1.price = 120000;

  Car car2 = new Car.withFields("Mercedes", "Black", 300000);

  List<Car> cars = [car1,car2];

  for(Car car in cars){

    print("Araba ismi: ${car.name}");
    print("Araba fiyatı: ${car.price} TL");

  }




}