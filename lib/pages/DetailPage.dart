import 'package:flutter/material.dart';
import 'package:api_cats_breeds/models/CatModel.dart';

class DetailPage extends StatelessWidget {
  final CatModel cat;
  const DetailPage({Key? key, required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name),
        centerTitle: true,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: FadeInImage.assetNetwork(
                  placeholder: "loading.gif", image: cat.image.url),
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text:
                        "\n${cat.description}\n\nOrigin: ${cat.origin}\nWeight: ${cat.weight.metric}\nTemperament: ${cat.temperament}\nAdaptability: ${cat.adaptability}",
                    style: const TextStyle(color: Colors.black))),
          ],
        ),
      ),

      //body:
      //CardWidget(cat)
    );
  }
}
