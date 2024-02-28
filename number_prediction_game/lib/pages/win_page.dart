import 'package:flutter/material.dart';
import 'package:number_prediction_game/main.dart';

class WinPage extends StatelessWidget {
  const WinPage({super.key});

  @override
  Widget build(BuildContext context) {

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
                Text("Doğru Tahmin",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                Image.asset("assets/smile.png")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
