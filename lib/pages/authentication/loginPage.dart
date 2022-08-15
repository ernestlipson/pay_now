import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/Home/landingPage.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';
import 'package:pay_now/widgets/default_button.dart';

import '../../utils/colors.dart';
import '../../Home/Custom_home_page.dart';
import '../../Home/dashboard.dart';
import 'background.dart';
import 'signUpPage.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    debugPrint('$size');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: TitleBar(
        text1: 'Login and start',
        text2: 'transfering',
      ),
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            GoogleFaceBookApi(size: size),
            Spacer(),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextSmall(
                    smallText: 'Email',
                    smallFontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: size.height * 0.02),
                  EmailInputBox(size: size),
                  SizedBox(height: size.height * 0.045),
                  CustomTextSmall(
                    smallText: 'Password',
                    smallFontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    width: double.infinity,
                    height: size.height / 13.5,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.height / 51.6),
                        ),
                      ),
                      obscureText: _passwordVisible,
                    ),
                  ),
                  SizedBox(height: size.height * 0.017),
                  GestureDetector(
                    onTap: () {
                      //TODO: Tap Button must route to help center Page
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CustomTextSmall(
                        smallText: 'Forget password?',
                        smallColor: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: LoginSignUpBottomButton(
        size: size,
        btnText: 'Login',
        btmActionText: 'Create new account',
        btnDestination: MyLandingPage(),
        btmActionDestination: SignUp(),
      ),
    );
  }
}

class LoginSignUpBottomButton extends StatelessWidget {
  final String btnText, btmActionText;
  final Widget btnDestination, btmActionDestination;
  const LoginSignUpBottomButton({
    Key? key,
    required this.size,
    required this.btnText,
    required this.btmActionText,
    required this.btnDestination,
    required this.btmActionDestination,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      height: 120,
      child: Column(children: [
        DefaultButton(
            defaultDeviceSize: size,
            btnText: btnText,
            btnPress: () {
              navigateReplacement(
                  context: context, destination: btnDestination);
            }),
        SizedBox(height: size.height * 0.03),
        GestureDetector(
          onTap: () {
            navigateReplacement(
                context: context, destination: btmActionDestination);
          },
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(size.width * 0.006),
              child: CustomText(
                text: btmActionText,
                size: size.height / 42.4,
                color: AppColors.mainColor,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class EmailInputBox extends StatelessWidget {
  const EmailInputBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height / 13.5,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Enter your email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(size.height / 51.6),
          ),
        ),
      ),
    );
  }
}

class GoogleFaceBookApi extends StatelessWidget {
  const GoogleFaceBookApi({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                size.height / 51.6,
              ),
            ),
            height: MediaQuery.of(context).size.height / 13.5,
            minWidth: size.width * 0.45,
            elevation: 0,
            color: AppColors.roundedBoxColor,
            onPressed: () {},
            child: CustomText(
              text: 'Google',
              size: size.height / 38.3,
            ),
          ),
        ),
        SizedBox(width: defaultPadding),
        Expanded(
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                size.height / 51.6,
              ),
            ),
            height: MediaQuery.of(context).size.height / 13.5,
            minWidth: size.width * 0.45,
            elevation: 0,
            color: AppColors.roundedBoxColor,
            onPressed: () {},
            child: CustomText(
              text: 'facebook',
              size: size.height / 38.3,
            ),
          ),
        ),
      ],
    );
  }
}

class TitleBar extends StatelessWidget implements PreferredSizeWidget {
  final String text1, text2;
  const TitleBar({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = appSize(context, 'h') / 3.8;
    return Container(
      padding: EdgeInsets.only(left: defaultPadding, top: 50),
      // color: Colors.redAccent,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomText(
          text: text1,
          myweight: FontWeight.bold,
          size: size * 0.15,
        ),
        CustomText(
          text: text2,
          myweight: FontWeight.bold,
          size: size * 0.15,
        ),
      ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(110);
}
