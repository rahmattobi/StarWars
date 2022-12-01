import 'package:flutter/material.dart';

import 'package:starwars/theme.dart';

class PlanetCard extends StatelessWidget {
  PlanetCard(
      {super.key,
      this.name,
      this.rotationP,
      this.orbitalP,
      this.diameter,
      this.climate,
      this.gravity,
      this.terrain,
      this.surfaceW,
      this.population});

  String? name;
  String? rotationP;
  String? orbitalP;
  String? diameter;
  String? climate;
  String? gravity;
  String? terrain;
  String? surfaceW;
  String? population;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          Text(
            name.toString(),
            style: abuColorTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Rotation Period',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          Text(
            rotationP.toString(),
            style: abuColorTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Orbital Periode',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          Text(
            orbitalP.toString(),
            style: abuColorTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Diameter',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          Text(
            diameter.toString(),
            style: abuColorTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Climate',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          Text(
            climate.toString(),
            style: abuColorTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Gravity',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          Text(
            gravity.toString(),
            style: abuColorTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Terrain',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          Text(
            terrain.toString(),
            style: abuColorTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Surface Water',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          Text(
            surfaceW.toString(),
            style: abuColorTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Population',
            style: whiteTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          Text(
            population.toString(),
            style: abuColorTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
