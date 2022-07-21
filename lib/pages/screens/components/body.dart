import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/dimensions.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
    return SafeArea(
      child: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
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
              child: SizedBox(),
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
        Spacer(),
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
