import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pay_now/pages/mycards.dart';
import 'package:pay_now/pages/profileInfo.dart';
import 'package:pay_now/pages/settings.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('${MediaQuery.of(context).size.height}');
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
              height: size.height / 2.5,
              color: Color(0xfff3f4f5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      CustomText(text: 'My Profile', myweight: FontWeight.bold),
                      GestureDetector(
                        onTap: () {
                          navigatePush(
                              context: context, destination: AccountInfo());
                        },
                        child: SvgPicture.asset('assets/icons/edit_icon.svg'),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: size.height / 13.26,
                    child: CustomText(
                        text: 'H', size: 70, myweight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.02),
                  CustomText(text: 'Hisham Zayadin'),
                  SizedBox(height: size.height * 0.03),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.083,
                    child: Center(
                      child: ListTile(
                        onTap: () {
                          navigatePush(
                              context: context, destination: AccountInfo());
                        },
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding * 0.2),
                        leading: SvgPicture.asset('assets/icons/user_icon.svg'),
                        title: CustomText(text: 'My Info'),
                        trailing: Icon(Icons.arrow_forward_ios,
                            size: size.height * 0.03),
                        tileColor: const Color(0xfff3f4f5),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(size.height * 0.02)),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 0.7),
                  SizedBox(
                    height: size.height * 0.083,
                    child: Center(
                      child: ListTile(
                        onTap: () {
                          navigatePush(
                              context: context, destination: MyCards());
                        },
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding * 0.2),
                        leading: Icon(Icons.card_membership_sharp),
                        title: CustomText(text: 'My Cards'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: size.height * 0.03,
                        ),
                        tileColor: Color(0xfff3f4f5),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(size.height * 0.02)),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 0.7),
                  SizedBox(
                    height: size.height * 0.083,
                    child: Center(
                      child: ListTile(
                        onTap: () {
                          navigatePush(
                              context: context, destination: MySettingsPage());
                        },
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding * 0.2),
                        leading: Icon(Icons.settings),
                        title: CustomText(text: 'Settings'),
                        trailing: Icon(Icons.arrow_forward_ios,
                            size: size.height * 0.03),
                        tileColor: Color(0xfff3f4f5),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(size.height * 0.02)),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 0.7),
                  SizedBox(
                    height: size.height * 0.083,
                    child: Center(
                      child: ListTile(
                        onTap: () {},
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding * 0.2),
                        leading: Icon(Icons.help),
                        title: CustomText(text: 'Help Center'),
                        trailing: Icon(Icons.arrow_forward_ios,
                            size: size.height * 0.03),
                        tileColor: Color(0xfff3f4f5),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(size.height * 0.02)),
                      ),
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
