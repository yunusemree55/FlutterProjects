
import 'package:flutter/material.dart';

PreferredSizeWidget appBar(){
  return AppBar(
    leading: IconButton(onPressed: (){},icon:Icon(Icons.menu),color: Colors.white,),
    backgroundColor: Color.fromRGBO(42, 54, 89, 1.0),
  );
}