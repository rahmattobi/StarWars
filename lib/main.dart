import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async{
  // runApp(
  //   GetMaterialApp(
  //     title: "Application",
  //     debugShowCheckedModeBanner: false,
  //     initialRoute: AppPages.splashScreen,
  //     getPages: AppPages.routes,
  //   ),
  // );

    Uri url = Uri.parse('https://swapi.dev/api/species/');

  var res = await http.get(url);

  Map<String, dynamic> data = jsonDecode(res.body) as Map<String, dynamic>;

  // Surah surah = Surah.fromJson(data[1]);
  print(data['results']);

}
