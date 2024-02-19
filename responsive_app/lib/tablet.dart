import 'package:flutter/material.dart';

class TabletDesign extends StatefulWidget {
  const TabletDesign({super.key});

  @override
  State<TabletDesign> createState() => _TabletDesignState();
}

class _TabletDesignState extends State<TabletDesign> {
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
              TextButton(onPressed: () => {}, child: Text("Tıkla"),
                  style:TextButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white,padding: EdgeInsets.only(left: 40,right: 40)))
            ],
          ),
        )

    );
  }
}
