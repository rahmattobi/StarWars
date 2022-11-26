import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:starwars/app/routes/app_pages.dart';
import 'package:starwars/theme.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size;

    return Scaffold(
        body: LiquidSwipe(
      slideIconWidget: const Icon(Icons.arrow_back),
      enableSideReveal: true,
      pages: [
        Container(
          padding: const EdgeInsets.all(10),
          color: whiteColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: _height.height * 0.3,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/1.png',
                ),
              ),
              SizedBox(
                height: _height.height * 0.6,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/3.png',
                ),
              ),
              const Spacer(),
              Text(
                'Swipe to Left',
                style: abuDarkTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          color: abu,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: _height.height * 0.25,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/5.png',
                ),
              ),
              SizedBox(
                height: _height.height * 0.55,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/4.png',
                ),
              ),
              Text(
                'Swipe to Left ',
                style: abuColorTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          color: abuColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: _height.height * 0.25,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/7.png',
                ),
              ),
              SizedBox(
                height: _height.height * 0.55,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/6.png',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin * 4,
                ),
                height: 50,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: InkWell(
                  onTap: () {
                    Get.offAndToNamed(Routes.home);
                  },
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
