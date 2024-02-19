import 'package:flutter/material.dart';

class PhoneDesign extends StatefulWidget {
  const PhoneDesign({super.key});

  @override
  State<PhoneDesign> createState() => _PhoneDesignState();
}

class _PhoneDesignState extends State<PhoneDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("İlham Ver"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset("lib/assets/stevejobs@2x.png",),
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent imperdiet tellus vel mollis aliquet. Phasellus.",
                  textAlign: TextAlign.center,),
              ),
              Spacer(),
              TextButton(onPressed: () => {}, child: Text("Tıkla"),style: TextButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white),)
            ],
          ),
        )

    );
  }
}
