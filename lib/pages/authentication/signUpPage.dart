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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    debugPrint('$size');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Signup and start',
              myweight: FontWeight.bold,
              size: size.height * 0.04,
            ),
            CustomText(
              text: 'transfering',
              myweight: FontWeight.bold,
              size: size.height * 0.04,
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        size.height / 51.6,
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 12,
                    minWidth: size.width * 0.45,
                    elevation: 0,
                    color: AppColors.roundedBoxColor,
                    onPressed: () {},
                    child: CustomText(text: 'Google'),
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
                    height: MediaQuery.of(context).size.height / 12,
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
            ),
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
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.height / 51.6),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.045),
                  CustomTextSmall(
                    smallText: 'Password',
                    smallFontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: size.height * 0.02),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.height / 51.6),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: size.height * 0.045),
                  CustomTextSmall(
                    smallText: 'Re-enter your password',
                    smallFontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: size.height * 0.02),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your password again',
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.height / 51.6),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: size.height * 0.017),
                  // Align(
                  //     alignment: Alignment.centerRight,
                  //     child: CustomTextSmall(
                  //       smallText: 'Forget password?',
                  //       smallColor: AppColors.mainColor,
                  //     ))
                ],
              ),
            ),
            const Spacer(),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  size.height / 51.6,
                ),
              ),
              minWidth: 350,
              height: MediaQuery.of(context).size.height / 12,
              elevation: 0,
              color: AppColors.mainColor,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyLandingPage()));
              },
              child: CustomText(
                text: 'create account',
                size: size.height / 38.3,
                color: Colors.white,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            GestureDetector(
              onTap: () {
                navigate(context: context, destination:  MyLogin());
              },
              child: Align(
                alignment: Alignment.center,
                child: CustomTextSmall(
                  smallText: 'Already have account?',
                  smallColor: AppColors.mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
