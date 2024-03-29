import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';

import '../../../widgets/CustomText.dart';
import 'components/splash_body.dart';

class SplashHome extends StatefulWidget {
  const SplashHome({Key? key}) : super(key: key);

  @override
  State<SplashHome> createState() => _SplashHomeState();
}

class _SplashHomeState extends State<SplashHome> {
  void init(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      navigateReplacement(context: context, destination: SplashOnBoard());
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    init(context);
    final containerBorder = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: AppColors.mainColor,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 30),
              height: MediaQuery.of(context).size.height / 8.3,
              width: MediaQuery.of(context).size.height / 8.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(containerBorder / 26),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: RotatedBox(
                  quarterTurns: 2,
                  child: SvgPicture.asset(
                      color: AppColors.mainColor,
                      'assets/icons/request_icon.svg'),
                ),
              ),
            ),
          ),
          CustomText(
            text: 'PayNow',
            color: Colors.white,
            size: containerBorder / 23.3,
          )
        ]),
      ),
    );
  }
}
