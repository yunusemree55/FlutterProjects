void main(){

  int x1 = 5;
  int x2 = 2;


  int Topla(){

    int result = x1 + x2;

    return result;


  }


  int Cikar(){
    int result = x1 - x2;

    return result;
  }


  print("Toplam sonucu: " + Topla().toString());
  print("Çıkarma sonucu: " + Cikar().toString());





}