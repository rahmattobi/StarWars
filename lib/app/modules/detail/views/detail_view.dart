import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:starwars/app/data/models/species_m.dart';
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
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: abuColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Name Species : ${data.name}',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: abuColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Classification : ${data.classification}',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: abuColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Designation : ${data.designation}',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: abuColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'average height : ${data.averageHeight}',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: abuColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Skin Colors : ${data.skinColors}',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: abuColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Hair Colors : ${data.hairColors}',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: abuColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Eye Colors : ${data.eyeColors}',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: abuColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Average Lifespan : ${data.averageLifespan}',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: abuColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Language : ${data.language}',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
