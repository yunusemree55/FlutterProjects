import 'dart:math';

import 'package:flutter/material.dart';
import 'package:number_prediction_game/pages/lost_page.dart';
import 'package:number_prediction_game/pages/win_page.dart';

class GamePage extends StatefulWidget{

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  late TextEditingController prediction = TextEditingController();
  late int chance = 4;
  late int number;
  late bool isActive = false;


  @mustCallSuper
  initState() {
    super.initState();

    prediction.addListener(() {
      setState(() {
        isActive = prediction.text.isNotEmpty;
      });
    });

    setState(() {
      number = Random().nextInt(10);

    });
    print(number);
  }

  @override
  void dispose() {
    super.dispose();
    prediction.dispose();
  }

  void checkNumber(){
    final snackBar = SnackBar(
      content: Text(int.parse(prediction.text) > number ? "Tahminin büyük" : "Tahminin küçük"),
      duration: Duration(seconds: 1),);

    if(chance <= 1 && prediction.text != number.toString()){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LostPage()));
    }

    else if(prediction.text != number.toString()){

      setState(() {
        chance -= 1;

      });
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    else if(prediction.text == number.toString()){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WinPage()));
    }
  }


  @override
  build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Kalan Hakkınız: ${chance}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  width: 250,
                  child: TextField(
                    controller: prediction,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Tahmin"),
                  )),
              SizedBox(
                  width: 150,
                  child: ElevatedButton(

                    onPressed: isActive ? (){
                      checkNumber();
                    } : null,
                    child: Text("Tahmin et",style: TextStyle(fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,foregroundColor: Colors.white,),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}


