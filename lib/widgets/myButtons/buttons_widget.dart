import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/colors.dart';

class ButtonsWidget extends StatelessWidget {
  final String text;
  Color? textColor = AppColors.textColor;
  final Color color;
  final String svgfile;
  final double width;
  final VoidCallback btnPress;
  ButtonsWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.svgfile,
    this.textColor,
    required this.btnPress,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          size.height / 51.6,
        ),
      ),
      height: size.height / 13.5,
      minWidth: width,
      elevation: 0,
      onPressed: btnPress,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgfile,
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
