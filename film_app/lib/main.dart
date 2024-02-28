import 'package:film_app/models/film.dart';
import 'package:film_app/models/serie.dart';
import 'package:film_app/models/tv_show.dart';
import 'package:film_app/pages/tv_show_detail_page.dart';
import 'package:film_app/widgets/app_bar.dart';
import 'package:film_app/widgets/category_button.dart';
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


  List<TvShow> tvShows = [
    Serie(id: 1,categoryId: 1, name: "The Blacklist", url: "the-blacklist.jpg"),
    Serie(id: 2,categoryId: 1, name: "Breaking Bad", url: "breaking-bad.jpg"),
    Film(id: 3,categoryId: 2, name: "El Ryan'ı Kurtarmak", url: "saving-private-ryan.jpg"),
    Film(id: 4,categoryId: 2, name: "Joker", url: "joker.jpg"),
    Serie(id: 5,categoryId: 1, name: "Better Call Saul", url: "better-call-saul.jpg"),
    Serie(id: 6,categoryId: 1, name: "Designated Survivor", url: "designated-survivor.jpg")
  ];
  
  List<TvShow> filteredList = [];

  @override
  void initState() {
    super.initState();
    filteredList = tvShows;
  }

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: screenWidth,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      CategoryButton(screenWidth, "Hepsi", () => {
                          setState((){
                            filteredList = tvShows;
                          })
                      }),
                      CategoryButton(screenWidth, "Film", () => {
                        setState((){
                          filteredList = tvShows.where((i) => i.categoryId == 2).toList();
                        })
                      }),
                      CategoryButton(screenWidth, "Dizi", () => {
                        setState((){
                          filteredList = tvShows.where((tvShow) => tvShow.categoryId == 1).toList();
                        })
                      })
                    ],
                  ),
                ],
              ),
            ),

            GridView.builder(
              physics: PageScrollPhysics(),
              shrinkWrap: true,
              itemCount: filteredList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (_,int index){
                TvShow tvShow = filteredList[index];
                return GestureDetector(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => TvShowDetailPage(tvShow: tvShow)));},
                  child: Card(
                    child: Column(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image.asset("assets/${tvShow.url}"),
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(tvShow.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
