import 'package:flutter/material.dart';
import 'package:food_app/models/colors.dart';

PreferredSizeWidget Navbar(){

  return AppBar(
    leading: IconButton(icon: Icon(Icons.menu,color: appBarLeading,),onPressed: (){},),
    backgroundColor: appBarBg,
  );

}