import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:starwars/app/data/models/species_m.dart';

import 'app/routes/app_pages.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

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
