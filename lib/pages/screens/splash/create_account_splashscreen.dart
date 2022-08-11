import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/pages/authentication/loginPage.dart';
import 'package:pay_now/pages/authentication/signUpPage.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';
import 'package:pay_now/widgets/default_button.dart';

class AccountSplashScreen extends StatelessWidget {
  const AccountSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultDeviceHeight = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColors.mainColor,
            height: MediaQuery.of(context).size.height / 1.5,
            child: SafeArea(
              child: Column(
                children: [
                  const Spacer(),
                  Center(
                    child: Container(
                      height: defaultDeviceHeight.height / 8,
                      width: defaultDeviceHeight.height / 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            defaultDeviceHeight.height / 30),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.all(defaultDeviceHeight.height * 0.02),
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: SvgPicture.asset(
                              color: AppColors.mainColor,
                              'assets/icons/request_icon.svg'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: appSize(context, 'h') * 0.02),
                  CustomText(
                    text: 'PayNow',
                    color: Colors.white,
                    size: defaultDeviceHeight.height / 23.3,
                  ),
                  const Spacer(),
                  CustomTextSmall(
                    smallText: 'The Best Way to Transfer Money Safely',
                    smallColor: Colors.white.withOpacity(0.7),
                    smallSize: defaultDeviceHeight.height / 42.3,
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          SizedBox(height: defaultDeviceHeight.height / 8.6),
          // MaterialButton(
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(
          //       defaultDeviceHeight.height / 51.6,
          //     ),
          //   ),
          //   minWidth: 350,
          //   height: MediaQuery.of(context).size.height / 12,
          //   elevation: 0,
          //   color: AppColors.mainColor,
          //   onPressed: () {},
          //   child: CustomText(
          //     text: 'Create new account',
          //     size: defaultDeviceHeight.height / 38.3,
          //     color: Colors.white,
          //   ),
          // ),
          //TODO: SIZED BOX
          Container(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: DefaultButton(
                btnText: 'Create new account',
                defaultDeviceSize: defaultDeviceHeight,
                btnPress: () {
                  navigate(context: context, destination: SignUp());
                }),
          ),
          SizedBox(height: defaultDeviceHeight.height / 22),
          GestureDetector(
            onTap: () {
              navigate(context: context, destination: MyLogin());
            },
            child: CustomText(
              text: 'Already have account?',
              size: defaultDeviceHeight.height / 42.4,
              color: AppColors.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
