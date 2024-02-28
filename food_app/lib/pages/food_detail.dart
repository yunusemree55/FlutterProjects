import 'package:flutter/material.dart';
import 'package:food_app/models/colors.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/widgets/navbar.dart';

class FoodDetail extends StatelessWidget {
  late Food food;

  FoodDetail({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBg,
      ),
      body: Column(
        children: [
          SizedBox(height: 200, child: Image.asset("assets/${food.url}")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(food.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                Spacer(),
                Text("\$${food.unitPrice}",style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
          Text(food.description)
        ],
      ),
    );
  }
}
