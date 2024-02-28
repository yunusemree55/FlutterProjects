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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSearchButtonClicked = false;

  void changeStatus() {
    setState(() {
      isSearchButtonClicked = !isSearchButtonClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: IconButton(
          onPressed: () {
            print("Menu Button clicked");
          },
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: isSearchButtonClicked
            ? SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search something...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20)),
                ))
            : Text(
                "ABC Company",
                style: TextStyle(color: Colors.white),
              ),
        actions: [
          isSearchButtonClicked
              ? IconButton(
                  onPressed: changeStatus,
                  icon: Icon(
                    Icons.highlight_remove_outlined,
                    color: Colors.white,
                  ))
              : IconButton(
                  onPressed: changeStatus,
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ))
        ],
      ),
      body: Center(
        child: Text("Ana Sayfa"),
      ),
    );
  }
}
