import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:starwars/app/data/models/species_m.dart';

class HomeController extends GetxController {
  
  Future<List<Species>?> getAllSpecies() async {
    Uri url = Uri.parse('https://swapi.dev/api/species/');
    var res = await http.get(url);
    List data = (jsonDecode(res.body) as Map<String, dynamic>)['results'];

    for (var i = 2; i < 5; i++) {
      Uri url1 = Uri.parse('https://swapi.dev/api/species/?page=$i');
      var res1 = await http.get(url1);

      List data2 = (jsonDecode(res1.body) as Map<String, dynamic>)['results'];

      data.addAll(data2);
    }
    return data.map((e) => Species.fromJson(e)).toList();
  }
}
