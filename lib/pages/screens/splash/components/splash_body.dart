import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/pages/screens/splash/create_account_splashscreen.dart';
import 'package:pay_now/state/appstate.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
// import 'package:pay_now/utils/dimensions.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:pay_now/widgets/default_button.dart';
import 'package:provider/provider.dart';

class SplashOnBoard extends StatefulWidget {
  const SplashOnBoard({Key? key}) : super(key: key);

  @override
  State<SplashOnBoard> createState() => _SplashOnBoardState();
}

class _SplashOnBoardState extends State<SplashOnBoard> {
  PageController pageController = PageController();

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

  List<Map<dynamic, dynamic>> onBoardData = [
    {
      'text': 'Add all accounts & manage',
      'image': 'assets/icons/illustration.svg'
    },
    {
      'text': 'Track Your Activity',
      'image': 'assets/icons/illustration-1.svg',
    },
    {
      'text': 'Send & request payments',
      'image': 'assets/icons/Wallet-rafiki.svg'
    }
  ];
  List<Map<dynamic, dynamic>> onBoardData2 = [
    {
      'text1': 'You can add all accounts in one place',
      'text2': 'and use it to send and request.',
    },
    {
      'text1': 'You can track your income, expenses',
      'text2': 'activities and all statistics.',
    },
    {
      'text1': 'You can send or receive any payments',
      'text2': 'from your accounts.',
    }
  ];
  @override
  Widget build(BuildContext context) {
    final defaultDeviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                  onPageChanged: (index) {
                    context.read<AppState>().setCurrentOnBoardPage(index);
                  },
                  controller: pageController,
                  itemCount: onBoardData.length,
                  itemBuilder: (context, index) {
                    return OnBoardContent(
                      svgImage: onBoardData[index]['image'],
                      text: onBoardData[index]['text'],
                      smalltext: onBoardData2[index]['text1'],
                      smalltext2: onBoardData2[index]['text2'],
                    );
                  }),
            ),
            SizedBox(
              child: DotsIndicator(
                dotsCount: onBoardData.length,
                position: _currentPageVal,
                decorator: DotsDecorator(
                  activeColor: AppColors.mainColor,
                  size: Size.square(defaultDeviceSize.height * 0.015),
                  activeSize: Size(
                    defaultDeviceSize.height * 0.023,
                    defaultDeviceSize.height * 0.023,
                  ),
                  activeShape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(defaultDeviceSize.height * 0.04),
                  ),
                ),
              ),
            ),
            if (context.watch<AppState>().currentOnBoardPage + 1 == 3)
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                margin:
                    EdgeInsets.only(bottom: defaultmargin, top: defaultmargin),
                child: DefaultButton(
                  btnText: 'Get Started',
                  defaultDeviceSize: defaultDeviceSize,
                  btnPress: () {
                    navigate(
                        context: context, destination: AccountSplashScreen());
                  },
                ),
              )
            else
              Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  margin: EdgeInsets.only(
                      bottom: defaultmargin, top: defaultmargin),
                  height: MediaQuery.of(context).size.height / 13.5),
            // SvgPicture.asset(assetName)
          ],
        ),
      ),
    );
  }
}

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    Key? key,
    required this.text,
    required this.svgImage,
    required this.smalltext,
    required this.smalltext2,
  }) : super(key: key);

  final String text, svgImage, smalltext, smalltext2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text:
                        '${context.watch<AppState>().currentOnBoardPage + 1}/3'),
                GestureDetector(
                  onTap: () {
                    navigate(
                        context: context, destination: AccountSplashScreen());
                  },
                  child: CustomText(text: 'Skip', color: AppColors.mainColor),
                ),
              ],
            ),
          ),
          const Spacer(),
          SvgPicture.asset(svgImage),
          const Spacer(),
          CustomText(text: text, myweight: FontWeight.bold),
          SizedBox(height: appSize(context, 'h') * 0.01),
          CustomTextSmall(
            smallText: smalltext,
            smallSize: appSize(context, 'h') * 0.02,
          ),
          SizedBox(height: appSize(context, 'h') * 0.01),
          CustomTextSmall(
            smallText: smalltext2,
            smallSize: appSize(context, 'h') * 0.02,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
