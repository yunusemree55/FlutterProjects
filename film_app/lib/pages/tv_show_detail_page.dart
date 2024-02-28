

import 'package:film_app/models/tv_show.dart';
import 'package:film_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class TvShowDetailPage extends StatelessWidget {

  late TvShow tvShow;

  TvShowDetailPage({required this.tvShow});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset("assets/${tvShow.url}",height: screenHeight/2,),
              ),
              Text(tvShow.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
            ],
          ),
        ),
      ),
    );
  }
}
