import 'package:flutter/material.dart';
import 'package:page_routing/screens/login.dart';

class HomePage extends StatefulWidget {

  late String email;

  HomePage({required this.email});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Welcome back"),
        ),
        body: Center(
          child: Text("Welcome, ${widget.email}"),
        ),
      ),
    );
  }
}
