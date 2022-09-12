/* import 'package:flutter/material.dart';
import 'package:api_cats_breeds/models/CatModel.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text("Landing");

  _SearchWidgetState({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: customSearchBar,
      automaticallyImplyLeading: false,
      centerTitle: true,
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.lightBlue,
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
                          hintText: "Escribe el nombre del gato...",
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
    ));
  }
} */
