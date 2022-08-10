import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/pages/sendmoney.dart';
import 'package:pay_now/pages/request_money.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';

import '../widgets/customSmallText.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currentPageVal = 0.0;
  final double _scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageVal = pageController.page!;
        debugPrint('Current Page is $_currentPageVal');
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/icons/back_icon.svg'),
                  ),
                  CustomText(
                    text: 'My Cards',
                    size: appSize(context, 'h') * 0.035,
                    myweight: FontWeight.bold,
                  ),
                  Container(),
                ],
              ),
            ),
            const Divider(thickness: 1),
            Container(
              color: Colors.blue,
              // height: appSize(context, 'h') * 0.04,
              height: 200,
              child: PageView.builder(
                  controller: pageController,
                  itemCount: 5,
                  itemBuilder: (context, position) {
                    return _pageBuilder(context, position);
                  }),
            ),
            DotsIndicator(
              dotsCount: 5,
              position: _currentPageVal,
              decorator: DotsDecorator(
                activeColor: AppColors.mainColor,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _pageBuilder(BuildContext context, int index) {
  return Container(
    height: 300,
    // A child container inside a parent container takes the full size of the parent container.
    margin: const EdgeInsets.only(left: 5, right: 5),
    decoration: BoxDecoration(
      // color: Colors.amberAccent,
      borderRadius: BorderRadius.circular(
        30,
      ),
      // color: index.isEven ? AppColors.mainColor : AppColor.textColor,
    ),
    child: SvgPicture.asset("assets/icons/Card 02.svg"),
  );
}
