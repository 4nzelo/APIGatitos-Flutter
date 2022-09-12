import 'dart:async';
import 'package:api_cats_breeds/models/CatModel.dart';
import 'package:api_cats_breeds/services/CatsApiService.dart';
import 'package:flutter/material.dart';
import 'LandingPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
} //fin splash class.

class _SplashPageState extends State<SplashPage> {
  CatsApiService catsApi = CatsApiService();

  Future<List<CatModel>> _getCats() async {
    return catsApi.getCats();
  }

  @override
  void initState() {
    _getCats().then((value) => Timer(
          const Duration(seconds: 3),
          () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => LandingPage2(cats: value),
          )),
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "THE CATPEDIA",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Image(image: AssetImage('splash.png'), width: 250)
          ],
        ),
      ),
    );
  }
} //fin splash-state class.
