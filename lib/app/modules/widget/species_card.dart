import 'package:flutter/material.dart';
import 'package:starwars/theme.dart';

// ignore: must_be_immutable
class SpeciesCard extends StatelessWidget {
  SpeciesCard({
    super.key,
    this.name,
    this.classification,
    this.designation,
    this.average,
    this.skinC,
    this.hairC,
    this.eyeC,
    this.averageL,
    this.language,
  });

  String? name;
  String? classification;
  String? designation;
  String? average;
  String? skinC;
  String? hairC;
  String? eyeC;
  String? averageL;
  String? language;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Name Species : ${name.toString()}',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Classification : ${classification.toString()}',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Designation : ${designation.toString()}',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'average height : ${average.toString()}',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Skin Colors : ${skinC.toString()}',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Hair Colors : ${hairC.toString()}',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Eye Colors : ${eyeC.toString()}',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Average Lifespan : ${averageL.toString()}',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Language : ${language.toString()}',
              style: whiteTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}
