import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/pages/food_detail.dart';
import 'package:food_app/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<List<Food>> getFoods() async{
    List<Food> foods =  [
      new Food.withFields(id: 1, name: "Hamburger", description: "A delicious hamburger",url: "hamburger.png", unitPrice: 23),
      new Food.withFields(id: 2, name: "Pizza", description: "Big size pizza", url: "pizza.png", unitPrice: 50),
      new Food.withFields(id: 3, name: "Fried Chicken", description: "Tasty fried chickens", url: "fried-chicken.png", unitPrice: 35.5),
      new Food.withFields(id: 4, name: "Cola", description: "Delicious cola", url: "cola.png", unitPrice: 5.5),
      new Food.withFields(id: 5, name: "Water", description: "Fresh water", url: "water.png", unitPrice: 2)
    ];

    return foods;
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(),
      body: FutureBuilder<List<Food>>(
        future: getFoods(),
        builder: (context,snapshot){
          if(snapshot.hasData){

            List<Food> foods = snapshot.data!;

            return ListView.builder(
              itemCount: foods.length,
              itemBuilder: (context,index) {

                Food food = foods[index];

                return SizedBox(
                  height: 70,
                  child: ListTile(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodDetail(food: food)));
                    },
                    leading: Image.asset("assets/${food.url}"),
                    title: Text(food.name),
                    trailing: Text("\$${food.unitPrice}",style: TextStyle(fontSize: 14),),
                  ),
                );

                // return Card(
                //   child: SizedBox(
                //     height: 50,
                //     child: Row(
                //       children: [
                //         Text(food.name)
                //       ],
                //     ),
                //   ),
                // );
              },
            );
          }else{
            return Text("Veri yok");
          }
        },
      )
    );
  }
}
