import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/app_bar.dart';
import 'package:pay_now/widgets/customSmallText.dart';
import 'package:pay_now/widgets/default_button.dart';

class AccountInfo extends StatefulWidget {
  AccountInfo({Key? key}) : super(key: key);

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(title: 'My Info', widget: Container()),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
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
              SizedBox(height: appSize(context, 'h') * 0.025),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextSmall(
                      smallText: 'User Name',
                      smallFontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: appSize(context, 'h') * 0.010),
                    Container(
                      height: size.height / 13.5,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                appSize(context, 'h') / 51.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: appSize(context, 'h') * 0.035),
                    CustomTextSmall(
                      smallText: 'Email',
                      smallFontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: appSize(context, 'h') * 0.010),
                    Container(
                      height: size.height / 13.5,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                appSize(context, 'h') / 51.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: appSize(context, 'h') * 0.035),
                    CustomTextSmall(
                      smallText: 'Mobile Number',
                      smallFontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: appSize(context, 'h') * 0.010),
                    Container(
                      height: size.height / 13.5,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter your mobile number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                appSize(context, 'h') / 51.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: appSize(context, 'h') * 0.017),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(defaultPadding),
        child: DefaultButton(
          btnPress: () {},
          btnText: 'Save changes',
          defaultDeviceSize: size,
        ),
      ),
    );
  }
}
