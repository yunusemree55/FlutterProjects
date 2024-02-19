import 'package:flutter/material.dart';
import 'package:number_prediction_game/main.dart';

class LostPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var screen = MediaQuery.of(context);
    final height = screen.size.height;
    final width = screen.size.width;

    return PopScope(
      canPop: false,
      onPopInvoked: (bool){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Yanlış Tahmin",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                Image.asset("assets/sad-face.png" , width: height/2,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
