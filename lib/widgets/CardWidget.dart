import 'package:api_cats_breeds/models/CatModel.dart';
import 'package:flutter/material.dart';
import 'package:api_cats_breeds/pages/DetailPage.dart';

class CardWidget extends StatelessWidget {
  final CatModel cat;
  const CardWidget({Key? key, required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailPage(cat: cat),
      )),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: SizedBox(
          width: double.infinity,
          height: 300,
          child: Column(
            children: [
              ListTile(
                title: Text(cat.name),
                trailing: Text("Show me more..."),
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: FadeInImage.assetNetwork(
                    placeholder: "loading.gif", image: cat.image.url),
                //Image(image: NetworkImage(cat.image.url)),
              ),
              ListTile(
                title: Text(cat.origin),
                trailing: Text("Intelligence: ${cat.intelligence.toString()}"),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
