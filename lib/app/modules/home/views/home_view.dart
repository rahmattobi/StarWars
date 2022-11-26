import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:starwars/app/data/models/species_m.dart';
import 'package:starwars/theme.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                'assets/images/7.png',
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: defaultMargin - 5,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'List Species',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Each Major Species Is Ranked From Weakest To Strongest',
                    style: abuColorTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder<List<Species>?>(
                future: controller.getAllSpecies(),
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
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      Species species = snapshot.data![index];

                      return ListTile(
                        onTap: () {
                          Get.toNamed(
                            Routes.detail,
                            arguments: species,
                          );
                        },
                        leading: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Text(
                            '${index + 1}',
                            style: whiteTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        title: Text(
                          '${species.name}',
                          style: whiteTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          '${species.classification}',
                          style: abuColorTextStyle,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
