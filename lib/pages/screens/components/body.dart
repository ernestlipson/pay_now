import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/dimensions.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController pageController = PageController(viewportFraction: 0.9);

  var _currentPageVal = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = Dimensions.pageViewContainer;

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
      'text': 'Add all accounts and manage',
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
  List<String> onBoardData2 = [
    'You can add all accounts in on place\n and use it to send and request.',
    'You can track your income, expenses\n activities and all statistics.',
    'You can send or receive any payments\n from your accounts.',
  ];
  @override
  Widget build(BuildContext context) {
    final defaultDeviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                  controller: pageController,
                  itemCount: onBoardData.length,
                  itemBuilder: (context, index) {
                    return OnBoardContent(
                      svgImage: onBoardData[index]['image'],
                      text: onBoardData[index]['text'],
                      smalltext: onBoardData2[index],
                    );
                  }),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                child: DotsIndicator(
                  dotsCount: onBoardData.length,
                  position: _currentPageVal,
                  decorator: DotsDecorator(
                    activeColor: AppColors.mainColor,
                    size: Size.square(9.0),
                    activeSize: Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  defaultDeviceHeight / 51.6,
                ),
              ),
              minWidth: 350,
              height: MediaQuery.of(context).size.height / 12,
              elevation: 0,
              color: AppColors.mainColor,
              onPressed: () {},
              child: CustomText(
                text: 'Get Started',
                size: defaultDeviceHeight / 38.3,
                color: Colors.white,
              ),
            ),
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
  }) : super(key: key);

  final String text, svgImage, smalltext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Padding(
          padding: EdgeInsets.all(Dimensions.margin30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: 'itemCount'),
              GestureDetector(
                onTap: () {},
                child: CustomText(text: 'Skip', color: AppColors.mainColor),
              ),
            ],
          ),
        ),
        const Spacer(flex: 2),
        SvgPicture.asset(svgImage),
        CustomText(text: text),
        CustomTextSmall(smallText: smalltext),
      ],
    );
  }
}
