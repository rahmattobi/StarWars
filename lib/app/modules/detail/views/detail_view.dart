import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';
import 'package:starwars/app/data/models/film_m.dart';
import 'package:starwars/app/data/models/people_m.dart';
import 'package:starwars/app/data/models/planet_m.dart';
import 'package:starwars/app/data/models/species_m.dart';
import 'package:starwars/app/modules/widget/film_card.dart';
import 'package:starwars/app/modules/widget/people_card.dart';
import 'package:starwars/app/modules/widget/planets_card.dart';
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin - 5,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    fontWeight: bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                if (data.homeworld!.isEmpty)
                  Center(
                    child: Text(
                      'Planet tidak ada',
                      style: abuColorTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                else
                  SizedBox(
                    height: 540,
                    child: FutureBuilder<Planet>(
                      future: controller.getPlanet(data.homeworld!),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Shimmer.fromColors(
                                baseColor: abu,
                                highlightColor: abuDark,
                                child: Container(
                                  height: 520,
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              );
                            },
                          );
                        }

                        // untuk mengcheck apakah ada data
                        if (!snapshot.hasData) {
                          return const Center(
                            child: Text('Tidak Mempunyai data'),
                          );
                        }
                        return ListView.builder(
                          itemCount: 1,
                          shrinkWrap: false,
                          itemBuilder: (context, index) {
                            return PlanetCard(
                              name: snapshot.data!.name,
                              rotationP: snapshot.data!.rotationPeriod,
                              orbitalP: snapshot.data!.orbitalPeriod,
                              diameter: snapshot.data!.diameter,
                              climate: snapshot.data!.climate,
                              gravity: snapshot.data!.gravity,
                              terrain: snapshot.data!.terrain,
                              surfaceW: snapshot.data!.surfaceWater,
                              population: snapshot.data!.population,
                            );
                          },
                        );
                      },
                    ),
                  ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'People',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 230,
                  child: FutureBuilder<List<People>>(
                    future: controller.getPeople(data.people!),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Shimmer.fromColors(
                              baseColor: abu,
                              highlightColor: abuDark,
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                height: 200,
                                width: 200,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            );
                          },
                        );
                      }

                      // untuk mengcheck apakah ada data
                      if (!snapshot.hasData) {
                        return Center(
                          child: Text(
                            'Tidak Mempunyai data',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: bold,
                            ),
                          ),
                        );
                      }
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          People people = snapshot.data![index];
                          return PeopleCard(
                            name: people.name,
                            height: people.height,
                            hairC: people.hairColor,
                            skinC: people.skinColor,
                            eyeC: people.eyeColor,
                            gender: people.gender,
                            birthY: people.birthYear,
                          );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Films',
                  style: whiteTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 190,
                  child: FutureBuilder<List<Film>>(
                    future: controller.getFilm(data.films!),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Shimmer.fromColors(
                              baseColor: abu,
                              highlightColor: abuDark,
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                height: 200,
                                width: 250,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            );
                          },
                        );
                      }

                      // untuk mengcheck apakah ada data
                      if (!snapshot.hasData) {
                        return Center(
                          child: Text(
                            'Tidak Mempunyai data',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: bold,
                            ),
                          ),
                        );
                      }
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          Film film = snapshot.data![index];
                          return FilmCard(
                            title: film.title,
                            director: film.director,
                            producer: film.producer,
                            date: film.releaseDate,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
