import 'package:flutter/material.dart';
import 'package:starwars/theme.dart';

// ignore: must_be_immutable
class PlanetCard extends StatelessWidget {
  PlanetCard({
    super.key,
    this.name,
    this.rotation,
    this.orbital,
    this.diameter,
    this.climate,
    this.gravity,
    this.terrain,
    this.surface,
    this.population,
  });

  String? name;
  String? rotation;
  String? orbital;
  String? diameter;
  String? climate;
  String? gravity;
  String? terrain;
  String? surface;
  String? population;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
        vertical: 10,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: abuColor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name : ${name.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Rotation Period : ${rotation.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Orbital Period : ${orbital.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Diameter : ${diameter.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Climate : ${climate.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Gravity : ${gravity.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Terrain : ${terrain.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Surface Water : ${surface.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Population : ${population.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
