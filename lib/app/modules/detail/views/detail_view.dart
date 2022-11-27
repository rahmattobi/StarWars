import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:starwars/app/data/models/species_m.dart';
import 'package:starwars/app/modules/widget/species_card.dart';
import 'package:starwars/theme.dart';

import '../controllers/detail_controller.dart';

// ignore: must_be_immutable
class DetailView extends GetView<DetailController> {
  DetailView({Key? key}) : super(key: key);

  Species data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text('${data.name}'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin - 5,
          vertical: 10,
        ),
        child: ListView(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Lottie.asset('assets/lottie/starwars.json'),
            ),
            SpeciesCard(
              name: data.name,
              classification: data.classification,
              designation: data.designation,
              average: data.averageHeight,
              skinC: data.skinColors,
              hairC: data.hairColors,
              eyeC: data.eyeColors,
              averageL: data.averageLifespan,
              language: data.language,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
