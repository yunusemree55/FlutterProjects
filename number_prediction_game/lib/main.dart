import 'package:flutter/material.dart';
import 'package:number_prediction_game/pages/game_page.dart';

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
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    var screen = MediaQuery.of(context);
    final height = screen.size.height;

    return PopScope(
      canPop: false,
      child: Scaffold(

        body: Center(
        
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                  Text("Sayı Tahmin Oyunu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Image.asset("assets/dice.png",width: height / 2,),
                ElevatedButton(onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GamePage()))
                }, child: Text("Başla"),style: ElevatedButton.styleFrom(backgroundColor: Colors.black,foregroundColor: Colors.white), )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
