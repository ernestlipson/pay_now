import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/Home/landingPage.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';

import '../../utils/colors.dart';
import '../../widgets/Custom_home_page.dart';
import '../../widgets/dashboard.dart';
import 'background.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    debugPrint('$size');

    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Login and start',
              myweight: FontWeight.bold,
              size: size.height * 0.05,
            ),
            CustomText(
              text: 'transfering',
              myweight: FontWeight.bold,
              size: size.height * 0.05,
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
                  CustomTextSmall(smallText: 'Email'),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'ernest346@gmail.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.height / 51.6),
                      ),
                    ),
                  ),
                  CustomTextSmall(smallText: 'Password'),
                  TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.height / 51.6),
                      ),
                    ),
                    obscureText: true,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: CustomTextSmall(smallText: 'Forget password?'))
                ],
              ),
            ),
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
                text: 'login',
                size: size.height / 38.3,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Align(
                  alignment: Alignment.center,
                  child: CustomTextSmall(smallText: 'Create new account')),
            ),
          ],
        ),
      ),
    );
  }
}
