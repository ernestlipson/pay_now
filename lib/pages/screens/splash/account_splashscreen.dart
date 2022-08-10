import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/dimensions.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';
import 'package:get/get.dart';

class AccountSplashScreen extends StatelessWidget {
  const AccountSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultDeviceHeight = MediaQuery.of(context).size.height;
    debugPrint('ScreenHeight ${MediaQuery.of(context).size.height}');
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColors.mainColor,
            height: MediaQuery.of(context).size.height / 1.5,
            child: SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: Dimensions.margin40),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(),
                    Center(
                      child: Container(
                        height: defaultDeviceHeight / 7.6,
                        width: defaultDeviceHeight / 7.6,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(defaultDeviceHeight / 26),
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
                      size: defaultDeviceHeight / 23.3,
                    ),
                    const Spacer(),
                    CustomTextSmall(
                      smallText: 'The Best Way To Transfer Money Safely',
                      smallColor: Colors.white,
                      smallSize: defaultDeviceHeight / 42.3,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: defaultDeviceHeight / 8.6),
          // GestureDetector(
          //   onTap: () {},
          //   child: Container(
          //     margin:
          //         EdgeInsets.symmetric(horizontal: defaultDeviceHeight / 24),
          //     decoration: BoxDecoration(
          //         color: AppColors.mainColor,
          //         borderRadius:
          //             BorderRadius.circular(defaultDeviceHeight / 51.6)),
          //     height: MediaQuery.of(context).size.height / 12,
          //     child: Center(
          //       child: CustomText(
          //         text: 'Create new account',
          //         color: Colors.white,
          //         size: defaultDeviceHeight / 38.3,
          //       ),
          //     ),
          //   ),
          // ),
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
              text: 'Create new account',
              size: defaultDeviceHeight / 38.3,
              color: Colors.white,
            ),
          ),
          // TextButton(
          //   style: ButtonStyle(backgroundColor: Color(0xFF1A87DD)),
          //   onPressed: () {},
          //   child: CustomText(
          //     text: 'Create new account',
          //     color: Colors.white,
          //     size: defaultDeviceHeight / 38.3,
          //   ),
          // ),
          SizedBox(height: defaultDeviceHeight / 22),
          CustomText(
            text: 'Already have account?',
            size: defaultDeviceHeight / 42.4,
            color: AppColors.mainColor,
          ),
        ],
      ),
    );
  }
}
