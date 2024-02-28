import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: [
          ListBody(
            children: [
              ListTile(
                title: Text("Güneşli"),
                onTap: (){},
                subtitle:  Text("7⁰C"),
                leading: Icon(Icons.sunny),
                trailing: PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  onSelected: (itemValue){
                    if(itemValue == 1){
                      print("Detay tıklandı");
                    }else if(itemValue == 2){
                      print("Sil tıklandı");
                    }
                  },
                  itemBuilder: (context) {
                    return[
                      PopupMenuItem(
                          value: 1,
                          child: Text("Detay")),
                      PopupMenuItem(
                          value:2,
                          child: Text("Sil")),
                  ];
                  },
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
}
