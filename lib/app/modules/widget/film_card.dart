import 'package:flutter/widgets.dart';
import 'package:starwars/theme.dart';

// ignore: must_be_immutable
class FilmCard extends StatelessWidget {
  FilmCard({
    super.key,
    this.title,
    this.director,
    this.producer,
    this.date,
  });
  String? title;
  String? director;
  String? producer;
  String? date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 250,
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
            title.toString(),
            style: orangeTextStyle.copyWith(
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
          Text(
            date.toString(),
            style: abuColorTextStyle.copyWith(
              fontSize: 15,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Director : ${director.toString()}',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Text(
            'Producer : ${producer.toString()}',
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
