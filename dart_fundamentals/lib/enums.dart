void main(){

  Department department = Department.computerEngineering;

  switch(department){

    case(Department.computerEngineering):{
      print("Bilgisayar mühendisliği !");
    }
    break;

    case(Department.automotiveEngineering):{
      print("Otomotiv mühendisliği !");
    }
    break;

    case(Department.softwareEngineering):{
      print("Yazılım mühendisliği");
    }
    break;
  }

}



enum Department{
  computerEngineering, automotiveEngineering, softwareEngineering
}