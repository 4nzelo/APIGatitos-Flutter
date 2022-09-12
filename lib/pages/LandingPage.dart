import 'package:api_cats_breeds/models/CatModel.dart';
import 'package:flutter/material.dart';
import '../widgets/CardWidget.dart';

class LandingPage2 extends StatefulWidget {
  final List<CatModel> cats;
  const LandingPage2({Key? key, required this.cats}) : super(key: key);

  @override
  State<LandingPage2> createState() => _LandingPageState(catsTwo: cats);
}

class _LandingPageState extends State<LandingPage2> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text("Search a cat");
  final List<CatModel> catsTwo;

  _LandingPageState({Key? key, required this.catsTwo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (customIcon.icon == Icons.search) {
                    customIcon = const Icon(Icons.cancel);
                    customSearchBar = const ListTile(
                      leading: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 28,
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                            hintText: "Type the name of a cat....",
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                            border: InputBorder.none),
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  } else {
                    customIcon = const Icon(Icons.search);
                    customSearchBar = const Text("Landing");
                  }
                });
              },
              icon: customIcon)
        ],
      ),
      body: Column(children: [Expanded(child: _createList())]),
    );
  }

  _createList() {
    return ListView.builder(
        itemCount: catsTwo.length,
        itemBuilder: (context, i) => CardWidget(cat: catsTwo[i]));
  }
}
