import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/bottomButton.dart';
import 'package:pay_now/widgets/btm_navigation.dart';
import 'package:pay_now/widgets/customSmallText.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    debugPrint('height od device: ${size.height} and width: ${size.width}');
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/icons/back_icon.svg'),
                  ),
                  CustomText(
                    text: 'Send Money',
                    size: size.height * 0.035,
                    myweight: FontWeight.bold,
                  ),
                  Container(),
                ],
              ),
            ),
            const Divider(thickness: 1),
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
                        borderRadius: BorderRadius.circular(size.height / 50.0),
                        borderSide: BorderSide(color: AppColors.mainColorBox),
                      ),
                      hintText: 'Enter amanount to send',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.height / 50.0),
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
                        borderRadius: BorderRadius.circular(size.height / 50.0),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.height / 50.0),
                        borderSide: BorderSide(color: AppColors.mainColorBox),
                      ),
                      hintText: 'Add Pay note',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(size.height / 50.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //TODO: Bottom Naviagation Bar
          ],
        ),
        bottomNavigationBar: BottomButton(
          btnOnPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          size.height / 51.6,
                        ),
                      ),
                      padding: const EdgeInsets.all(defaultPadding),
                      height: 420,
                      width: 150,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                              'assets/icons/sent_illustration.svg'),
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
                            minWidth: size.width * 0.9,
                            height: MediaQuery.of(context).size.height / 12,
                            elevation: 0,
                            color: AppColors.mainColor,
                            onPressed: () {},
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
          },
          buttonText: 'Send Payment',
          buttonColor: AppColors.mainColorBox,
          svgfile: 'assets/icons/send_icon.svg',
        ),
      ),
    );
  }
}
