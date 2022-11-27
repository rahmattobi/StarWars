import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:starwars/app/data/models/planet_m.dart';
import 'package:starwars/app/data/models/species_m.dart';
import 'package:starwars/app/modules/widget/planet_card.dart';
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
            Text(
              'Planet',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FutureBuilder<Planets>(
              future: controller.getPlanet(data.homeworld!),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                // untuk mengcheck apakah ada data
                if (!snapshot.hasData) {
                  return const Center(
                    child: Text('Tidak Mempunyai data'),
                  );
                }

                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    if (snapshot.data!.name!.isEmpty) {
                      return const SizedBox();
                    }

                    print(snapshot.data!.orbitalPeriod);
                    return PlanetCard(
                      name: snapshot.data!.name,
                      rotation: snapshot.data!.rotationPeriod,
                      orbital: snapshot.data!.orbitalPeriod,
                      diameter: snapshot.data!.orbitalPeriod,
                      climate: snapshot.data!.climate,
                      gravity: snapshot.data!.gravity,
                      terrain: snapshot.data!.terrain,
                      surface: snapshot.data!.surfaceWater,
                      population: snapshot.data!.population,
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
