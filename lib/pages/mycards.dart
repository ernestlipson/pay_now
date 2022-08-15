import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/pages/add_card.dart';
import 'package:pay_now/pages/sendmoney.dart';
import 'package:pay_now/pages/request_money.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/app_bar.dart';
import 'package:pay_now/widgets/default_button.dart';
import 'package:pay_now/widgets/myButtons/bottomButton.dart';
import 'package:pay_now/widgets/myButtons/btnSmall.dart';

import '../widgets/customSmallText.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  PageController pageController = PageController(viewportFraction: 0.8);
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(
        title: 'My Cards',
        widget: Container(
          padding: EdgeInsets.only(right: defaultPadding),
          child: InkWell(
              onTap: () {
                navigatePush(context: context, destination: AddCard());
              },
              child: SvgPicture.asset('assets/icons/add_icon.svg')),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: appSize(context, 'h') * 0.030),
              SizedBox(
                height: 170,
                child: PageView.builder(
                    controller: pageController,
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return _pageBuilder(context, position);
                    }),
              ),
              SizedBox(height: appSize(context, 'h') * 0.025),
              Container(
                child: Column(children: [
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
                  inputBoxDetails(context),
                  SizedBox(height: appSize(context, 'w') * 0.045),
                  cvcDate(context),
                ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(defaultPadding),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: DefaultButton(
                  defaultDeviceSize: size,
                  btnText: 'Save Changes',
                  btnPress: () {}),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              flex: 1,
              child: SmallButton(
                btnTap: () {
                  _btnPopMenu(context, size);
                },
                color: Colors.redAccent,
                widget: SvgPicture.asset(
                  'assets/icons/remove_icon.svg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<dynamic> _btnPopMenu(BuildContext context, Size size) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              size.height / 51.6,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                size.height / 51.6,
              ),
            ),
            padding: const EdgeInsets.all(defaultPadding),
            height: size.height / 1.61,
            width: size.width / 2.4,
            child: Column(
              children: [
                const Spacer(),
                SvgPicture.asset('assets/icons/remove_illustration.svg'),
                const Spacer(),
                Column(
                  children: [
                    CustomText(text: 'Are you sure you want'),
                    CustomText(text: 'to remove this card ?')
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: PopButton(
                        btnColor: Colors.white,
                        btnText: 'Cancel',
                        textColor: AppColors.mainColor,
                      ),
                    ),
                    Expanded(
                      child: PopButton(
                        btnColor: Colors.redAccent,
                        btnText: 'Remove',
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      });
}

class PopButton extends StatelessWidget {
  final Color btnColor;
  final String btnText;
  final Color textColor;
  const PopButton({
    Key? key,
    required this.btnColor,
    required this.btnText,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          size.height / 51.6,
        ),
      ),
      minWidth: double.infinity,
      height: MediaQuery.of(context).size.height / 13.5,
      elevation: 0,
      color: btnColor,
      onPressed: () {
        Navigator.pop(context);
      },
      child: CustomText(
        text: btnText,
        size: size.height / 38.3,
        color: textColor,
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            size: headingSize(context),
            myweight: FontWeight.bold,
          ),
          InkWell(
              onTap: () {
                navigatePush(context: context, destination: AddCard());
              },
              child: SvgPicture.asset('assets/icons/add_icon.svg')),
        ],
      ),
    );
  }
}

Widget _pageBuilder(BuildContext context, int index) {
  return Container(
    // A child container inside a parent container takes the full size of the parent container.
    margin: const EdgeInsets.only(left: 7, right: 7),
    decoration: const BoxDecoration(
        // color: Colors.amberAccent,
        image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage(
        'assets/images/credit-card-image.png',
      ),
    )
        // color: index.isEven ? AppColors.mainColor : AppColor.textColor,
        ),
  );
}

Widget inputBoxDetails(BuildContext context) {
  final height = appSize(context, 'h');
  return Container(
    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextSmall(
          smallText: 'Cardholder Name',
          smallFontWeight: FontWeight.bold,
        ),
        SizedBox(height: appSize(context, 'w') * 0.02),
        Container(
          height: height / 13.5,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter your name as written on the card',
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(appSize(context, 'w') / 51.6),
              ),
            ),
          ),
        ),
        SizedBox(height: appSize(context, 'w') * 0.045),
        CustomTextSmall(
          smallText: 'Card Number',
          smallFontWeight: FontWeight.bold,
        ),
        SizedBox(height: appSize(context, 'w') * 0.02),
        Container(
          height: height / 13.5,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter card number',
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(appSize(context, 'w') / 51.6),
              ),
            ),
            obscureText: true,
          ),
        ),
        SizedBox(height: appSize(context, 'w') * 0.02),
      ],
    ),
  );
}

Widget cvcDate(BuildContext context) {
  final height = appSize(context, 'h');
  return Container(
    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextSmall(
                  smallText: 'cvv/cvc',
                  smallFontWeight: FontWeight.bold,
                ),
                SizedBox(height: appSize(context, 'w') * 0.02),
                Container(
                  height: height / 13.5,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '123',
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(appSize(context, 'w') / 51.6),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: height / 40.2),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextSmall(
                  smallText: 'Exp. Date',
                  smallFontWeight: FontWeight.bold,
                ),
                SizedBox(height: appSize(context, 'w') * 0.02),
                Container(
                  height: height / 13.5,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '20/20',
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(appSize(context, 'w') / 51.6),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
