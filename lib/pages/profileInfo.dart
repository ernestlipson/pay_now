import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';

class AccountInfo extends StatefulWidget {
  AccountInfo({Key? key}) : super(key: key);

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
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
                    text: 'My Info',
                    size: appSize(context, 'h') * defaultHeadingSize,
                    myweight: FontWeight.bold,
                  ),
                  Container(),
                ],
              ),
            ),
            const Divider(thickness: 1),
            SizedBox(height: appSize(context, 'h') * 0.05),
            CircleAvatar(
              radius: appSize(context, 'h') * 0.08,
              backgroundColor: AppColors.roundedBoxColor,
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/icons/user_icon-4.svg',
                  height: appSize(context, 'h') * 0.05,
                ),
              ),
            ),
            SizedBox(height: appSize(context, 'h') * 0.03),
            GestureDetector(
              onTap: () {},
              child: CustomTextSmall(
                smallText: 'Upload Image',
                smallColor: AppColors.mainColor,
                smallSize: appSize(context, 'h') * 0.02,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextSmall(
                    smallText: 'User Name',
                    smallFontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: appSize(context, 'h') * 0.02),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(appSize(context, 'h') / 51.6),
                      ),
                    ),
                  ),
                  SizedBox(height: appSize(context, 'h') * 0.045),
                  CustomTextSmall(
                    smallText: 'Email',
                    smallFontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: appSize(context, 'h') * 0.02),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(appSize(context, 'h') / 51.6),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: appSize(context, 'h') * 0.045),
                  CustomTextSmall(
                    smallText: 'Mobile Number',
                    smallFontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: appSize(context, 'h') * 0.02),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your mobile number',
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(appSize(context, 'h') / 51.6),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: appSize(context, 'h') * 0.017),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        appSize(context, 'h') / 51.6,
                      ),
                    ),
                    minWidth: 350,
                    height: MediaQuery.of(context).size.height / 12,
                    elevation: 0,
                    color: AppColors.mainColor,
                    onPressed: () {},
                    child: CustomText(
                      text: 'Save Changes',
                      size: appSize(context, 'h') / 38.3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
