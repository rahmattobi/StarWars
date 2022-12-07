import 'package:get/get.dart';
import 'package:starwars/app/data/models/film_m.dart';
import 'package:starwars/app/data/models/people_m.dart';

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

  Future<List<People>> getPeople(List<String> urls) async {
    List<People> people = [];

    for (var i = 0; i < urls.length; i++) {
      Uri url = Uri.parse(urls[i].toString());
      var res = await http.get(url);
      Map<String, dynamic> data = jsonDecode(res.body) as Map<String, dynamic>;
      People allPeople = People.fromJson(data);
      people.add(allPeople);
    }

    return people;
  }

  Future<List<Film>> getFilm(List<String> urls) async {
    List<Film> film = [];

    for (var i = 0; i < urls.length; i++) {
      Uri url = Uri.parse(urls[i].toString());
      var res = await http.get(url);
      Map<String, dynamic> data = jsonDecode(res.body) as Map<String, dynamic>;
      Film allFilm = Film.fromJson(data);
      film.add(allFilm);
    }

    return film;
  }
}
