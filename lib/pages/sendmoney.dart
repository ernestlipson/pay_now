import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/app_bar.dart';

import 'package:pay_now/widgets/customSmallText.dart';
import 'package:pay_now/widgets/myButtons/bottomButton.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    debugPrint('height of device: ${size.height} and width: ${size.width}');
    return Scaffold(
      appBar: MyAppBar(
        title: 'Send Money',
        widget: Container(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding / 1.5),
              Container(
                padding: const EdgeInsets.all(defaultPadding),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.roundedBoxColor,
                      radius: size.height / 16.6,
                      child: CustomText(
                        text: 'J',
                        size: size.height * 0.07,
                        myweight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: size.height * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: 'John Osborn'),
                        SizedBox(height: size.height * 0.005),
                        CustomTextSmall(
                          smallText: 'JohnOsborn@gmail.com',
                          smallColor: AppColors.textColor.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'Payment Amount'),
                    SizedBox(height: size.height * 0.015),
                    TextFormField(
                      autocorrect: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.height / 50.0),
                          borderSide: BorderSide(color: AppColors.mainColorBox),
                        ),
                        hintText: 'Enter amanount to send',
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.height / 50.0),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomText(text: 'Payment Note'),
                    SizedBox(height: size.height * 0.015),
                    TextField(
                      maxLines: 5,
                      autocorrect: true,
                      // keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.height / 50.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.height / 50.0),
                          borderSide: BorderSide(color: AppColors.mainColorBox),
                        ),
                        hintText: 'Add Pay note',
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.height / 50.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //TODO: Bottom Naviagation Bar
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomButton(
        containerWidth: double.infinity,
        btnOnPressed: () {
          _btnPopMenu(context, size);
        },
        buttonText: 'Send Payment',
        buttonColor: AppColors.mainColorBox,
        svgfile: 'assets/icons/send_icon.svg',
      ),
    );
  }

  Future<dynamic> _btnPopMenu(BuildContext context, Size size) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                size.height / 51.6,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  size.height / 51.6,
                ),
              ),
              padding: const EdgeInsets.all(defaultPadding),
              height: size.height / 1.61,
              width: size.width / 2.4,
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset('assets/icons/sent_illustration.svg'),
                  const Spacer(),
                  Column(
                    children: [
                      CustomText(text: 'The amount has been sent'),
                      CustomText(text: 'successfully!')
                    ],
                  ),
                  const Spacer(),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        size.height / 51.6,
                      ),
                    ),
                    minWidth: double.infinity,
                    height: MediaQuery.of(context).size.height / 13.5,
                    elevation: 0,
                    color: AppColors.mainColor,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: CustomText(
                      text: 'Ok, Thanks',
                      size: size.height / 38.3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
