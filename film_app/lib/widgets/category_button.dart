import 'package:flutter/material.dart';

Widget CategoryButton(double screenWidth, String categoryName, Function() function) {

  return SizedBox(
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(42, 54, 89, 1.0),
            foregroundColor: Colors.white),
        child: Text(categoryName),
      ));
}
