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
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name ',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Text(
                name.toString(),
                style: orangeTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Classification ',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Text(
                classification.toString(),
                style: orangeTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Designation ',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Text(
                designation.toString(),
                style: orangeTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Average ',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Text(
                average.toString(),
                style: orangeTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Skin Colors ',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Text(
                skinC.toString(),
                style: orangeTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hair Colors ',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Text(
                hairC.toString(),
                style: orangeTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Eye Color ',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Text(
                eyeC.toString(),
                style: orangeTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Average Lifespan ',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Text(
                averageL.toString(),
                style: orangeTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 10,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: abuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Language ',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Text(
                language.toString(),
                style: orangeTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
