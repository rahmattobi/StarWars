import 'package:flutter/widgets.dart';
import 'package:starwars/theme.dart';

// ignore: must_be_immutable
class PeopleCard extends StatelessWidget {
  PeopleCard({
    super.key,
    this.name,
    this.height,
    this.hairC,
    this.skinC,
    this.eyeC,
    this.gender,
    this.birthY,
  });
  String? name;
  String? height;
  String? hairC;
  String? skinC;
  String? eyeC;
  String? gender;
  String? birthY;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 200,
      margin: const EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(
        top: 10,
        left: defaultMargin,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: abuDark,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name.toString(),
            style: orangeTextStyle.copyWith(
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Height : ${height.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Text(
            'Hair Color : ${hairC.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Text(
            'Skin Color : ${skinC.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Text(
            'Eye Color : ${eyeC.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Text(
            'Gender : ${gender.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Text(
            'Birth Year : ${birthY.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
