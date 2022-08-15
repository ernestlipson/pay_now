import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/Home/landingPage.dart';
import 'package:pay_now/pages/authentication/loginPage.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';

import '../../utils/colors.dart';
import '../../Home/Custom_home_page.dart';
import '../../Home/dashboard.dart';
import 'background.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
      appBar: TitleBar(
        text1: 'Signup and start',
        text2: 'transfering',
      ),
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.0010),
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
                  SizedBox(height: size.height * 0.033),
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
                  SizedBox(height: size.height * 0.033),
                  CustomTextSmall(
                    smallText: 'Re-enter your password',
                    smallFontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    height: size.height / 13.5,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password again',
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.visibility)),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.height / 51.6),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: size.height * 0.017),
                ],
              ),
            ),
            // const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: LoginSignUpBottomButton(
        size: size,
        btnText: 'Create account',
        btmActionText: 'Already have account?',
        btnDestination: MyLandingPage(),
        btmActionDestination: MyLogin(),
      ),
    );
  }
}
