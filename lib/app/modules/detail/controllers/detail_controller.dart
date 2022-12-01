import 'package:get/get.dart';

import '../../../data/models/planet_m.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DetailController extends GetxController {
  Future<Planet> getPlanet(String urls) async {
    Uri url = Uri.parse(urls);
    var res = await http.get(url);
    Map<String, dynamic> data = jsonDecode(res.body) as Map<String, dynamic>;
    return Planet.fromJson(data);
  }
}
