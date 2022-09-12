import 'dart:convert';
import 'package:api_cats_breeds/models/CatModel.dart';
import 'package:http/http.dart' as http;

class CatsApiService {
  String url = "https://api.thecatapi.com/v1/breeds";

  Future<List<CatModel>> getCats() async {
    //la guardamos en esta var y con el decode la convertimos a JSON.
    List<CatModel> list = [];
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      data.forEach((cat) {
        list.add(CatModel.fromJson(cat));
      });
    }
    return list;
  }
}
