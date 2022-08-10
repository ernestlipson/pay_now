import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/Home/scrollable_listview.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/buttons_widget.dart';
import 'package:pay_now/widgets/customSmallText.dart';

import '../utils/colors.dart';
import '../widgets/btm_navigation.dart';
import 'dashboard.dart';

class CustomHomePage extends StatelessWidget {
  const CustomHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const Dashboard(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ButtonsWidget(
                      svgfile: 'assets/icons/send_icon.svg',
                      text: 'Send Money',
                      color: AppColors.mainColorBox,
                    ),
                  ),
                  const SizedBox(
                    width: defaultPadding / 1.2,
                  ),
                  Expanded(
                    child: ButtonsWidget(
                      svgfile: 'assets/icons/request_icon.svg',
                      iconColor: Colors.white,
                      text: 'Request Money',
                      textColor: Colors.white,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height / 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextSmall(
                    smallText: 'Last Transaction',
                    smallFontWeight: FontWeight.bold,
                    smallSize: size.height * 0.022,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigatePush(context, MyListView());
                    },
                    child: CustomTextSmall(
                      smallText: 'View All',
                      smallFontWeight: FontWeight.bold,
                      smallSize: size.height * 0.022,
                      smallColor: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
              4 == 3
                  ? Container(
                      margin: const EdgeInsets.only(top: defaultmargin),
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: defaultPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/empty_illustration.svg',
                            height: size.height * 0.2,
                            width: size.width * 0.02,
                          ),
                          CustomText(
                            text: "There's no transactions till now!",
                            size: size.height * 0.025,
                            color: AppColors.textColor.withOpacity(0.4),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(
                      height: 300,
                      child: Expanded(
                        child: ListView.separated(
                            itemBuilder: ((context, index) => ListTile(
                                  contentPadding:
                                      const EdgeInsets.symmetric(horizontal: 0),
                                  leading: Stack(
                                    children: [
                                      CircleAvatar(),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Material(
                                          color: Colors.white,
                                          child: SvgPicture.asset(
                                            'assets/icons/send_icon.svg',
                                            color: AppColors.mainColorBox,
                                          ),
                                          shape: CircleBorder(),
                                        ),
                                      )
                                    ],
                                  ),
                                  title: CustomText(text: 'James Osborn'),
                                  subtitle: CustomText(
                                    text: 'Oct 14, 10:24',
                                    size: 15,
                                    color: AppColors.textColor.withOpacity(0.5),
                                  ),
                                  trailing: CustomText(
                                      text: '-50.00',
                                      myweight: FontWeight.bold),
                                )),
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 5),
                            itemCount: 15),
                      ),
                    ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
