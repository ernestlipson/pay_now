import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/constants.dart';

import 'CustomText.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  Color? textColor;
  final Color? buttonColor;
  final String svgfile;
  void btnPress = () {};

  var btnOnPressed;

  BottomButton({
    Key? key,
    required this.buttonText,
    this.textColor,
    this.buttonColor,
    required this.svgfile,
    required this.btnOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultDeviceHeight = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(defaultPadding),
      child: MaterialButton(
        onPressed: btnOnPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            defaultDeviceHeight.height / 51.6,
          ),
        ),
        minWidth: double.infinity,
        height: MediaQuery.of(context).size.height / 13.5,
        elevation: 0,
        color: buttonColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgfile,
              height: defaultDeviceHeight.width * 0.075,
              width: defaultDeviceHeight.width * 0.04,
            ),
            SizedBox(width: defaultDeviceHeight.width * 0.03),
            CustomText(
              text: buttonText,
              size: defaultDeviceHeight.height / 38.3,
              color: textColor,
              myweight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
