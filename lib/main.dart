import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.splashScreen,
      getPages: AppPages.routes,
    ),
  );
}

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// void main() async {
//   Uri url = Uri.parse('https://swapi.dev/api/species/');
//   var res = await http.get(url);
//   List data = (jsonDecode(res.body) as Map<String, dynamic>)['results'];
//   print(data[2]['people']);
// }
