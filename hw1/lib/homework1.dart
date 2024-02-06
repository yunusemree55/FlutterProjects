// Celcius to Fahrenheit


void main(){

  var converterResult = fahrenheitConverter(22);

  print(converterResult);

}




double fahrenheitConverter(double celcius){

  double result = celcius * 1.8 + 32;

  return result;

}


