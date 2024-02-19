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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Center(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("lib/images/logo.png", width: 200),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  hintText: "Email",
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder())),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: !isShow,

                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: GestureDetector(
                                      onTap: () => {
                                        setState(() => {
                                          isShow = !isShow
                                        }),

                                        print(isShow)
                                      },
                                      child: Icon(isShow ? Icons.visibility : Icons.visibility_off)),
                                  hintText: "Password",
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder())),
                        ),
                      ],
                    )),
                ElevatedButton(onPressed: () => {}, child: Text("Login")),
              ],
            ),
          ),
        ));
  }
}
